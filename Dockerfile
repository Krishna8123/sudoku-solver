# Use official NGINX base image
FROM nginx:alpine

# Copy your static site files to the NGINX default directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
