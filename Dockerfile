# Use a base image of Perl
FROM perl:latest

# Install the CGI module required for running the Perl script
RUN cpan install CGI

# Copy the Perl script and the HTML file to the container
COPY hello_world.pl /usr/local/bin/hello_world.pl

# Expose port 80 (the default port for Nginx)
EXPOSE 80

# Command to run the Perl script with Nginx
CMD ["perl", "/usr/local/bin/hello_world.pl"]
