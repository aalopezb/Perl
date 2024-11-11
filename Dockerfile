FROM perl:latest

# Install necessary dependencies (such as Nginx)
RUN apt-get update && apt-get install -y nginx

# Create a directory to store the Perl script and Nginx configuration
WORKDIR /var/www/html

# Copy the index.html file and the Perl script to the container
COPY index.html /var/www/html/index.html
COPY app.pl /var/www/html/app.pl

# Nginx configuration (to serve static content and the Perl script)
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 for Nginx to use
EXPOSE 80

# Run Nginx and the Perl script
CMD service nginx start && perl /var/www/html/app.pl
