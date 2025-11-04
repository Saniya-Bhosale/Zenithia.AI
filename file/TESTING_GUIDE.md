# 🧪 Testing Guide for Zenithia.AI

## Pre-Testing Setup

1. Ensure database is set up with sample data
2. Application is running on http://127.0.0.1:5000
3. Clear browser cache and cookies
4. Test in multiple browsers (Chrome, Firefox, Edge, Safari)

---

## 📋 Manual Testing Checklist

### 1. Home Page Tests

**URL**: http://127.0.0.1:5000/

✅ **Visual Tests**
- [ ] Hero section displays with gradient background
- [ ] Navigation bar is visible and sticky
- [ ] "Zenithia.AI" logo and branding visible
- [ ] "Get Started" button is prominent
- [ ] Features section displays all 3 features
- [ ] Category preview shows 6 categories with icons
- [ ] Footer displays with social links

✅ **Functionality Tests**
- [ ] Click "Get Started" → Redirects to register page
- [ ] Click "Learn More" → Redirects to about page
- [ ] Navigation links work (Home, About, Events, Contact)
- [ ] Hover effects work on cards
- [ ] Animations trigger on scroll

### 2. Registration Tests

**URL**: http://127.0.0.1:5000/register

✅ **Valid Registration**
- [ ] Fill all fields correctly
- [ ] Password matches confirm password
- [ ] Submit → Success message appears
- [ ] Redirect to login page
- [ ] Check database: New user exists

✅ **Validation Tests**
- [ ] Empty name → Error message
- [ ] Invalid email format → Error message
- [ ] Short password → Error message
- [ ] Passwords don't match → Error message
- [ ] Duplicate email → Error message

**Test Data**:
```
Name: Test User
Email: test@example.com
Password: Test123!
```

### 3. Login Tests

**URL**: http://127.0.0.1:5000/login

✅ **Valid Login**
- [ ] Enter correct credentials
- [ ] Submit → Welcome message appears
- [ ] Redirect to dashboard
- [ ] Session persists (reload page stays logged in)

✅ **Invalid Login**
- [ ] Wrong email → Error message
- [ ] Wrong password → Error message
- [ ] Empty fields → Validation error

**Admin Credentials**:
```
Email: admin@zenithia.ai
Password: admin123
```

### 4. Dashboard Tests (Logged In)

**URL**: http://127.0.0.1:5000/dashboard

✅ **Visual Tests**
- [ ] Welcome message shows user's name
- [ ] All 6 categories display:
  - Writing Tools
  - Coding Tools
  - Image Tools
  - Video Tools
  - Voice Tools
  - Productivity Tools
- [ ] Each category shows tool count
- [ ] Icons display for each category
- [ ] Statistics section shows numbers

✅ **Functionality Tests**
- [ ] Click "Writing Tools" → Shows writing tools
- [ ] Click "Coding Tools" → Shows coding tools
- [ ] Click "Image Tools" → Shows image tools
- [ ] Click "Video Tools" → Shows video tools
- [ ] Click "Voice Tools" → Shows voice tools
- [ ] Click "Productivity Tools" → Shows productivity tools
- [ ] User name appears in navbar
- [ ] Logout button visible in dropdown

### 5. Tools Page Tests

**URL**: http://127.0.0.1:5000/tools/Writing (example)

✅ **Visual Tests**
- [ ] Page header shows category name
- [ ] Tools display in grid layout (3 columns on desktop)
- [ ] Each tool card shows:
  - Tool image
  - Tool name
  - Description (truncated)
  - Category badge
  - "More Info" button
  - "Visit Tool" button
- [ ] Count of tools displayed

✅ **Functionality Tests**
- [ ] Click "More Info" → Goes to tool detail page
- [ ] Click "Visit Tool" → Opens in new tab
- [ ] Click "Back to Dashboard" → Returns to dashboard
- [ ] Hover effects work on cards
- [ ] Responsive on mobile (1 column)

**Test All Categories**:
- [ ] /tools/Writing (20 tools)
- [ ] /tools/Coding (20 tools)
- [ ] /tools/Image (20 tools)
- [ ] /tools/Video (20 tools)
- [ ] /tools/Voice (20 tools)
- [ ] /tools/Productivity (20 tools)

### 6. Tool Detail Page Tests

**URL**: http://127.0.0.1:5000/tool/1 (ChatGPT example)

✅ **Visual Tests**
- [ ] Tool name in header
- [ ] Tool image displays
- [ ] Full description visible
- [ ] Key features listed
- [ ] Sidebar shows tool information
- [ ] Share buttons present

✅ **Functionality Tests**
- [ ] Click "Visit [Tool Name]" → Opens tool website
- [ ] Click "Back to [Category]" → Returns to category
- [ ] Click "More [Category] Tools" → Returns to category
- [ ] Share buttons functional

### 7. About Page Tests

**URL**: http://127.0.0.1:5000/about

✅ **Tests**
- [ ] Mission section displays
- [ ] Statistics cards show (120+ tools, 6 categories, 1000+ users)
- [ ] "What We Offer" section with 4 features
- [ ] Vision section displays
- [ ] "Join Us Today" button works

### 8. Events Page Tests

**URL**: http://127.0.0.1:5000/events

✅ **Tests**
- [ ] Event cards display with date
- [ ] Event title, description visible
- [ ] "Learn More" links work
- [ ] Featured event categories show
- [ ] If no events: Info message displays

### 9. Contact Page Tests

**URL**: http://127.0.0.1:5000/contact

✅ **Form Tests**
- [ ] All fields render correctly
- [ ] Fill in: name, email, message
- [ ] Submit → Success message appears
- [ ] Check database: Message saved in `contact` table
- [ ] Empty fields → Validation error
- [ ] Invalid email → Validation error

✅ **Visual Tests**
- [ ] Contact information displays
- [ ] Social media icons visible
- [ ] Form styling correct

### 10. Admin Dashboard Tests (Admin Only)

**URL**: http://127.0.0.1:5000/admin

✅ **Access Control**
- [ ] Regular user cannot access → Redirects
- [ ] Admin can access

✅ **Statistics Display**
- [ ] Total users count
- [ ] Total tools count
- [ ] Total events count
- [ ] Total messages count

✅ **Tables Display**
- [ ] Recent tools table with data
- [ ] Recent messages table with data
- [ ] View and Delete buttons present

✅ **Quick Actions**
- [ ] Click "Add New Tool" → Goes to add tool page
- [ ] Other action cards display

### 11. Add Tool Tests (Admin Only)

**URL**: http://127.0.0.1:5000/add_tool

✅ **Form Tests**
- [ ] All fields render
- [ ] Category dropdown has all 6 options
- [ ] Fill all fields with test data
- [ ] Submit → Success message
- [ ] New tool appears in database
- [ ] New tool visible in category page

**Test Data**:
```
Name: Test AI Tool
Category: Writing
Description: A test tool for validation
Image URL: https://via.placeholder.com/300x200
Tool Link: https://example.com
```

✅ **Validation**
- [ ] Empty fields → Error
- [ ] Invalid URL format → Error

### 12. Logout Test

✅ **Tests**
- [ ] Click user dropdown → Click Logout
- [ ] Success message appears
- [ ] Redirects to home page
- [ ] Session cleared (cannot access dashboard)
- [ ] Navbar shows Login/Register again

---

## 🌐 Cross-Browser Testing

Test on:
- [ ] Google Chrome (latest)
- [ ] Mozilla Firefox (latest)
- [ ] Microsoft Edge (latest)
- [ ] Safari (Mac/iOS)
- [ ] Mobile Chrome (Android)
- [ ] Mobile Safari (iOS)

---

## 📱 Responsive Testing

Test on different screen sizes:

### Desktop
- [ ] 1920x1080 (Full HD)
- [ ] 1366x768 (Laptop)

### Tablet
- [ ] 768x1024 (iPad)
- [ ] 1024x768 (iPad Landscape)

### Mobile
- [ ] 375x667 (iPhone)
- [ ] 360x640 (Android)
- [ ] 414x896 (iPhone Plus)

**What to Check**:
- [ ] Navigation collapses to hamburger menu
- [ ] Cards stack vertically
- [ ] Text remains readable
- [ ] Images scale properly
- [ ] Buttons are touchable (min 44x44px)

---

## 🔒 Security Testing

### Authentication
- [ ] Cannot access /dashboard without login
- [ ] Cannot access /admin without admin role
- [ ] Session expires on logout
- [ ] Passwords are hashed in database

### Input Validation
- [ ] SQL injection attempts blocked
- [ ] XSS attempts sanitized
- [ ] CSRF protection active

### Password Security
- [ ] Passwords stored as hashes (not plaintext)
- [ ] Password confirmation works
- [ ] No password visible in browser

---

## ⚡ Performance Testing

### Page Load Times
- [ ] Home page: < 2 seconds
- [ ] Dashboard: < 2 seconds
- [ ] Tools page: < 2 seconds
- [ ] Tool detail: < 2 seconds

### Database Queries
- [ ] No N+1 query problems
- [ ] Queries optimized
- [ ] Connection pooling works

### Images
- [ ] Images load quickly
- [ ] Lazy loading works
- [ ] Placeholder images show while loading

---

## 🐛 Error Handling Tests

### Custom Error Pages
- [ ] Visit /nonexistent → Shows 404 page
- [ ] Cause server error → Shows 500 page

### Form Errors
- [ ] Flash messages appear
- [ ] Error messages are clear
- [ ] Form data persists after error

### Database Errors
- [ ] Duplicate email handled gracefully
- [ ] Connection errors show user-friendly message

---

## 🧩 Integration Tests

### Complete User Flow
1. [ ] Visit home page
2. [ ] Click "Get Started"
3. [ ] Register new account
4. [ ] Login with new account
5. [ ] Browse all 6 categories
6. [ ] View multiple tools
7. [ ] Visit a tool website
8. [ ] Submit contact form
9. [ ] View events
10. [ ] Logout

### Admin Flow
1. [ ] Login as admin
2. [ ] Access admin dashboard
3. [ ] View statistics
4. [ ] Add a new tool
5. [ ] Verify tool appears in category
6. [ ] View contact messages
7. [ ] Logout

---

## 📊 Test Results Template

```
Date: __________
Tester: __________
Browser: __________
Device: __________

✅ Passed: ____ / ____
❌ Failed: ____ / ____

Issues Found:
1. 
2. 
3. 

Notes:
```

---

## 🚨 Critical Bugs to Watch For

1. **Cannot login after registration**
2. **Tools not displaying in categories**
3. **Admin cannot add tools**
4. **Database connection errors**
5. **Images not loading**
6. **Navigation broken**
7. **Flash messages not showing**
8. **Mobile layout broken**

---

## ✅ Final Checklist Before Production

- [ ] All tests pass
- [ ] No console errors
- [ ] No database errors
- [ ] All links work
- [ ] All forms validate
- [ ] Mobile responsive
- [ ] Cross-browser compatible
- [ ] Security tested
- [ ] Performance optimized
- [ ] Admin functionality works
- [ ] User flow smooth
- [ ] Error handling works

---

**Happy Testing! 🧪**
