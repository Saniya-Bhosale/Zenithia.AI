# 🚀 Quick Setup Guide for Zenithia.AI

Follow these steps to get your Zenithia.AI website up and running in minutes!

## ⚡ Fast Setup (5 Steps)

### Step 1: Install Python Dependencies
```powershell
pip install Flask Flask-MySQLdb Werkzeug mysqlclient
```

### Step 2: Setup MySQL Database
1. Open **MySQL Workbench**
2. Connect to your MySQL server (localhost)
3. Click **File → Open SQL Script**
4. Select `database_setup.sql`
5. Click the **Execute** button ⚡

### Step 3: Configure Database in app.py
Open `app.py` and change line 10:
```python
app.config['MYSQL_PASSWORD'] = 'YOUR_MYSQL_PASSWORD'
```

### Step 4: Run the Application
```powershell
python app.py
```

### Step 5: Open in Browser
Visit: **http://127.0.0.1:5000/**

---

## 🎯 First Login

### Admin Login Credentials:
- **Email**: admin@zenithia.ai
- **Password**: admin123

⚠️ **Change this password immediately after first login!**

---

## ✅ Verify Installation

1. ✓ Home page loads with gradient background
2. ✓ Can register a new account
3. ✓ Can login successfully
4. ✓ Dashboard shows 6 categories
5. ✓ Clicking a category shows tools
6. ✓ Admin can access admin dashboard

---

## 🆘 Common Issues & Quick Fixes

### Issue 1: MySQL Connection Error
**Error**: Can't connect to MySQL server

**Fix**:
1. Start MySQL Server
2. Check password in `app.py` line 10
3. Ensure database `zenithia_ai_db` exists

### Issue 2: mysqlclient Won't Install
**Error**: Microsoft Visual C++ required

**Fix**: Use PyMySQL instead
```powershell
pip install pymysql
```
Then add to top of `app.py`:
```python
import pymysql
pymysql.install_as_MySQLdb()
```

### Issue 3: Port Already in Use
**Error**: Address already in use

**Fix**: Change port in `app.py` (last line):
```python
app.run(debug=True, port=5001)
```

---

## 📱 Test All Features

### ✓ Public Pages (No Login Required)
- [ ] Home page
- [ ] About page
- [ ] Contact page (try submitting a message)
- [ ] Events page
- [ ] Register (create test account)
- [ ] Login

### ✓ User Features (After Login)
- [ ] Dashboard with 6 categories
- [ ] View Writing tools
- [ ] View Coding tools
- [ ] View Image tools
- [ ] View Video tools
- [ ] View Voice tools
- [ ] View Productivity tools
- [ ] Click on a tool for details
- [ ] Visit a tool link (opens in new tab)
- [ ] Logout

### ✓ Admin Features (Login as admin)
- [ ] Access admin dashboard
- [ ] View statistics
- [ ] Add a new tool
- [ ] View recent tools
- [ ] View contact messages

---

## 🎨 Customization Quick Tips

### Change Primary Color
Edit `static/css/style.css` line 3:
```css
--primary-color: #6C5CE7; /* Change this color code */
```

### Add Your Logo
Replace the brain icon in `templates/base.html` line 32:
```html
<i class="fas fa-brain"></i> <!-- Change to your logo -->
```

### Update Footer
Edit `templates/base.html` starting at line 74

---

## 🗄️ Database Contains

- ✅ 120 AI Tools (20 per category)
- ✅ All tools with descriptions and links
- ✅ Sample events
- ✅ Admin account
- ✅ Database structure

---

## 📊 What Each Category Has

1. **Writing** (20 tools): ChatGPT, Jasper AI, Copy.ai, Writesonic, etc.
2. **Coding** (20 tools): GitHub Copilot, Tabnine, Replit, etc.
3. **Image** (20 tools): Midjourney, DALL-E, Leonardo AI, etc.
4. **Video** (20 tools): Pictory, Synthesia, Runway, etc.
5. **Voice** (20 tools): ElevenLabs, Murf.ai, Play.ht, etc.
6. **Productivity** (20 tools): Notion AI, Taskade, Otter.ai, etc.

---

## 🚀 Next Steps After Setup

1. **Login as admin** and explore the admin dashboard
2. **Add real tool images** by updating image URLs
3. **Create your first regular user** account
4. **Test all functionality** thoroughly
5. **Customize colors** to match your brand
6. **Add more events** for your community
7. **Deploy to production** server when ready

---

## 📞 Need Help?

Check the full **README.md** for detailed documentation.

---

**Happy Building! 🎉**

Your Zenithia.AI platform is ready to help users discover amazing AI tools!
