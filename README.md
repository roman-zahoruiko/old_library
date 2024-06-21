# old_library
Old library test task

## Description
- This repository contains a Django-based library management system, designed for managing books, clients, and book loans.
- Docker Integration: Easily deploy using Docker containers for Python 2.7, PostgreSQL, and Nginx.

## Prerequisites
- Python 2.7
- Django 1.8.5
- PostgreSQL
- Docker

## Setup Instructions
1. **Clone the Repository**
```bash
git clone https://github.com/roman-zahoruiko/old_library.git old_library-roman-zahoruiko
cd old_library-roman-zahoruiko
```
2. Build and Run the Application
```bash
docker compose up -d --build
```
3. Restore Database from SQL Dump:
```bash
docker compose cp old_library.sql db:/old_library.sql
docker compose exec -it db pg_restore -U postgres -d old_library /old_library.sql
```
4. Access the Application
- Django admin page: http://localhost/admin/
- Books App: http://localhost/books/
- Test admin user:

| Username | Password | role              |
|----------|----------|-------------------|
| admin    | admin    | admin (superuser) |
