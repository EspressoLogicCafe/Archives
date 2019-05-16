print("Begin RESTMashUp getConfigInfoCode()");
var configInfo = {};

configInfo.ui_config = [
    {
        display: "Auht Key",
        type: "string",
        length: 100,
        required: true,
        parameterName: "authKey",
        placeholder: "Authorization",
        description: "Authorized Access Key for your REST Swagger."
    }
];

// Environment
configInfo.env =  {
    System: Java.type("java.lang.System"),
    KahunaException: Java.type("com.kahuna.server.KahunaException"),
};

// Capabilities
configInfo.options = {
    canCommit: false,
    isTabular: true
};

print("END RESTMashUp getConfigInfoCode()");
return configInfo;
