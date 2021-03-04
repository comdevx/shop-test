# Shoptest

API แบบทดสอบระบบสั่งของออนไลน์

## Documents
https://documenter.getpostman.com/view/89184/Tz5iAgEE

## Installation
requires [Docker](https://www.docker.com/) and Docker compose.

## Start
```sh
docker-compose up
```

## Ports

| Name | Port |
| ------ | ------ |
| API | 3000 |
| PHPMyadmin | 8081 |
| MySQL | 3306 |

## Services

| Name | URL |
| ------ | ------ |
| Users | http://localhost:3000/users |
| Categories | http://localhost:3000/categories |
| Products | http://localhost:3000/products |
| Orders | http://localhost:3000/orders |