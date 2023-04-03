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
COPY your-domain-2.class.cety.online.conf /usr/local/apache2/conf/sites/your-domain-2.class.cety.online.conf

# Create the your-domain folder and copy html files
RUN mkdir -p /usr/local/apache2/htdocs/your-domain
COPY index-your-domain.html /usr/local/apache2/htdocs/your-domain/index.html

# Create the your-domain-2 folder and copy html files
RUN mkdir -p /usr/local/apache2/htdocs/your-domain-2
COPY index-your-domain-2.html /usr/local/apache2/htdocs/your-domain-2/index.html

# Allow connection to port 80
EXPOSE 80
