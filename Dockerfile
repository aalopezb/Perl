FROM perl:latest

# Install necessary dependencies, such as Nginx and the CGI module for Perl
RUN apt-get update && apt-get install -y nginx libcgi-pm-perl \
    && cpan CGI


# Set the working directory for web files
WORKDIR /var/www/html

# Copy the Perl script to the container
COPY app.pl /var/www/html/app.pl

# Copy the Nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the index.html file to the container
COPY index.html /var/www/html/index.html

# Expose port 80 for Nginx
EXPOSE 80

# Run Nginx in the background and the Perl script
CMD service nginx start && tail -f /dev/null