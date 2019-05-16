RESTAuthProvider
===================

This is an example REST authentication provider for CA Live API Creator- it uses a predefined apiKey to make REST calls to authenticate users and roles

###Building###

1. Clone the repo using `git clone --recurse-submodules https://github.com/EspressoLogicCafe/RESTSqlAuthProvider.git`.
2. `mvn clean install`
3. ./test.sh

###Setup###
Modify the rest URLs in test.js to match your own Jetty project (the default is setup for NorthWind)
Create a special Auth Token (aka apikey) with ReadOnly access to your User_Role view
Modify the JavaScript to match your column names of your User Table and the Role column names - this uses the first and last name from the Employees REST Service
Load the JavaScript library into Live API Creator [API Project>Libraries>Your Library]
Create a new Authentication provider (Home>>Authentication Provider) 
Configure the Authentication Provider in API Project>Settings chose your new Authentication Provider


###Tesing locally###
 
c:>startRESTSQLAuthServer.cmd (windows)

$./test.sh (Linux)


