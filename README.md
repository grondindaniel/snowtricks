Build with Symfony 5, PHP 7.4, MacOs Server

git clone https://github.com/grondindaniel/snowtricks.git

composer install

in .env file, configure the database connexion (change db_user and db_password with your own credentials). Think to change prod to dev if you want make tests.

DATABASE_URL=mysql://db_user:db_password@127.0.0.1:3306/snowtrick?serverVersion=5.7

Next :

symfony console doctrine:database:create

Import snowtrick.sql

in .env file, uncomment MAILER_DSN and configure it with your own credentials.

In a terminal lunch a new server with the command :

symfony server:start -d 

Paste the url in a browser.

Log in with username: root and password: password


Finish ! You are now the admin and you have all the permissions  for CRUD.

