# Laravel Docker Development Environment

This project provides a comprehensive Docker-based development environment for Laravel applications. It includes everything you need to get started with Laravel development quickly and efficiently.

## Features

- **Nginx** web server
- **PHP 8.3** with FPM
- **PostgreSQL** database
- **pgAdmin** for database management
- **Redis** for caching
- **Composer** for PHP dependency management
- **Artisan** command-line interface
- **Scheduler** for running scheduled tasks
- **MailHog** for email testing

## Prerequisites

- Docker
- Docker Compose

## Getting Started

1. Clone this repository:
   ```
   git clone https://github.com/Q-efx/laravel-dev-container-compose.git
   laravel-dev-container-compose
   ```

2. Build and start the Docker containers:
   ```
   docker-compose up -d --build
   ```

3. Install PHP dependencies:
   ```
   docker-compose run --rm composer install
   ```

4. Generate the application key:
   ```
   docker-compose run --rm artisan key:generate
   ```

5. Access your Laravel application at `http://localhost:8080`

## Services

- **Web Server**: Nginx (Port 8080)
- **PHP**: PHP-FPM 8.3
- **Database**: PostgreSQL (Port 15432)
- **Database Admin**: pgAdmin (Port 15433)
- **Caching**: Redis (Port 6379)
- **Mail Testing**: MailHog (SMTP Port 1025, Web UI Port 8025)

## Custom Configurations

- Nginx configuration: `nginx/default.conf`
- PHP Dockerfile: `dockerfiles/php.dockerfile`
- Composer Dockerfile: `dockerfiles/composer.dockerfile`
- Nginx Dockerfile: `dockerfiles/nginx.dockerfile`

## Environment Variables

Environment variables are stored in the `.env` file. Make sure to create this file based on `.env.example` and adjust the values as needed.

## Useful Commands

- Run Composer:
  ```
  docker-compose run --rm composer <command>
  ```

- Run Artisan commands:
  ```
  docker-compose run --rm artisan <command>
  ```

- Access the PHP container:
  ```
  docker-compose exec php sh
  ```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.