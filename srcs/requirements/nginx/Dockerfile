FROM debian:buster

# Install NGINX and other dependencies
RUN apt-get update \
    && apt-get install -y nginx \
    && rm -rf /var/lib/apt/lists/*

# Copy your custom NGINX configuration file
COPY ./conf/file.conf /etc/nginx/nginx.conf

# Copy SSL certificate and key files
#COPY ssl/nginx.crt /etc/nginx/ssl/nginx.crt
#COPY ssl/nginx.key /etc/nginx/ssl/nginx.key

# Expose ports
EXPOSE 80
EXPOSE 443

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]