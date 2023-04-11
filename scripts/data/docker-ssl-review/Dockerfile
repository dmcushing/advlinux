# Which image to build from?
FROM dmcushing/httpd_base

# Use review-makepage.html for the DEFAULT web site
COPY review-makepage.html /usr/local/apache2/htdocs/index.html

# Make directory /usr/local/apache2/www/your-domain

# Copy index.html to /usr/local/apache2/www/your-domain
COPY index.html /usr/local/apache2/www/your-domain/index.html

# Copy *.pem files to /usr/local/apache2/conf/sites/

# Copy your-domain.class.cety.online.conf to /usr/local/apache2/conf/sites/

# Expose needed ports
EXPOSE 80
EXPOSE 443
