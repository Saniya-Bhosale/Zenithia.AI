# Zenithia.AI - Your All-in-One AI Tools Hub

A complete Flask web application for discovering and exploring the best AI tools across multiple categories.

![Zenithia.AI](https://via.placeholder.com/1200x400?text=Zenithia.AI+-+AI+Tools+Directory)

## 🌟 Features

- **User Authentication**: Secure registration and login system with password hashing
- **Dashboard**: Category-wise AI tools organized into 6 main categories
- **120+ AI Tools**: Comprehensive collection of AI tools with descriptions and links
- **Admin Panel**: Manage tools, users, and events
- **Events System**: Track AI webinars, hackathons, and product launches
- **Contact Form**: Users can send messages and inquiries
- **Responsive Design**: Professional UI that works on all devices
- **MySQL Database**: Robust data management with MySQL Workbench

## 📂 Project Structure

```
Saniya_AIHUB/
├── app.py                      # Main Flask application
├── requirements.txt            # Python dependencies
├── database_setup.sql          # MySQL database schema and sample data
├── README.md                   # This file
├── static/
│   ├── css/
│   │   └── style.css          # Custom CSS styles
│   ├── js/
│   │   └── main.js            # JavaScript functionality
│   └── images/
│       └── tools/             # Tool logos and images
└── templates/
    ├── base.html              # Base template with navigation
    ├── home.html              # Landing page
    ├── about.html             # About page
    ├── contact.html           # Contact form
    ├── events.html            # Events listing
    ├── register.html          # User registration
    ├── login.html             # User login
    ├── dashboard.html         # User dashboard
    ├── tools.html             # Tools listing by category
    ├── tool_detail.html       # Individual tool details
    ├── add_tool.html          # Admin: Add new tool
    └── admin_dashboard.html   # Admin dashboard
```

## 🛠️ Technologies Used

- **Backend**: Flask (Python)
- **Database**: MySQL
- **Frontend**: HTML5, CSS3, JavaScript
- **UI Framework**: Bootstrap 5
- **Icons**: Font Awesome 6
- **Fonts**: Google Fonts (Poppins)
- **Authentication**: Werkzeug Security

## 📋 Prerequisites

Before you begin, ensure you have the following installed:

- Python 3.8 or higher
- MySQL Server 8.0 or higher
- MySQL Workbench (optional, for database management)
- pip (Python package manager)

## 🚀 Installation & Setup

### 1. Clone or Download the Project

```bash
cd "c:\Users\Asus\OneDrive\Documents\Desktop\Saniya_AIHUB"
```

### 2. Install Python Dependencies

```powershell
pip install -r requirements.txt
```

**Note**: If you encounter issues installing `mysqlclient`, you may need to:
- Install Microsoft Visual C++ 14.0 or greater
- Or use: `pip install pymysql` and modify `app.py` to use PyMySQL instead

### 3. Set Up MySQL Database

#### Option A: Using MySQL Workbench (Recommended)

1. Open MySQL Workbench
2. Connect to your MySQL server (usually `localhost`)
3. Go to **File > Open SQL Script**
4. Select `database_setup.sql` from the project folder
5. Click the **Execute** button (lightning icon)
6. Verify that `zenithia_ai_db` database is created

#### Option B: Using MySQL Command Line

```bash
mysql -u root -p < database_setup.sql
```

### 4. Configure Database Connection

Open `app.py` and update the MySQL configuration:

```python
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'your_mysql_password'  # Change this!
app.config['MYSQL_DB'] = 'zenithia_ai_db'
```

### 5. Update Secret Key

In `app.py`, change the secret key for production:

```python
app.secret_key = 'your-secret-key-here-change-in-production'
```

### 6. Run the Application

```powershell
python app.py
```

The application will start on `http://127.0.0.1:5000/`

## 👤 Default Admin Login

After setting up the database, you can log in as admin:

- **Email**: `admin@zenithia.ai`
- **Password**: `admin123`

**⚠️ Important**: Change the admin password immediately after first login!

## 📱 Application Pages

### Public Pages (Before Login)

1. **Home** (`/`) - Landing page with features and categories
2. **About** (`/about`) - Information about Zenithia.AI
3. **Events** (`/events`) - AI events, webinars, and hackathons
4. **Contact** (`/contact`) - Contact form
5. **Register** (`/register`) - Create new account
6. **Login** (`/login`) - User login

### User Pages (After Login)

1. **Dashboard** (`/dashboard`) - Main hub with 6 AI tool categories:
   - Writing Tools (20 tools)
   - Coding Tools (20 tools)
   - Image Generation (20 tools)
   - Video Tools (20 tools)
   - Voice Tools (20 tools)
   - Productivity Tools (20 tools)

2. **Tools by Category** (`/tools/<category>`) - List of tools in specific category
3. **Tool Details** (`/tool/<id>`) - Detailed information about a specific tool

### Admin Pages (Admin Only)

1. **Admin Dashboard** (`/admin`) - Statistics and management
2. **Add Tool** (`/add_tool`) - Add new AI tools to the directory

## 🎨 Customization

### Adding Your Own Tools

1. Log in as admin
2. Go to Admin Dashboard
3. Click "Add New Tool"
4. Fill in the form:
   - Tool Name
   - Category (Writing/Coding/Image/Video/Voice/Productivity)
   - Description
   - Image URL
   - Tool Link

### Changing Colors and Styles

Edit `static/css/style.css` and modify the CSS variables:

```css
:root {
    --primary-color: #6C5CE7;
    --secondary-color: #A29BFE;
    --accent-color: #FD79A8;
    /* ... more colors */
}
```

## 🗄️ Database Schema

### Users Table
- `id` - Primary key
- `name` - User's full name
- `email` - Unique email address
- `password` - Hashed password
- `role` - 'user' or 'admin'
- `created_at` - Registration timestamp

### Tools Table
- `id` - Primary key
- `name` - Tool name
- `category` - Tool category
- `description` - Tool description
- `image_url` - Tool image URL
- `tool_link` - Link to tool website
- `created_at` - Addition timestamp

### Events Table
- `id` - Primary key
- `title` - Event title
- `date` - Event date
- `description` - Event description
- `link` - Event registration link

### Contact Table
- `id` - Primary key
- `name` - Contact name
- `email` - Contact email
- `message` - Contact message
- `submitted_at` - Submission timestamp

## 🔒 Security Features

- Password hashing using Werkzeug
- Session-based authentication
- Login required decorators
- Admin-only routes protection
- SQL injection prevention with parameterized queries
- CSRF protection (built-in Flask)

## 🐛 Troubleshooting

### MySQL Connection Error

**Error**: `OperationalError: (2003, "Can't connect to MySQL server")`

**Solution**:
1. Make sure MySQL server is running
2. Verify credentials in `app.py`
3. Check if port 3306 is open

### Module Import Error

**Error**: `ModuleNotFoundError: No module named 'flask'`

**Solution**:
```powershell
pip install -r requirements.txt
```

### mysqlclient Installation Error

**Error**: `error: Microsoft Visual C++ 14.0 or greater is required`

**Solution**: Use PyMySQL instead:
```powershell
pip install pymysql
```

Then add to `app.py` (at the top):
```python
import pymysql
pymysql.install_as_MySQLdb()
```

## 📝 To-Do / Future Enhancements

- [ ] Add search functionality for tools
- [ ] Implement user favorites/bookmarks
- [ ] Add tool ratings and reviews
- [ ] Create API for tool data
- [ ] Add newsletter subscription
- [ ] Implement password reset functionality
- [ ] Add tool comparison feature
- [ ] Create mobile app version

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📄 License

This project is licensed under the MIT License.

## 👨‍💻 Developer

**Saniya**

## 🙏 Acknowledgments

- Bootstrap for the UI framework
- Font Awesome for icons
- All the amazing AI tool creators
- Flask and MySQL communities

## 📞 Support

For support, email contact@zenithia.ai or create an issue in the repository.

---

**Made with ❤️ and AI**
