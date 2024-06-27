# Use a base image with nginx pre-installed
FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy static files (HTML, CSS) to nginx directory
COPY sourcecode/index.html /usr/share/nginx/html/
COPY sourcecode/styles.css /usr/share/nginx/html/


# Copy nginx configuration file (optional, modify as needed)
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Command to start nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
