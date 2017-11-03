# Alpine Nginx PHP MySQL Redis

Docker running Nginx, PHP-FPM, MySQL and Redis From Alpine.

### Packages
- Nginx (1.12.2)
- PHP-FPM (7.1.9)
- MySQL (MariaDB 10.1.26)
- Redis (3.2.8)

### Project tree
```
├── conf
│   ├── gogs
│   │   └── app.ini
│   ├── mysql
│   │   └── my.cnf
│   ├── nginx
│   │   ├── conf.d
│   │   │   ├── local.gogs.yadgen.com.conf
│   │   │   └── localhost.conf
│   │   └── nginx.conf
│   ├── php
│   │   ├── php-fpm.conf
│   │   ├── php-fpm.d
│   │   │   └── www.conf
│   │   └── php.ini
│   └── redis
│       └── redis_6379.conf
├── data
│   ├── gogs
│   │   ├── attachements
│   │   ├── avatars
│   │   └── git
│   ├── mysql
│   └── redis
├── docker
│   ├── README.md
│   ├── alpine
│   │   ├── Dockerfile
│   │   └── build.sh
│   ├── docker-compose.yml
│   ├── gogs
│   │   ├── Dockerfile
│   │   └── build.sh
│   ├── mysql
│   │   ├── Dockerfile
│   │   ├── build.sh
│   │   └── docker-entrypoint.sh
│   ├── nginx
│   │   ├── Dockerfile
│   │   └── build.sh
│   ├── php
│   │   ├── Dockerfile
│   │   ├── build.sh
│   │   └── build_swoole_so.sh
│   ├── push_images.sh
│   └── redis
│       ├── Dockerfile
│       └── build.sh
├── html
│   ├── index.php
│   └── phpinfo.php
└── log
    ├── gogs
    │   └── gogs.log
    ├── mysql
    │   ├── mysql-slow.log
    │   └── mysql.err
    ├── nginx
    │   ├── access.log
    │   ├── error.log
    │   ├── localhost.access.log
    │   └── localhost.error.log
    ├── php
    │   ├── php-fpm.log
    │   └── www.log.slow
    └── redis
        └── redis_6379.log
```

### Ports
Server  | Port
--------| -----
Nginx   | 80
PHP-FPM | 9000
MySQL   | 3306
Redis   | 6379

### Installation
```
docker-compose build && docker-compose up -d
```