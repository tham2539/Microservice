FROM php:8.2-cli
WORKDIR /app
# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
# b. Package Manager & c. Dependency File
COPY composer.* ./
RUN composer install
# a. Source Code
COPY . .
# d. App Runtime
CMD ["php", "server.php", "start"]
