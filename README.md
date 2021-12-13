# HHA 504 End to End (E2E) Final Assignment

## Assignment Details
### Setup and deploy an ubuntu sever using Azure.
### Set it up without a .pem file and install mysql
### Create a mysql users and create a new database
### Write a python script to connect to the sql instance
### Create a dump file
### Using the scp command move the file to your local computer
### Create a trigger

# Instructions
## Part 1: Creating and Connecting to the Virtual Machine
### Create a Virtual Machine on Azure for Students
### Once launched make sure to go to networking and add inbound security rule
#### Service: MySQL for destination port 3306
### From your computer terminal or using replit create a bash terminal instance to users
### Connect to your Virtual Machine
#### Use [ssh username@ipaddress] 
##### ignore brackets []
#### Username is the one created when creating the Virtual Machine and the IP is the Public IP Provdided by the VM
### Update the Ubuntu Server
#### [sudo apt-get update]

## Part 2: MySQL
### Install MySQL
#### [sudo apt install mysql-server mysql-client]
### Log into MySQL
#### sudo mysql
### Create a new user to connect without
#### [create user 'username'@'%' identified by 'password']
### Confirm new user
#### [select user from mysql.user;]
### Grant Privilegs to new user
#### [grant all privileges on *.* to 'dba'@'%' with grant option;]
### Confirm privileges
#### [show grants for dba;]
### Test user connection
#### [mysql -u dba -p]
### Create database
#### [create database e2e;]

## Part 3: Connecting via python
### Look at the Google Colab Notebook
### Try to connect 
### Connection will be refused

## Part 4: Fixing Connection Error
### Edit CNF file
#### [sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf]
#### Ctrl + I to go into edit mode
#### Change Bind Address and Mysqlx Bind Address to 0.0.0.0
#### Ctrl + O and then Enter to save
#### Ctrl + X to exit
### Restart Mysql for changes to occur
#### [/etc/init.d/mysql restart]
### Try connecting again from part 3 code
### Load CSV file

## Part 5: Back to MySQL
### Log back into terminal from Part 1
### Look at the uploaded data on the database
#### [show databases;]
#### [use e2e;]
#### [show tables;]
#### [select * from H1N1 limit 5;]
### This can also be done connecting via MySQLWorkbench
