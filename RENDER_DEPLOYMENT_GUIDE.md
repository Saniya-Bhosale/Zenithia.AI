# 🚀 Render.com Deployment Guide - Zenithia.AI with MySQL

## ⚠️ Important Note about MySQL on Render

Render's free tier **does NOT include MySQL**. You have 2 options:

### Option 1: Use External MySQL (Free) ⭐ Recommended
### Option 2: Convert to PostgreSQL (Render provides free PostgreSQL)

---

## 🎯 Option 1: Deploy with External MySQL (Railway/PlanetScale)

### Step 1: Get Free MySQL Database

#### Using Railway.app (Easy & Free)

1. Go to https://railway.app
2. Sign up with GitHub
3. Click **"New Project"** → **"Provision MySQL"**
4. Copy these credentials:
   - **Host**: `containers-us-west-xxx.railway.app`
   - **Port**: `6379`
   - **Username**: `root`
   - **Password**: `xxxxx`
   - **Database**: `railway`

#### Using PlanetScale (Also Free)

1. Go to https://planetscale.com
2. Sign up and create database
3. Get connection details

---

### Step 2: Update app.py for Production

Add this at the top of `app.py`:

```python
import os
from dotenv import load_dotenv

load_dotenv()

# Production Database Configuration
app.config["MYSQL_HOST"] = os.getenv("MYSQL_HOST", "localhost")
app.config["MYSQL_USER"] = os.getenv("MYSQL_USER", "root")
app.config["MYSQL_PASSWORD"] = os.getenv("MYSQL_PASSWORD", "root")
app.config["MYSQL_DB"] = os.getenv("MYSQL_DB", "zenithia_ai_db")
app.config["MYSQL_CURSORCLASS"] = "DictCursor"

# Secret key from environment
app.secret_key = os.getenv("SECRET_KEY", "your_secret_key_here_change_in_production")
```

---

### Step 3: Push Code to GitHub

```bash
# Initialize git (if not already done)
git init

# Create .gitignore
echo ".env" >> .gitignore
echo "__pycache__/" >> .gitignore
echo "*.pyc" >> .gitignore

# Add and commit
git add .
git commit -m "Ready for Render deployment"

# Push to GitHub
git remote add origin YOUR_GITHUB_URL
git push -u origin main
```

---

### Step 4: Deploy on Render

1. Go to https://render.com
2. Sign up with **GitHub**
3. Click **"New +"** → **"Web Service"**
4. Connect your GitHub repository
5. Configure:

| Setting | Value |
|---------|-------|
| **Name** | `zenithia-ai` |
| **Environment** | `Python 3` |
| **Build Command** | `pip install -r requirements.txt` |
| **Start Command** | `gunicorn app:app` |
| **Instance Type** | `Free` |

6. Click **"Advanced"** and add Environment Variables:

```
MYSQL_HOST=your_railway_mysql_host
MYSQL_USER=root
MYSQL_PASSWORD=your_railway_password
MYSQL_DB=railway
SECRET_KEY=your_random_secret_key_here
FLASK_ENV=production
```

7. Click **"Create Web Service"**

---

### Step 5: Import Database

Use Railway's MySQL console or any MySQL client:

```bash
mysql -h your_railway_host -u root -p railway < database_setup.sql
```

---

## 🎉 Your Site is Live!

URL: `https://zenithia-ai.onrender.com`

---

## 🎯 Option 2: Convert to PostgreSQL (Easier)

If you want to use Render's free PostgreSQL:

### Step 1: Create PostgreSQL on Render

1. Dashboard → **"New +"** → **"PostgreSQL"**
2. Name: `zenithia-db`
3. Click **"Create Database"**
4. Copy the **Internal Database URL**

### Step 2: Update requirements.txt

```txt
Flask==3.0.0
Werkzeug==3.0.1
psycopg2-binary==2.9.9
gunicorn==21.2.0
python-dotenv==1.0.0
```

### Step 3: Update app.py for PostgreSQL

```python
import os
import psycopg2
from flask import Flask, render_template, request, redirect, url_for, session, flash
from werkzeug.security import generate_password_hash, check_password_hash
from functools import wraps

app = Flask(__name__)
app.secret_key = os.getenv("SECRET_KEY", "your_secret_key_here")

# Database connection function
def get_db_connection():
    conn = psycopg2.connect(os.getenv("DATABASE_URL"))
    return conn

# Replace all MySQL queries with PostgreSQL
# Example:
@app.route("/")
def home():
    return render_template("home.html")

@app.route("/events")
def events():
    conn = get_db_connection()
    cur = conn.cursor()
    cur.execute("SELECT * FROM events ORDER BY date DESC")
    events_list = cur.fetchall()
    cur.close()
    conn.close()
    return render_template("events.html", events=events_list)
```

### Step 4: Convert SQL Schema

Replace MySQL syntax with PostgreSQL:

```sql
-- users table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(20) DEFAULT 'user',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- tools table
CREATE TABLE tools (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    description TEXT,
    image_url VARCHAR(255),
    tool_link VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- events table
CREATE TABLE events (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    date DATE,
    description TEXT,
    link VARCHAR(255),
    category VARCHAR(50) DEFAULT 'General'
);

-- contact table
CREATE TABLE contact (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    message TEXT,
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

---

## 🔧 Troubleshooting

### Error: "Application failed to respond"

Check logs in Render dashboard:
- Go to your service
- Click **"Logs"** tab
- Look for errors

### Error: "No module named 'mysqlclient'"

Make sure `requirements.txt` has:
```
mysqlclient==2.2.0
```

Or use PyMySQL:
```python
import pymysql
pymysql.install_as_MySQLdb()
```

### Database Connection Error

Verify environment variables in Render:
- Settings → Environment
- Check all MySQL credentials

---

## 💡 My Recommendation

### ✅ Easiest Path: PythonAnywhere

If you want to keep MySQL without hassle, use **PythonAnywhere** (I created guide: `PYTHONANYWHERE_DEPLOYMENT.md`)

### ✅ Modern Path: Render + Railway MySQL

- Deploy app on Render (free)
- Use Railway for MySQL (free)
- More complex but professional

### ✅ Simplest Path: Render + PostgreSQL

- Everything on Render
- Requires code changes
- Single platform

---

## 📊 Comparison

| Platform | MySQL Support | Setup Difficulty | Free Tier |
|----------|---------------|------------------|-----------|
| **PythonAnywhere** | ✅ Built-in | Easy | ✅ Yes |
| **Render + Railway** | ✅ External | Medium | ✅ Yes |
| **Render + PostgreSQL** | ❌ (Postgres only) | Easy | ✅ Yes |

---

## 🎯 Quick Decision Guide

**Choose PythonAnywhere if:**
- You want easiest setup
- You're okay with `.pythonanywhere.com` domain
- You don't want to deal with external database

**Choose Render + Railway if:**
- You want custom domain (free)
- You want modern platform
- You're okay with medium complexity
- You want better performance

**Choose Render + PostgreSQL if:**
- You can change from MySQL to PostgreSQL
- You want everything in one place
- You want simplest modern deployment

---

## 🚀 Ready to Deploy?

1. ✅ Updated `requirements.txt` with all dependencies
2. ✅ Created `Procfile` for gunicorn
3. ✅ Created `runtime.txt` for Python version
4. ✅ Created `.env.example` for configuration reference

**All files are ready!** Choose your preferred option and follow the steps above.

---

**Need help? Check the logs and let me know! 💪**
