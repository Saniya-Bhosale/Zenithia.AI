# Database Setup Script for Zenithia AI Hub
# This script will setup the database with 300 AI tools (50 in each category)

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Zenithia AI Hub - Database Setup" -ForegroundColor Cyan
Write-Host "Setting up 300 AI Tools (50 per category)" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Database credentials
$dbUser = "root"
$dbPassword = "root"
$dbName = "zenithia_ai_db"

Write-Host "Step 1: Creating database and tables..." -ForegroundColor Yellow
Get-Content "database_setup_300_tools.sql" | mysql -u $dbUser -p$dbPassword 2>&1 | Out-Null

if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ Database structure created successfully!" -ForegroundColor Green
} else {
    Write-Host "✗ Error creating database structure" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "Step 2: Inserting remaining tools..." -ForegroundColor Yellow
Get-Content "database_setup_300_tools_part2.sql" | mysql -u $dbUser -p$dbPassword 2>&1 | Out-Null

if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ All 300 tools inserted successfully!" -ForegroundColor Green
} else {
    Write-Host "✗ Error inserting tools" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Database Setup Complete!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Summary:" -ForegroundColor White
Write-Host "• Database: $dbName" -ForegroundColor White
Write-Host "• Writing Tools: 50" -ForegroundColor White
Write-Host "• Coding Tools: 50" -ForegroundColor White
Write-Host "• Image Tools: 50" -ForegroundColor White
Write-Host "• Video Tools: 50" -ForegroundColor White
Write-Host "• Voice Tools: 50" -ForegroundColor White
Write-Host "• Productivity Tools: 50" -ForegroundColor White
Write-Host "• Total Tools: 300" -ForegroundColor Cyan
Write-Host ""
Write-Host "Admin Login:" -ForegroundColor Yellow
Write-Host "• Email: admin@zenithia.ai" -ForegroundColor White
Write-Host "• Password: admin123" -ForegroundColor White
Write-Host ""
Write-Host "Next Steps:" -ForegroundColor Yellow
Write-Host "1. Run: python app.py" -ForegroundColor White
Write-Host "2. Visit: http://127.0.0.1:5000" -ForegroundColor White
Write-Host "3. Admin Panel: http://127.0.0.1:5000/admin/login" -ForegroundColor White
Write-Host ""
