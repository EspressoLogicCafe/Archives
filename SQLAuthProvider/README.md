SQLAuthProvider
===============
This was desinged for MySQL - change the Java code for the driver and copy the driver JAR to target/lib
You will need to modify your SQL Query to reflect the table that has Usernames and Passwords.  If you need to add encoding, you can modify the Java file and the JavaScript.

###Java Sample###
com.espressologic.authentication.sql.SQLAuthProvider



###Building###

1. Clone the repo using `git clone --recurse-submodules https://github.com/EspressoLogicCafe/SQLAuthProvider.git`.
2. `mvn clean install`

###Sample SQL###
CREATE TABLE `role` (
  `roleName` varchar(10) NOT NULL,
  PRIMARY KEY (`roleName`)
)

CREATE TABLE `user` (
  `loginName` varchar(25) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`loginName`)
)
CREATE TABLE `user_role` (
  `username` varchar(25) NOT NULL,
  `roleName` varchar(10) NOT NULL,
  PRIMARY KEY (`username`,`roleName`)
)


###Test###
Edit this file for SQL Query, and usernames, and passwords
test.js

Run this (Windows) command - 
startSQLAuthServer.cmd

