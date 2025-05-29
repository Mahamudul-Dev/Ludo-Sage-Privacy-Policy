# Use a lightweight Nginx image
FROM nginx:alpine

# Remove default Nginx static content
RUN rm -rf /usr/share/nginx/html/*

# Copy our custom static site
COPY . /usr/share/nginx/html

# Expose the default Nginx port
EXPOSE 80
