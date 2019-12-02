/* Screenshots */

Please find screenshots in Screenshots folder

/* Technologies used */

Command: ruby -v
ruby 2.6.5p114 (2019-10-01 revision 67812) [x86_64-linux]
Command: rails -v
Rails 6.0.1
Command: vue -V
@vue/cli 4.0.5
Command: mysql --version
mysql  Ver 14.14 Distrib 5.7.28, for Linux (x86_64) using  EditLine wrapper

/* Database Prerequisites */

create database Matches_development;
create user Matches_user identified by 'password';
grant all privileges on Matches_development.* to Matches_user;
use Matches_development;
/* matches tables is created using rails */
LOAD DATA LOCAL INFILE '/location/to/matches2d4c40a.csv' INTO TABLE matches FIELDS TERMINATED BY ',';

/* Rails prerequisites */

Enter into rails folder & run following command
bundle install
rake db:migrate
rails s

Please open http://localhost:3000/matches - to see the api response

/* VueJS prerequisites */

Enter into VueJS folder & runt he following commands
cd /path/to/package
npm init
npm run serve

Please open http://localhost:8080 - to access the UI

/* Features Implemented */

1. Created an API to perform CRUD operations(matches2d4c40a.csv)
    GET - Retreive the matches info
    PUT - Update an record in match
    POST - Create an new match
    DELETE - delete an record for DB     
2. Authentication to API and generated an authentication token to use the API
    Email: xseed@codingchallenge.com
    AuthToken: W59hTDGHVysjgajyoK_5
    Please refer to screenshot 12_API_User_Creation.jpeg for creating your own user
3. Implemented an UI for matches info with pagination
4. Implemented search functionality on field team1
5. Implemented CRUD operations through UI
 
