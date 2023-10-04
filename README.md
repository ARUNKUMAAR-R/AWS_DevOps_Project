# AWS_DevOps_Project
A littel glipmse about my Java Project

Prerequisites

    JDK 8 or later
    Maven 3 or later
    MySQL 5.6 or later

Technologies & Tools

    Git
    Jenkins
    Maven
    SonarQube
    Nexus
    Spring MVC
    Spring Security
    Spring Data JPA
    Slack
    JSP
    MySQL

Database

Here,I used MARIADB Installation Steps for AMAZON Linux2 :

    $ sudo yum update
    $ sudo yum install mariadb -y

Then look for the file :

    /src/main/resources/db_backup.sql
    db_backup file is a mysql dump file.we have to import this dump to mysql db server

        mysql -h <Host-ip> -u <user_name> -p accounts < db_backup.sql

