# 🌐 Production Deployment Guide

## Before Deployment Checklist

- [ ] Change the secret key in `app.py`
- [ ] Update MySQL password
- [ ] Set `debug=False` in `app.py`
- [ ] Add proper error handling
- [ ] Configure environment variables
- [ ] Set up SSL certificate
- [ ] Create production database backup

## Environment Variables Setup

Create a `.env` file:

```env
SECRET_KEY=your-super-secret-key-here
MYSQL_HOST=localhost
MYSQL_USER=your_mysql_user
MYSQL_PASSWORD=your_mysql_password
MYSQL_DB=zenithia_ai_db
FLASK_ENV=production
```

Update `app.py` to use environment variables:

```python
from dotenv import load_dotenv
import os

load_dotenv()

app.secret_key = os.getenv('SECRET_KEY')
app.config['MYSQL_HOST'] = os.getenv('MYSQL_HOST')
app.config['MYSQL_USER'] = os.getenv('MYSQL_USER')
app.config['MYSQL_PASSWORD'] = os.getenv('MYSQL_PASSWORD')
app.config['MYSQL_DB'] = os.getenv('MYSQL_DB')
```

Install python-dotenv:
```bash
pip install python-dotenv
```

## Deployment Options

### Option 1: Deploy on Heroku

1. Install Heroku CLI
2. Create `Procfile`:
```
web: gunicorn app:app
```

3. Install gunicorn:
```bash
pip install gunicorn
pip freeze > requirements.txt
```

4. Deploy:
```bash
heroku create zenithia-ai
heroku config:set SECRET_KEY=your-secret-key
heroku addons:create cleardb:ignite
git push heroku main
```

### Option 2: Deploy on PythonAnywhere

1. Upload files to PythonAnywhere
2. Configure web app
3. Set up MySQL database
4. Update WSGI configuration
5. Reload web app

### Option 3: Deploy on DigitalOcean

1. Create a Droplet (Ubuntu)
2. Install Python, MySQL, Nginx
3. Set up virtual environment
4. Configure Nginx as reverse proxy
5. Use Gunicorn as WSGI server
6. Set up supervisor for auto-restart

### Option 4: Deploy on AWS EC2

1. Launch EC2 instance
2. Install dependencies
3. Configure security groups
4. Set up RDS for MySQL
5. Use Elastic Load Balancer
6. Configure auto-scaling

## Security Hardening

### 1. Update app.py for Production

```python
# Change debug mode
if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0')
```

### 2. Add Security Headers

```python
@app.after_request
def set_security_headers(response):
    response.headers['X-Content-Type-Options'] = 'nosniff'
    response.headers['X-Frame-Options'] = 'DENY'
    response.headers['X-XSS-Protection'] = '1; mode=block'
    response.headers['Strict-Transport-Security'] = 'max-age=31536000; includeSubDomains'
    return response
```

### 3. Rate Limiting

```python
from flask_limiter import Limiter

limiter = Limiter(
    app,
    key_func=lambda: request.remote_addr,
    default_limits=["200 per day", "50 per hour"]
)
```

### 4. HTTPS Only

- Obtain SSL certificate (Let's Encrypt)
- Configure Nginx/Apache for HTTPS
- Redirect HTTP to HTTPS

## Performance Optimization

### 1. Enable Caching

```python
from flask_caching import Cache

cache = Cache(app, config={'CACHE_TYPE': 'simple'})

@app.route('/tools/<category>')
@cache.cached(timeout=300)
def tools(category):
    # ... existing code
```

### 2. Database Connection Pooling

```python
app.config['MYSQL_POOL_SIZE'] = 10
app.config['MYSQL_POOL_RECYCLE'] = 3600
```

### 3. Compress Static Files

```python
from flask_compress import Compress

Compress(app)
```

### 4. Use CDN for Static Assets

Update `base.html` to use CDN for images

## Monitoring & Logging

### 1. Set up Logging

```python
import logging

logging.basicConfig(
    filename='app.log',
    level=logging.INFO,
    format='%(asctime)s %(levelname)s: %(message)s'
)
```

### 2. Error Tracking

Use services like:
- Sentry
- Rollbar
- New Relic

### 3. Uptime Monitoring

- UptimeRobot
- Pingdom
- StatusCake

## Backup Strategy

### 1. Database Backup

Create cron job for daily backups:
```bash
0 2 * * * mysqldump -u user -p zenithia_ai_db > /backups/db_$(date +\%Y\%m\%d).sql
```

### 2. File Backup

```bash
0 3 * * * tar -czf /backups/files_$(date +\%Y\%m\%d).tar.gz /var/www/zenithia
```

## Maintenance Mode

Create `maintenance.html` template and route:

```python
MAINTENANCE_MODE = False

@app.before_request
def check_maintenance():
    if MAINTENANCE_MODE and request.endpoint != 'maintenance':
        return render_template('maintenance.html'), 503
```

## Post-Deployment Tasks

1. ✓ Test all functionality
2. ✓ Check database connections
3. ✓ Verify SSL certificate
4. ✓ Test email notifications
5. ✓ Monitor server resources
6. ✓ Set up analytics (Google Analytics)
7. ✓ Configure backups
8. ✓ Test error pages (404, 500)
9. ✓ Load testing
10. ✓ Security audit

## Scaling Considerations

### Horizontal Scaling
- Use load balancer
- Multiple app servers
- Shared session storage (Redis)

### Vertical Scaling
- Increase server resources
- Optimize queries
- Add indexes to database

### Database Scaling
- Read replicas
- Connection pooling
- Query optimization
- Caching layer

## Cost Estimation

### Small Scale (< 1000 users)
- **Shared Hosting**: $5-10/month
- **PythonAnywhere**: $5/month
- **Heroku Hobby**: $7/month

### Medium Scale (1000-10000 users)
- **DigitalOcean Droplet**: $20-40/month
- **AWS EC2**: $30-50/month
- **Heroku Standard**: $25/month

### Large Scale (10000+ users)
- **Multiple servers**: $100-500/month
- **CDN**: $20-100/month
- **Database**: $50-200/month

## Support & Updates

### Regular Maintenance
- Update dependencies monthly
- Review security advisories
- Backup verification
- Performance monitoring
- User feedback review

### Version Control
- Use Git for version control
- Tag releases
- Maintain changelog
- Document breaking changes

---

**Good luck with your deployment! 🚀**
