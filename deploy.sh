#!/usr/bin/env bash
echo "Instalando dependencias con Composer..."
composer install --no-dev --working-dir=/var/www/html

echo "Generando cache de configuración..."
php artisan config:cache

echo "Generando cache de rutas..."
php artisan route:cache

echo "Ejecutando migraciones..."
php artisan migrate --force
