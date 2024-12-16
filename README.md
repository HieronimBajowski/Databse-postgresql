# Databse Postgresql
Weather data, analysis using postgresql

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
2. Servers/PostgreSQL 17/postgres press tools/query tools.
3. Type new query "CREATE DATABASE weather;" press "execute query" button or press keys combination ALT+F5
![obraz](https://github.com/user-attachments/assets/042be10b-be29-4307-b293-5e9f18acdd1c)

