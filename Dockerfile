# Dockerfile

# Use the official Apache HTTP Server image as a base
FROM httpd

# Copy the contents of your website to the default Apache document root
COPY . /usr/local/apache2/htdocs

# Expose port 8888 (you can choose a different local port if needed)
EXPOSE 8888

# Start Apache in the foreground when the container starts
CMD ["httpd", "-D", "FOREGROUND"]
