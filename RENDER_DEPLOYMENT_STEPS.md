# 🚀 Render Deployment Steps - Zenithia.AI

## ✅ You Already Have:
- ✅ Clever Cloud MySQL Database (External)
- ✅ Updated `.env` with credentials
- ✅ All deployment files ready (`Procfile`, `requirements.txt`, `runtime.txt`)

---

## 📋 Step-by-Step Deployment Guide

### Step 1: Push Your Code to GitHub

```bash
# Add all files
git add .

# Commit changes
git commit -m "Ready for Render deployment with Clever Cloud MySQL"

# Push to GitHub
git push origin main
```

---

### Step 2: Sign Up on Render

1. Go to https://render.com
2. Click **"Get Started for Free"**
3. Sign up with your **GitHub account** (recommended)
4. Authorize Render to access your GitHub

---

### Step 3: Create New Web Service

1. Click **"New +"** button (top right)
2. Select **"Web Service"**
3. Connect your GitHub repository:
   - Find: **Zenithia.AI** (or your repo name)
   - Click **"Connect"**

---

### Step 4: Configure Web Service

Fill in these settings:

#### Basic Settings:
- **Name**: `zenithia-ai` (or your preferred name)
- **Region**: Choose closest to you (e.g., Oregon, Frankfurt)
- **Branch**: `main`
- **Root Directory**: Leave blank
- **Runtime**: **Python 3**

#### Build Settings:
- **Build Command**: 
  ```
  pip install -r requirements.txt
  ```

#### Start Command:
- **Start Command**: 
  ```
  gunicorn app:app
  ```

#### Instance Type:
- Select: **Free** (0 USD/month)

---

### Step 5: Add Environment Variables ⚠️ IMPORTANT!

Click **"Advanced"** button, then scroll to **"Environment Variables"**

Add these **EXACT** variables:

| Key | Value |
|-----|-------|
| `MYSQL_HOST` | `bqw2eyhkylh5ffkgeqlk-mysql.services.clever-cloud.com` |
| `MYSQL_USER` | `ufgdsmplcpbm4rg4` |
| `MYSQL_PASSWORD` | `FPc8rmxlI09KffJhLaod` |
| `MYSQL_DB` | `bqw2eyhkylh5ffkgeqlk` |
| `MYSQL_PORT` | `3306` |
| `SECRET_KEY` | `your_random_secret_key_12345` (change this!) |
| `FLASK_ENV` | `production` |
| `PORT` | `10000` |

**To add each variable:**
1. Click **"Add Environment Variable"**
2. Enter **Key** (left box)
3. Enter **Value** (right box)
4. Repeat for all 8 variables

---

### Step 6: Create Web Service

1. Review all settings
2. Click **"Create Web Service"** button
3. Wait for deployment (5-10 minutes)

You'll see:
```
==> Cloning from https://github.com/...
==> Building...
==> Installing dependencies...
==> Starting server...
==> Your service is live 🎉
```

---

### Step 7: Import Database (IMPORTANT!)

Your Clever Cloud MySQL database needs the tables and data!

#### Option A: Use MySQL Workbench

1. Open MySQL Workbench
2. Create new connection:
   - **Hostname**: `bqw2eyhkylh5ffkgeqlk-mysql.services.clever-cloud.com`
   - **Port**: `3306`
   - **Username**: `ufgdsmplcpbm4rg4`
   - **Password**: `FPc8rmxlI09KffJhLaod`
   - **Default Schema**: `bqw2eyhkylh5ffkgeqlk`
3. Test connection
4. Go to **File > Run SQL Script**
5. Select your `database_setup.sql` file
6. Click **Run**

#### Option B: Use Command Line

```bash
mysql -h bqw2eyhkylh5ffkgeqlk-mysql.services.clever-cloud.com -u ufgdsmplcpbm4rg4 -p bqw2eyhkylh5ffkgeqlk < database/database_setup.sql
```
When prompted, enter password: `FPc8rmxlI09KffJhLaod`

#### Option C: Use Clever Cloud Console

1. Go to Clever Cloud dashboard
2. Find your MySQL addon
3. Click **"Console"**
4. Copy/paste SQL from `database_setup.sql`
5. Execute

---

### Step 8: Access Your Live Website! 🎉

Your site will be available at:
```
https://zenithia-ai.onrender.com
```
(Replace `zenithia-ai` with your chosen name)

---

## 🧪 Testing Your Deployment

### Test these features:

1. **Home Page**: 
   - Visit: `https://your-app.onrender.com`
   - Should load properly ✅

2. **Registration**:
   - Go to `/register`
   - Create test account
   - Should redirect to login ✅

3. **Login**:
   - Go to `/login`
   - Login with test account
   - Should see dashboard ✅

4. **Admin Login**:
   - Go to `/admin/login`
   - Email: `admin@zenithia.ai`
   - Password: `admin123`
   - Should see admin dashboard ✅

5. **Database Connection**:
   - Check if tools display
   - Check if events show
   - Add a new tool (admin) ✅

---

## 🔧 Common Issues & Solutions

### Issue 1: "Application failed to respond"

**Check Logs:**
1. Go to Render Dashboard
2. Click your service
3. Click **"Logs"** tab
4. Look for errors

**Common causes:**
- Wrong environment variables
- Database connection failed
- Missing dependencies

**Solution:**
```bash
# Check if all env variables are set
# Go to: Settings > Environment > Edit
```

---

### Issue 2: "502 Bad Gateway"

**Cause:** App crashed during startup

**Solution:**
1. Check logs for errors
2. Verify `Procfile` has: `web: gunicorn app:app`
3. Verify `requirements.txt` is complete
4. Check database credentials

---

### Issue 3: "Internal Server Error (500)"

**Cause:** Database connection issue

**Solution:**
1. Verify all MYSQL_* environment variables
2. Check database is accessible
3. Ensure database tables are created
4. Test connection from local machine

---

### Issue 4: Static files (CSS/JS) not loading

**Cause:** Static files configuration

**Solution:**
Already configured! Flask will serve static files automatically.

---

## 📊 Monitoring Your App

### View Logs:
```
Dashboard > Your Service > Logs
```

### View Metrics:
```
Dashboard > Your Service > Metrics
```

### Restart Service:
```
Dashboard > Your Service > Manual Deploy > Deploy Latest Commit
```

---

## 🔄 Updating Your Deployment

Whenever you make changes:

```bash
# 1. Make changes to your code
# 2. Commit changes
git add .
git commit -m "Your update message"

# 3. Push to GitHub
git push origin main

# 4. Render will auto-deploy! 🎉
```

**Auto-deploy is enabled by default!**

---

## 🎯 Important URLs

### Your Website:
```
https://zenithia-ai.onrender.com
```

### Admin Panel:
```
https://zenithia-ai.onrender.com/admin/login
```

### GitHub Repo:
```
https://github.com/Saniya-Bhosale/Zenithia.AI
```

### Render Dashboard:
```
https://dashboard.render.com
```

---

## 💰 Free Tier Limitations

| Feature | Free Tier |
|---------|-----------|
| Web Services | ✅ Unlimited |
| Bandwidth | ✅ 100 GB/month |
| Build Minutes | ✅ 500 min/month |
| Spins Down | ⚠️ After 15 min inactivity |
| Cold Start | ⚠️ ~30 seconds |
| Custom Domain | ✅ Yes |

**Note:** Free services "sleep" after 15 minutes of inactivity. First request after sleep takes ~30 seconds to wake up.

---

## 🚀 Upgrade Options (Optional)

If you want always-on service:

| Plan | Price | Features |
|------|-------|----------|
| **Free** | $0 | Good for testing |
| **Starter** | $7/month | Always on, faster |
| **Standard** | $25/month | Production ready |

You can start free and upgrade anytime!

---

## ✅ Pre-Deployment Checklist

Before deploying, verify:

- [x] ✅ Code pushed to GitHub
- [x] ✅ `Procfile` exists with `web: gunicorn app:app`
- [x] ✅ `requirements.txt` has all dependencies
- [x] ✅ `runtime.txt` specifies Python version
- [x] ✅ `.env` file NOT pushed to GitHub (in .gitignore)
- [x] ✅ Environment variables ready to add in Render
- [x] ✅ Database credentials available
- [x] ✅ Database SQL file ready to import

---

## 🎉 Success Indicators

Your deployment is successful when:

✅ Build completes without errors
✅ Service shows "Live" status (green)
✅ Website loads at your Render URL
✅ You can register/login
✅ Admin panel works
✅ Database queries work
✅ No errors in logs

---

## 📞 Need Help?

### Render Support:
- Docs: https://render.com/docs
- Community: https://community.render.com

### Check Your Logs:
```bash
# In Render Dashboard
Logs tab > Show errors
```

### Database Issues:
- Verify Clever Cloud MySQL is active
- Check connection from local machine first
- Ensure firewall allows connections

---

## 🎊 You're Ready to Deploy!

Follow the steps above and your Zenithia.AI will be live in **10-15 minutes**!

**Good luck! 🚀**

---

## 📝 Quick Command Reference

```bash
# Push to GitHub
git add .
git commit -m "Deploy to Render"
git push origin main

# Import database (local MySQL client)
mysql -h bqw2eyhkylh5ffkgeqlk-mysql.services.clever-cloud.com -u ufgdsmplcpbm4rg4 -p bqw2eyhkylh5ffkgeqlk < database/database_setup.sql

# Test local connection
python app.py
```

---

**Last Updated:** November 4, 2025
**Deployment Target:** Render.com
**Database:** Clever Cloud MySQL
