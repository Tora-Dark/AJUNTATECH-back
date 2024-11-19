FROM richarvey/nginx-php-fpm:latest

# Copiar el proyecto al contenedor
COPY . /var/www/html

# Establecer permisos para carpetas importantes
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache

# Instalar dependencias de Composer
RUN composer install --no-dev --optimize-autoloader --working-dir=/var/www/html

# Exponer el puerto 80 para NGINX
EXPOSE 80
