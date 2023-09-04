#!/bin/bash
#add fix to exercise3 here

# Modify the 000-default.conf file to set 'Require all granted'
sudo sed -i 's/Require all denied/Require all granted/' /etc/apache2/sites-available/000-default.conf

# Remove the 'server1' line from apache2.conf
sudo sed -i '/server1$/d' /etc/apache2/apache2.conf

# Test Apache configuration
config_test_output=$(sudo apache2ctl configtest)

# Check if the configuration test was successful
if [[ "$config_test_output" == *"Syntax OK"* ]]; then
    echo "Apache configuration test successful."
    # Restart Apache
    sudo systemctl restart apache2
    echo "Apache restarted."
else
    echo "Apache configuration test failed. Please check your configuration files."
    echo "$config_test_output"
fi

