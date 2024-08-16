#!/bin/bash

# Debug: Start the script
echo "Starting Apache update..."

# Update package list and upgrade packages
sudo apt-get update -y
sudo apt-get upgrade -y

# Install or update Apache
sudo apt-get install -y apache2
echo -e "<h1>Hey Amir\nIt works!</h1>" | sudo tee /var/www/html/index.html
 # יוצר דף אינטרנט פשוט
# Debug: Apache installed or updated
echo "Apache installed or updated."

# Restart Apache to apply changes
sudo systemctl restart apache2

# Debug: Apache restarted
echo "Apache restarted."

# Debug: End the script
echo "Apache update completed."
