#!/bin/bash
echo "After install script running..."

# Ensure proper permissions for web server directory
sudo chown -R ec2-user:ec2-user /var/www/html
sudo chmod -R 755 /var/www/html

# Restart the web server (adjust for your server type)
sudo systemctl restart httpd  # For Apache
# sudo systemctl restart nginx  # Uncomment if using Nginx

echo "After install script completed."
