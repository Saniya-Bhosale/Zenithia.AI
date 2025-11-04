from flask import Flask, render_template, request, redirect, url_for, session, flash
from flask_mysqldb import MySQL
from werkzeug.security import generate_password_hash, check_password_hash
from functools import wraps

app = Flask(__name__)
app.secret_key = "your_secret_key_here_change_in_production"

app.config['MYSQL_HOST'] = 'saniyabhosale.mysql.pythonanywhere-services.com'
app.config['MYSQL_USER'] = 'saniyabhosale'
app.config['MYSQL_PASSWORD'] = 'rootroot'
app.config['MYSQL_DB'] = 'saniyabhosale$zenithia_ai_db'
app.config["MYSQL_CURSORCLASS"] = "DictCursor"

mysql = MySQL(app)

def login_required(f):
    @wraps(f)
    def decorated_function(*args, **kwargs):
        if "user_id" not in session:
            flash("Please login to access this page.", "warning")
            return redirect(url_for("login"))
        return f(*args, **kwargs)
    return decorated_function

def admin_required(f):
    @wraps(f)
    def decorated_function(*args, **kwargs):
        if "user_id" not in session:
            flash("Please login to access this page.", "warning")
            return redirect(url_for("login"))
        if session.get("role") != "admin":
            flash("Admin access required.", "danger")
            return redirect(url_for("dashboard"))
        return f(*args, **kwargs)
    return decorated_function

@app.route("/")
def home():
    return render_template("home.html")

@app.route("/about")
def about():
    return render_template("about.html")

@app.route("/contact", methods=["GET", "POST"])
def contact():
    if request.method == "POST":
        name = request.form["name"]
        email = request.form["email"]
        message = request.form["message"]
        
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO contact (name, email, message) VALUES (%s, %s, %s)", 
                   (name, email, message))
        mysql.connection.commit()
        cur.close()
        
        flash("Thank you for your message! We will get back to you soon.", "success")
        return redirect(url_for("contact"))
    
    return render_template("contact.html")

@app.route("/events")
def events():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM events ORDER BY date DESC")
    events_list = cur.fetchall()
    cur.close()
    return render_template("events.html", events=events_list)

@app.route("/register", methods=["GET", "POST"])
def register():
    if request.method == "POST":
        name = request.form["name"]
        email = request.form["email"]
        password = request.form["password"]
        confirm_password = request.form["confirm_password"]
        
        if password != confirm_password:
            flash("Passwords do not match!", "danger")
            return redirect(url_for("register"))
        
        hashed_password = generate_password_hash(password)
        
        try:
            cur = mysql.connection.cursor()
            cur.execute("INSERT INTO users (name, email, password) VALUES (%s, %s, %s)", 
                       (name, email, hashed_password))
            mysql.connection.commit()
            cur.close()
            flash("Registration successful! Please login.", "success")
            return redirect(url_for("login"))
        except:
            flash("Email already exists. Please use a different email.", "danger")
            return redirect(url_for("register"))
    
    return render_template("register.html")

@app.route("/login", methods=["GET", "POST"])
def login():
    if request.method == "POST":
        email = request.form["email"]
        password = request.form["password"]
        
        cur = mysql.connection.cursor()
        cur.execute("SELECT * FROM users WHERE email = %s", [email])
        user = cur.fetchone()
        cur.close()
        
        if user and check_password_hash(user["password"], password):
            session["user_id"] = user["id"]
            session["name"] = user["name"]
            session["email"] = user["email"]
            session["role"] = user["role"]
            flash(f"Welcome back, {user['name']}!", "success")
            
            # Redirect admin to admin dashboard
            if user["role"] == "admin":
                return redirect(url_for("admin_dashboard"))
            return redirect(url_for("dashboard"))
        else:
            flash("Invalid email or password.", "danger")
            return redirect(url_for("login"))
    
    return render_template("login.html")

# Separate Admin Login Route
@app.route("/admin/login", methods=["GET", "POST"])
def admin_login():
    if request.method == "POST":
        email = request.form["email"]
        password = request.form["password"]
        
        # Direct admin credentials check
        if email == "admin@zenithia.ai" and password == "admin123":
            # Check if admin exists in database
            cur = mysql.connection.cursor()
            cur.execute("SELECT * FROM users WHERE email = %s AND role = 'admin'", [email])
            admin = cur.fetchone()
            
            if not admin:
                # Create admin if doesn't exist
                hashed_password = generate_password_hash("admin123")
                cur.execute("INSERT INTO users (name, email, password, role) VALUES (%s, %s, %s, %s)",
                           ("Admin", email, hashed_password, "admin"))
                mysql.connection.commit()
                cur.execute("SELECT * FROM users WHERE email = %s", [email])
                admin = cur.fetchone()
            
            cur.close()
            
            session["user_id"] = admin["id"]
            session["name"] = admin["name"]
            session["email"] = admin["email"]
            session["role"] = "admin"
            flash(f"Welcome Admin!", "success")
            return redirect(url_for("admin_dashboard"))
        else:
            flash("Invalid admin credentials.", "danger")
            return redirect(url_for("admin_login"))
    
    return render_template("admin_login.html")

@app.route("/dashboard")
@login_required
def dashboard():
    categories = [
        {"name": "Writing", "icon": "fas fa-pen-fancy", "color": "#FF6B6B"},
        {"name": "Coding", "icon": "fas fa-code", "color": "#4ECDC4"},
        {"name": "Image", "icon": "fas fa-image", "color": "#FFE66D"},
        {"name": "Video", "icon": "fas fa-video", "color": "#95E1D3"},
        {"name": "Voice", "icon": "fas fa-microphone", "color": "#AA96DA"},
        {"name": "Productivity", "icon": "fas fa-tasks", "color": "#FCBAD3"}
    ]
    
    cur = mysql.connection.cursor()
    for category in categories:
        cur.execute("SELECT COUNT(*) as count FROM tools WHERE category = %s", [category["name"]])
        result = cur.fetchone()
        category["count"] = result["count"] if result else 0
    cur.close()
    
    return render_template("dashboard.html", categories=categories)

@app.route("/tools/<category>")
@login_required
def tools(category):
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM tools WHERE category = %s ORDER BY name", [category])
    tools_list = cur.fetchall()
    cur.close()
    return render_template("tools.html", tools=tools_list, category=category)

@app.route("/tool/<int:id>")
@login_required
def tool_detail(id):
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM tools WHERE id = %s", [id])
    tool = cur.fetchone()
    cur.close()
    return render_template("tool_detail.html", tool=tool)

@app.route("/add_tool", methods=["GET", "POST"])
@admin_required
def add_tool():
    if request.method == "POST":
        name = request.form["name"]
        category = request.form["category"]
        description = request.form["description"]
        image_url = request.form["image_url"]
        tool_link = request.form["tool_link"]
        
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO tools (name, category, description, image_url, tool_link) VALUES (%s, %s, %s, %s, %s)", 
                   (name, category, description, image_url, tool_link))
        mysql.connection.commit()
        cur.close()
        
        flash("Tool added successfully!", "success")
        return redirect(url_for("admin_dashboard"))
    
    return render_template("add_tool.html")

@app.route("/admin")
@admin_required
def admin_dashboard():
    cur = mysql.connection.cursor()
    
    cur.execute("SELECT COUNT(*) as count FROM users")
    total_users = cur.fetchone()["count"]
    
    cur.execute("SELECT COUNT(*) as count FROM tools")
    total_tools = cur.fetchone()["count"]
    
    cur.execute("SELECT COUNT(*) as count FROM events")
    total_events = cur.fetchone()["count"]
    
    cur.execute("SELECT COUNT(*) as count FROM contact")
    total_messages = cur.fetchone()["count"]
    
    cur.execute("SELECT * FROM tools ORDER BY created_at DESC LIMIT 5")
    recent_tools = cur.fetchall()
    
    cur.execute("SELECT * FROM contact ORDER BY submitted_at DESC LIMIT 5")
    recent_messages = cur.fetchall()
    
    # Get all events for management
    cur.execute("SELECT * FROM events ORDER BY date DESC")
    all_events = cur.fetchall()
    
    cur.close()
    
    return render_template("admin_dashboard.html", 
                         total_users=total_users,
                         total_tools=total_tools,
                         total_events=total_events,
                         total_messages=total_messages,
                         recent_tools=recent_tools,
                         recent_messages=recent_messages,
                         all_events=all_events)

# CRUD Operations for Events

# Create Event
@app.route("/admin/event/add", methods=["GET", "POST"])
@admin_required
def add_event():
    if request.method == "POST":
        title = request.form["title"]
        date = request.form["date"]
        description = request.form["description"]
        link = request.form.get("link", "")
        category = request.form.get("category", "General")
        
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO events (title, date, description, link, category) VALUES (%s, %s, %s, %s, %s)",
                   (title, date, description, link, category))
        mysql.connection.commit()
        cur.close()
        
        flash("Event added successfully!", "success")
        return redirect(url_for("admin_dashboard"))
    
    return render_template("add_event.html")

# Edit Event
@app.route("/admin/event/edit/<int:id>", methods=["GET", "POST"])
@admin_required
def edit_event(id):
    cur = mysql.connection.cursor()
    
    if request.method == "POST":
        title = request.form["title"]
        date = request.form["date"]
        description = request.form["description"]
        link = request.form.get("link", "")
        category = request.form.get("category", "General")
        
        cur.execute("UPDATE events SET title = %s, date = %s, description = %s, link = %s, category = %s WHERE id = %s",
                   (title, date, description, link, category, id))
        mysql.connection.commit()
        cur.close()
        
        flash("Event updated successfully!", "success")
        return redirect(url_for("admin_dashboard"))
    
    cur.execute("SELECT * FROM events WHERE id = %s", [id])
    event = cur.fetchone()
    cur.close()
    
    if not event:
        flash("Event not found!", "danger")
        return redirect(url_for("admin_dashboard"))
    
    return render_template("edit_event.html", event=event)

# Delete Event
@app.route("/admin/event/delete/<int:id>")
@admin_required
def delete_event(id):
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM events WHERE id = %s", [id])
    mysql.connection.commit()
    cur.close()
    
    flash("Event deleted successfully!", "success")
    return redirect(url_for("admin_dashboard"))

# View Event Details (Admin)
@app.route("/admin/event/view/<int:id>")
@admin_required
def view_event(id):
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM events WHERE id = %s", [id])
    event = cur.fetchone()
    cur.close()
    
    if not event:
        flash("Event not found!", "danger")
        return redirect(url_for("admin_dashboard"))
    
    return render_template("view_event.html", event=event)

# ============= USER MANAGEMENT =============

# View All Users
@app.route("/admin/users")
@admin_required
def manage_users():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM users ORDER BY created_at DESC")
    all_users = cur.fetchall()
    cur.close()
    return render_template("manage_users.html", users=all_users)

# Delete User
@app.route("/admin/user/delete/<int:id>")
@admin_required
def delete_user(id):
    # Prevent deleting yourself
    if id == session.get("user_id"):
        flash("You cannot delete your own account!", "danger")
        return redirect(url_for("manage_users"))
    
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM users WHERE id = %s", [id])
    mysql.connection.commit()
    cur.close()
    
    flash("User deleted successfully!", "success")
    return redirect(url_for("manage_users"))

# ============= TOOL MANAGEMENT =============

# View All Tools
@app.route("/admin/tools")
@admin_required
def manage_tools():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM tools ORDER BY category, name")
    all_tools = cur.fetchall()
    cur.close()
    return render_template("manage_tools.html", tools=all_tools)

# Edit Tool
@app.route("/admin/tool/edit/<int:id>", methods=["GET", "POST"])
@admin_required
def edit_tool(id):
    cur = mysql.connection.cursor()
    
    if request.method == "POST":
        name = request.form["name"]
        category = request.form["category"]
        description = request.form["description"]
        image_url = request.form["image_url"]
        tool_link = request.form["tool_link"]
        
        cur.execute("UPDATE tools SET name = %s, category = %s, description = %s, image_url = %s, tool_link = %s WHERE id = %s",
                   (name, category, description, image_url, tool_link, id))
        mysql.connection.commit()
        cur.close()
        
        flash("Tool updated successfully!", "success")
        return redirect(url_for("manage_tools"))
    
    cur.execute("SELECT * FROM tools WHERE id = %s", [id])
    tool = cur.fetchone()
    cur.close()
    
    if not tool:
        flash("Tool not found!", "danger")
        return redirect(url_for("manage_tools"))
    
    return render_template("edit_tool.html", tool=tool)

# Delete Tool
@app.route("/admin/tool/delete/<int:id>")
@admin_required
def delete_tool(id):
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM tools WHERE id = %s", [id])
    mysql.connection.commit()
    cur.close()
    
    flash("Tool deleted successfully!", "success")
    return redirect(url_for("manage_tools"))

@app.route("/logout")
def logout():
    session.clear()
    flash("You have been logged out successfully.", "info")
    return redirect(url_for("home"))

if __name__ == "__main__":
    app.run()
