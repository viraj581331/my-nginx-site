FROM nginx:latest

# Remove default nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy your site into nginx directory
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
