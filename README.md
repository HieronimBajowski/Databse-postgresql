# Databse Postgresql
Weather data, analysis using postgresql 17

# FIRST STEP, GET POSTGRESQL
1. Download PostgreSQL

    Go to https://www.postgresql.org/download/.
    Select Windows and download the installer.(If you are not using windows, choose version for your system)

2. Run the Installer

    Double-click the installer and follow the steps:
        Choose installation and data directories.
        Set a password for the postgres superuser.
        Use default port 5432 unless there’s a conflict.

3. Verify Installation

    Open pgAdmin from the Start Menu.
    Add a server connection:
        Host: localhost
        Port: 5432
        Username: postgres
        Password: the one you set.

# SECOND STEP, CREATING DATABASE IN PGADMIN

1. Open pgAdmin.

2. Servers/PostgreSQL 17/Databases/postgres press tools/query tools.

3. Type new query "CREATE DATABASE weather;" press "execute query" button or press keys combination ALT+F5.

4. Right click on Servers/PostgreSQL 17/Databases right click and press "Refresh" and our new Database should show up.
   
![obraz](https://github.com/user-attachments/assets/042be10b-be29-4307-b293-5e9f18acdd1c)

# THIRD STEP, CREATING TABLES IN DATABASE

1.Servers/PostgreSQL 17/Databases/weather(or name of your database) tools/query tools.(New query now will work on our database.)

2.Now user your querys to create tables.

![obraz](https://github.com/user-attachments/assets/d99f9e51-4b3c-4172-9c50-cbca3df10533)

3.Refresh your database go to schema/tables and you should see your tables.

![obraz](https://github.com/user-attachments/assets/0a140f67-1e3b-492b-9591-7e21e31282a8)

# FOURTH STEP, IMPORT YOUR DATA/VALUES INTO TABLES

1.Servers/PostgreSQL 17/Databases/weather/schema/tables right click on your table name press 'import/export data' and choose the file path for your CSV file.

![obraz](https://github.com/user-attachments/assets/a15bdcb8-66e6-42dd-9809-18bffb50ce3e)

![obraz](https://github.com/user-attachments/assets/c70c2400-bc53-4f9d-bb87-73e6ed920166)

2.Repeat first point with every table you have in your database.

3.To make sure everything is alright execute this query "SELECT * FROM weather_statistics, weather, locations LIMIT 2" it will show first two rows in our tables so we can see if there are no errors.
