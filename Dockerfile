h# Use the official Nginx base image
FROM nginx:latest

# Copy custom content to the default Nginx content directory
COPY index.html /usr/share/nginx/html/

# Copy custom Nginx configuration (optional)
# Uncomment the following line if you have a custom nginx.conf
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 for the web server
EXPOSE 80

# Default command to start Nginx
CMD ["nginx", "-g", "daemon off;"]
