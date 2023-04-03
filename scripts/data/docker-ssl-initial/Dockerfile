# Which image to build from?
FROM httpd:2.4

# Use our DEFAULT index.html for the DEFAULT web site
COPY index.html /usr/local/apache2/htdocs/index.html

# Copy our custom httpd.conf over the existing httpd.conf
COPY your-domain-httpd.conf /usr/local/apache2/conf/httpd.conf

# Create the Apache sites folder and copy the site configs
RUN mkdir -p /usr/local/apache2/conf/sites
COPY default.conf /usr/local/apache2/conf/sites/default.conf
COPY your-domain.class.cety.online.conf /usr/local/apache2/conf/sites/your-domain.class.cety.online.conf

# Create the your-domain folder and copy website files
RUN mkdir -p /usr/local/apache2/htdocs/your-domain
COPY website /usr/local/apache2/htdocs/your-domain/

# Allow connection to port 80
EXPOSE 80
