# 🚀 PythonAnywhere Deployment Guide - Zenithia.AI

## 🌟 सबसे आसान तरीका - बिलकुल FREE!

---

## 📌 Step 1: PythonAnywhere Account बनाएं

1. **Website खोलें**: https://www.pythonanywhere.com/
2. **"Start running Python online"** पर क्लिक करें
3. **"Create a Beginner account"** चुनें
4. अपनी details भरें:
   - Username (यही आपका URL बनेगा)
   - Email
   - Password
5. Email verify करें

**आपका URL होगा**: `https://yourusername.pythonanywhere.com`

---

## 📌 Step 2: Files Upload करें

### Option A: GitHub से (Recommended)

```bash
https://github.com/Saniya-Bhosale/# 1. अपना code GitHub पर push करें
git init
git add .
git commit -m "Initial commit"
git remote add origin YOUR_GITHUB_URL
git push -u origin main
```

**PythonAnywhere पर:**

1. Dashboard → **"Consoles"** → **"Bash"**
2. टर्मिनल में लिखें:

```bash
git clone https://github.com/YOUR_USERNAME/YOUR_REPO.git
cd YOUR_REPO
```

### Option B: Direct Upload

1. Dashboard → **"Files"**
2. **"Upload a file"** पर क्लिक करें
3. सभी files select करके upload करें

---

## 📌 Step 3: Virtual Environment बनाएं

**Bash Console में:**

```bash
# Home directory में जाएं
cd ~

# Virtual environment बनाएं
python3.10 -m venv myenv

# Activate करें
source myenv/bin/activate

# Dependencies install करें
cd YOUR_PROJECT_FOLDER
pip install -r requirements.txt
```

**⚠️ Important**: अगर `mysqlclient` error आए तो:

```bash
pip install pymysql
```

---

## 📌 Step 4: MySQL Database Setup

### Database बनाना

1. Dashboard → **"Databases"** tab
2. **"Initialize MySQL"** पर क्लिक करें
3. Password set करें (याद रखें!)
4. **"Create database"** button दबाएं
5. Database name: `yourusername$zenithia_ai_db`

### Database Import करना

1. **"Start a console here"** (MySQL console) पर क्लिक करें
2. Password enter करें
3. अपना `database_setup.sql` file copy करें
4. MySQL console में paste करें और run करें

**या Bash Console से:**

```bash
mysql -u yourusername -p -h yourusername.mysql.pythonanywhere-services.com yourusername$zenithia_ai_db < database_setup.sql
```

---

## 📌 Step 5: app.py को Configure करें

**Important Changes करें:**

```python
# MySQL Configuration for PythonAnywhere
app.config['MYSQL_HOST'] = 'yourusername.mysql.pythonanywhere-services.com'
app.config['MYSQL_USER'] = 'yourusername'
app.config['MYSQL_PASSWORD'] = 'your_mysql_password'
app.config['MYSQL_DB'] = 'yourusername$zenithia_ai_db'

# PyMySQL as MySQLdb (if mysqlclient doesn't work)
import pymysql
pymysql.install_as_MySQLdb()

# Remove debug mode for production
if __name__ == "__main__":
    app.run()  # Don't use debug=True in production
```

---

## 📌 Step 6: Web App बनाएं

1. Dashboard → **"Web"** tab
2. **"Add a new web app"** पर क्लिक करें
3. Domain name confirm करें: `yourusername.pythonanywhere.com`
4. **"Manual configuration"** चुनें
5. **Python 3.10** select करें
6. **"Next"** पर क्लिक करें

---

## 📌 Step 7: Web App Configure करें

### A. Source code path

```
/home/yourusername/YOUR_PROJECT_FOLDER
```

### B. Virtualenv path

```
/home/yourusername/myenv
```

### C. WSGI Configuration

1. **"WSGI configuration file"** link पर क्लिक करें
2. सब कुछ delete करें
3. नीचे दिया code paste करें:

```python
import sys
import os

# Add your project directory to the sys.path
project_home = '/home/yourusername/YOUR_PROJECT_FOLDER'
if project_home not in sys.path:
    sys.path = [project_home] + sys.path

# Set environment variable for production
os.environ['FLASK_ENV'] = 'production'

# Import your Flask app
from app import app as application
```

4. **"Save"** करें

### D. Static Files Mapping

**Static files section में:**

| URL      | Directory                                     |
| -------- | --------------------------------------------- |
| /static/ | /home/yourusername/YOUR_PROJECT_FOLDER/static |

**Save करें**

---

## 📌 Step 8: Reload करें

1. Web tab के top पर
2. बड़ा हरा button: **"Reload yourusername.pythonanywhere.com"**
3. क्लिक करें और wait करें

---

## 📌 Step 9: Test करें! 🎉

अपनी website खोलें:

```
https://yourusername.pythonanywhere.com
```

### Test Checklist:

- [ ] Home page load हो रहा है?
- [ ] CSS properly लग रही है?
- [ ] Images दिख रहे हैं?
- [ ] Registration काम कर रहा है?
- [ ] Login हो रहा है?
- [ ] Dashboard open हो रहा है?
- [ ] Admin login: admin@zenithia.ai / admin123

---

## 🐛 Common Errors और Solutions

### Error 1: 500 Internal Server Error

**Solution**: Error log देखें

```bash
# Bash console में
tail -f /var/log/yourusername.pythonanywhere.com.error.log
```

### Error 2: No module named 'flask'

**Solution**: Virtual environment में packages install करें

```bash
source ~/myenv/bin/activate
pip install -r requirements.txt
```

### Error 3: mysqlclient installation failed

**Solution**: PyMySQL use करें

`requirements.txt` में बदलाव:

```
Flask==2.3.0
Flask-MySQLdb==1.0.1
Werkzeug==2.3.0
pymysql==1.1.0
```

`app.py` में add करें:

```python
import pymysql
pymysql.install_as_MySQLdb()
```

### Error 4: Database connection error

**Check करें**:

- Host: `yourusername.mysql.pythonanywhere-services.com`
- User: `yourusername`
- Password: सही है?
- Database: `yourusername$zenithia_ai_db`

### Error 5: Static files not loading

**Solution**:

1. Web tab में static files mapping check करें
2. Path सही है?
3. Reload करें

---

## 📝 Files को Update करने का तरीका

### Method 1: Git से (Best)

```bash
# Bash console में
cd ~/YOUR_PROJECT_FOLDER
git pull origin main

# Web app reload करें
```

### Method 2: Direct Edit

1. Files tab में जाएं
2. File पर क्लिक करें
3. Edit करें
4. Save करें
5. Web app reload करें

---

## 🔐 Security Tips (Production के लिए)

### 1. Secret Key बदलें

```python
import os
app.secret_key = os.environ.get('SECRET_KEY', 'fallback-secret-key-change-this')
```

### 2. Admin Password बदलें

Database में या app से बदलें

### 3. Debug Mode OFF रखें

```python
if __name__ == "__main__":
    app.run()  # No debug=True
```

---

## 💰 Free Account Limitations

| Feature    | Free Account                 |
| ---------- | ---------------------------- |
| Web Apps   | 1                            |
| MySQL DBs  | 1 (500 MB)                   |
| Disk Space | 512 MB                       |
| Daily CPU  | 100 seconds                  |
| Always On  | ❌ (sleeps after inactivity) |

**Note**: Free account के लिए काफी है! बाद में upgrade कर सकते हैं।

---

## 🚀 Alternative Platforms (अगर चाहें तो)

### 1. **Render.com** (Modern & Free)

- ✅ Free tier
- ✅ Auto deploys from GitHub
- ✅ PostgreSQL included
- ⚠️ MySQL के लिए external service चाहिए

### 2. **Railway.app** (Developer Friendly)

- ✅ $5 free credit monthly
- ✅ MySQL support
- ✅ Easy setup
- ⚠️ Credit card required

### 3. **Heroku** (Popular but Paid)

- ⚠️ No free tier anymore
- ✅ Very reliable
- ✅ MySQL add-on available
- 💰 $5/month से start

### 4. **Vercel** (For Flask)

- ✅ Free tier
- ⚠️ Serverless only
- ⚠️ External database needed
- 🔧 More configuration needed

---

## 🎯 Recommended: PythonAnywhere

**क्यों?**

1. ✅ बिलकुल FREE
2. ✅ MySQL included
3. ✅ सबसे आसान setup
4. ✅ Student/beginner friendly
5. ✅ No credit card
6. ✅ 5 minutes में deploy

---

## 📞 अगर Problem आए तो

### PythonAnywhere Support

- Help Forum: https://www.pythonanywhere.com/forums/
- Help Pages: https://help.pythonanywhere.com/

### Error Logs देखें

```bash
# Bash console में
tail -f /var/log/yourusername.pythonanywhere.com.error.log
tail -f /var/log/yourusername.pythonanywhere.com.server.log
```

---

## ✅ Final Checklist

- [ ] Account बनाया
- [ ] Files upload किए
- [ ] Virtual environment बनाई
- [ ] Dependencies install किए
- [ ] MySQL database बनाया
- [ ] Database import किया
- [ ] app.py configure किया
- [ ] Web app बनाया
- [ ] WSGI file configure किया
- [ ] Static files mapping की
- [ ] Web app reload किया
- [ ] Website test किया
- [ ] Admin login test किया
- [ ] All features working

---

## 🎉 Congratulations!

आपकी website live है! 🚀

Share करें: `https://yourusername.pythonanywhere.com`

---

**Happy Deploying! 💜**
