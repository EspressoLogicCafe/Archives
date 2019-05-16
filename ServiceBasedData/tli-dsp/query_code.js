print("Begin RESTMashUp getByquery" + entityName);
var RestCaller = Java.type("com.kahuna.logic.lib.rest.RestCaller");
var restCaller = new RestCaller();
var response = restCaller.get("http://dev-derby.expressologic.com/rest/default/demo/v1/"+entityName, null, connection);


print("End RESTMashUp getByquery" + entityName + " responseObj::" +response);
return response;
