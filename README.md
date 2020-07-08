# library_management_practice

## Install Guide
- cd library_webapplication
- compser update
- composer dump-autoload

Add new .env file
.env.demo is my .env demo (I recommend using your new .env file)
Create new empty database BD_DATABASE
Use our DB file: libra.sql
Add new your BD_DATABASE, DB_USERNAME, DB_PASSWORD
You need generate new APP_KEY with command
- php artisan key:ganerate

Accout for test
- admin: admin@admin.com
- user: user@user.com
- password for all account: 123123123
