# Configuration Update for app.py
# Add these lines at the top of your app.py file for production deployment

"""
import os
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

app = Flask(__name__)

# Secret key from environment variable (more secure)
app.secret_key = os.getenv("SECRET_KEY", "your_secret_key_here_change_in_production")

# MySQL Configuration - uses environment variables in production
app.config["MYSQL_HOST"] = os.getenv("MYSQL_HOST", "localhost")
app.config["MYSQL_USER"] = os.getenv("MYSQL_USER", "root")
app.config["MYSQL_PASSWORD"] = os.getenv("MYSQL_PASSWORD", "root")
app.config["MYSQL_DB"] = os.getenv("MYSQL_DB", "zenithia_ai_db")
app.config["MYSQL_CURSORCLASS"] = "DictCursor"

# Optional: Use PyMySQL if mysqlclient fails
import pymysql
pymysql.install_as_MySQLdb()
"""

# Update the if __name__ block at the bottom:
"""
if __name__ == "__main__":
    # Get port from environment variable (required for Render/Heroku)
    port = int(os.getenv("PORT", 5000))
    # Don't use debug=True in production
    app.run(host="0.0.0.0", port=port, debug=os.getenv("FLASK_ENV") != "production")
"""
