# Setup Instructions for Dynamic Events Feature

## Step 1: Update MySQL Database

You need to run the SQL script to add the category column and insert sample events.

### Option A: Using MySQL Workbench (Recommended)

1. **Open MySQL Workbench**
2. **Connect to your database** (localhost, root, password: root)
3. **Open the SQL file:**
   - Click `File` → `Open SQL Script`
   - Navigate to: `C:\Users\Asus\OneDrive\Documents\Desktop\Saniya_AIHUB\update_events_table.sql`
   - Click `Open`
4. **Execute the script:**
   - Click the lightning bolt icon (⚡) or press `Ctrl+Shift+Enter`
   - Wait for execution to complete
5. **Verify the data:**
   ```sql
   SELECT * FROM zenithia_ai_db.events;
   ```
   You should see 24 events with categories!

### Option B: Using Command Line

1. **Open Command Prompt or PowerShell**
2. **Navigate to project directory:**
   ```powershell
   cd C:\Users\Asus\OneDrive\Documents\Desktop\Saniya_AIHUB
   ```
3. **Run MySQL command:**
   ```powershell
   mysql -u root -p zenithia_ai_db < update_events_table.sql
   ```
4. **Enter password when prompted:** root

## Step 2: Verify Database Update

Run this query in MySQL Workbench to confirm:
```sql
USE zenithia_ai_db;

-- Check if category column exists
DESCRIBE events;

-- Count events by category
SELECT category, COUNT(*) as count 
FROM events 
GROUP BY category;
```

Expected output:
- Webinar: 4 events
- Hackathon: 4 events  
- Product Launch: 4 events
- Meetup: 4 events
- Conference: 3 events
- Workshop: 4 events
- **Total: 24 events**

## Step 3: Test the Dynamic Events Page

1. **Make sure Flask is running:**
   ```powershell
   cd C:\Users\Asus\OneDrive\Documents\Desktop\Saniya_AIHUB
   python app.py
   ```

2. **Open browser and navigate to:**
   - http://127.0.0.1:5000/events

3. **Test the features:**

   ✅ **Search Functionality:**
   - Type "AI" in search box → Should filter events containing "AI"
   - Type "Healthcare" → Should show healthcare-related events
   - Type "Hackathon" → Should show all hackathon events
   
   ✅ **Category Filter:**
   - Select "Webinars" → Should show only 4 webinar events
   - Select "Hackathons" → Should show only 4 hackathon events
   - Select "Product Launch" → Should show only 4 product launch events
   - Select "All Categories" → Should show all 24 events
   
   ✅ **Combined Search + Filter:**
   - Search: "AI" + Category: "Webinar" → Should show AI webinars only
   - Search: "Healthcare" + Category: "Hackathon" → Should show HealthTech hackathon
   
   ✅ **Quick Filter (Category Cards at bottom):**
   - Click "Webinars" card → Should auto-filter to webinars and scroll up
   - Click "Hackathons" card → Should auto-filter to hackathons
   
   ✅ **Reset Filters:**
   - Click "Reset Filters" button → Should clear search and show all events
   
   ✅ **Results Count:**
   - Should display "24 events found" initially
   - Should update dynamically as you filter: "4 events found", etc.
   
   ✅ **Event Display:**
   - Events sorted by date (upcoming first)
   - Each event shows: date badge, category badge, title, description, link
   - Smooth animations when filtering
   - Hover effects on cards

## Features Implemented

### 1. **JavaScript Arrays**
- Events data is stored in JavaScript array `eventsData`
- Each event is an object with: id, title, date, description, link, category
- Array is populated dynamically from Flask backend (Jinja2 template)

### 2. **Search Functionality**
- Real-time search as you type
- Searches in both event title and description
- Case-insensitive matching
- Updates results instantly

### 3. **Category Filter**
- Dropdown with 6 categories + "All Categories"
- Categories: Webinar, Hackathon, Product Launch, Meetup, Conference, Workshop
- Color-coded category badges on each event card

### 4. **Dynamic Rendering**
- Events are rendered using JavaScript DOM manipulation
- No page reload needed for filtering
- Smooth fade-in animations
- Responsive grid layout (3 columns on desktop, 2 on tablet, 1 on mobile)

### 5. **Quick Filter**
- Click category cards at bottom to instantly filter
- Auto-scrolls to filtered results
- Visual feedback with hover effects

### 6. **Results Count**
- Live counter showing number of filtered results
- Updates with every search/filter action
- Shows "No events found" when no matches

### 7. **Date Formatting**
- Events display with formatted date badges (Day + Month)
- Events automatically sorted by date (upcoming first)

## JavaScript Functions Breakdown

```javascript
// Main functions in events.html:

1. renderEvents(events)
   - Takes array of events
   - Generates HTML for each event
   - Updates DOM with event cards
   - Handles empty results

2. filterEvents()
   - Reads search input and category filter
   - Filters events array based on criteria
   - Calls renderEvents() with filtered results

3. quickFilter(category)
   - Sets category filter to specified category
   - Clears search box
   - Triggers filtering
   - Scrolls to results

4. resetFilters()
   - Clears search input
   - Resets category to "All"
   - Shows all events

5. formatDate(date)
   - Converts date to {day, month} format
   - Used for date badge display

6. getCategoryColor(category)
   - Returns Bootstrap color class for category
   - Used for category badge styling
```

## Troubleshooting

### Events not showing?
1. Check if SQL script ran successfully
2. Verify events exist: `SELECT COUNT(*) FROM zenithia_ai_db.events;`
3. Check Flask console for errors
4. Open browser console (F12) for JavaScript errors

### Search/Filter not working?
1. Open browser console (F12) 
2. Check for JavaScript errors
3. Verify `eventsData` array is populated: Type `eventsData` in console
4. Ensure Flask is serving the latest template (hard refresh: Ctrl+Shift+R)

### Category column missing?
1. The ALTER TABLE statement may have failed
2. Manually add it:
   ```sql
   ALTER TABLE events ADD COLUMN category VARCHAR(50) DEFAULT 'General';
   ```

## What's New in Your Website

✅ **24 Sample Events** across 6 categories
✅ **Real-time Search** - Search events instantly
✅ **Category Filtering** - Filter by event type
✅ **Combined Filters** - Search + Category together
✅ **Dynamic Display** - No page reloads needed
✅ **Quick Access** - Click category cards to filter
✅ **Results Counter** - See how many events match
✅ **Smooth Animations** - Professional UX
✅ **Responsive Design** - Works on all devices
✅ **Date Sorting** - Upcoming events first
✅ **Color Coding** - Categories have unique colors

Your events page is now a fully dynamic, interactive experience! 🎉
