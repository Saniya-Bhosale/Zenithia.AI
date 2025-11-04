# 🚀 Zenithia AI Hub - Database Setup Guide

## 📋 Overview
This database contains **300 AI Tools** organized into **6 categories** with **50 tools each**.

## 🎯 Categories (50 tools each)

1. **✍️ Writing Tools** - AI content generation, copywriting, grammar checking
2. **💻 Coding Tools** - AI code completion, debugging, documentation
3. **🖼️ Image Tools** - AI image generation, editing, enhancement
4. **🎬 Video Tools** - AI video creation, editing, transcription
5. **🎤 Voice Tools** - AI voice generation, text-to-speech, transcription
6. **⚡ Productivity Tools** - AI task management, note-taking, automation

## 🛠️ Setup Methods

### Method 1: Using PowerShell Script (Recommended)
```powershell
.\setup_database.ps1
```

### Method 2: Manual MySQL Execution
```powershell
# Step 1: Create database and insert first 100 tools
Get-Content database_setup_300_tools.sql | mysql -u root -proot

# Step 2: Insert remaining 200 tools
Get-Content database_setup_300_tools_part2.sql | mysql -u root -proot
```

### Method 3: Using MySQL Command Line
```bash
mysql -u root -proot < database_setup_300_tools.sql
mysql -u root -proot < database_setup_300_tools_part2.sql
```

## 📊 Database Structure

### Tables Created:
1. **users** - User accounts with admin/user roles
2. **tools** - 300 AI tools with images, links, descriptions
3. **events** - AI events and conferences
4. **contact** - Contact form submissions

## ✨ Features

### All Tools Include:
- ✅ **Proper Name** - Official tool name
- ✅ **Category** - One of 6 categories
- ✅ **Description** - Detailed tool description
- ✅ **Image URL** - Official logo/favicon
- ✅ **Working Link** - Direct link to tool website
- ✅ **Timestamp** - Creation date

### Admin Panel Features:
- ✅ **Manage Events** - Full CRUD operations
- ✅ **Manage Users** - View and delete users
- ✅ **Manage Tools** - View, edit, delete tools
- ✅ **Edit Tool Images** - Live image preview while editing
- ✅ **Statistics Dashboard** - Overview of all data

## 🔐 Admin Credentials

```
Email: admin@zenithia.ai
Password: admin123
```

## 🎨 Tool Examples

### Writing Category (50 tools)
- ChatGPT, Jasper AI, Copy.ai, Writesonic, QuillBot, Grammarly, etc.

### Coding Category (50 tools)
- GitHub Copilot, Tabnine, Cursor, CodeWhisperer, Codeium, etc.

### Image Category (50 tools)
- Midjourney, DALL-E 3, Stable Diffusion, Leonardo AI, Adobe Firefly, etc.

### Video Category (50 tools)
- Runway Gen-2, Synthesia, Pictory, Descript, HeyGen, etc.

### Voice Category (50 tools)
- ElevenLabs, Murf AI, Play.ht, Resemble AI, Speechify, etc.

### Productivity Category (50 tools)
- Notion AI, ClickUp AI, Motion, Taskade, Perplexity AI, etc.

## 🖼️ Image Sources

All tool images are sourced from:
- Official website favicons (.ico files)
- Official brand assets and CDNs
- SVG logos from official sources
- GitHub assets for open-source tools
- Reliable CDN services

## 🔄 After Setup

1. **Start the Flask App:**
   ```powershell
   python app.py
   ```

2. **Access the Website:**
   - Homepage: http://127.0.0.1:5000
   - User Login: http://127.0.0.1:5000/login
   - Admin Login: http://127.0.0.1:5000/admin/login

3. **Test Admin Features:**
   - Login as admin
   - View all 300 tools organized by category
   - Edit tool images with live preview
   - Manage events and users

## 📝 Notes

- Each category has exactly **50 tools**
- All tools have **working links** to official websites
- All tools have **proper images** (favicons/logos)
- Database includes **sample events** and **contact messages**
- Admin account is **auto-created** during setup

## 🎯 Quality Standards

All 300 tools meet these criteria:
- ✅ Active and accessible websites
- ✅ Legitimate AI-powered tools
- ✅ Proper descriptions (what the tool does)
- ✅ Official image URLs (not placeholders)
- ✅ Correct categorization

## 🚀 Next Steps

After database setup:
1. Browse all 300 tools on the website
2. Use admin panel to manage tools
3. Edit tool images with live preview
4. Add new events and manage users
5. Customize descriptions as needed

## 💡 Tips

- The database is **production-ready** with real tools
- All image URLs are **permanent** and **reliable**
- Each category has **diverse tools** covering different use cases
- Tools range from **free to premium** services
- Mix of **popular** and **emerging** AI tools

---

**Total Tools: 300**
**Categories: 6**
**Tools per Category: 50**

🎉 **Your AI Tools Hub is ready to use!**
