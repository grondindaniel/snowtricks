git clone https://github.com/grondindaniel/snowtricks.git

composer install

in .env file, configure the database connexion (change db_user and db_password with your own credentials)

DATABASE_URL=mysql://db_user:db_password@127.0.0.1:3306/snowtrick?serverVersion=5.7

Next :

symfony console doctrine:database:create

symfony console make:migration

symfony console doctrine:migrations:migrate

in .env file, uncomment MAILER_DSN and configure it with your own credentials.

In a terminal lunch a new server with the command :

symfony server:start -d 

Paste the url in a browser, create a new account. By default the role is user. Go to phpmyadmin and in user table change your role to ROLE_ADMIN. 

Finish ! You are now the admin and you have all the permissions  for CRUD.

