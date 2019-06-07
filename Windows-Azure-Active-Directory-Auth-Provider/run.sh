CLASSPATH=${CLASSPATH}:target/classes \
CLASSPATH=${CLASSPATH}:target/lib/activation-1.1.jar \
#MICROSOFT AAD Library
CLASSPATH=${CLASSPATH}:target/lib/adal4j-0.0.2.jar \
CLASSPATH=${CLASSPATH}:target/lib/nimbus-jose-jwt-4.12.jar \
CLASSPATH=${CLASSPATH}:target/lib/oauth2-oidc-sdk-4.5.jar \
CLASSPATH=${CLASSPATH}:target/lib/commons-collections4-4.1.jar \
CLASSPATH=${CLASSPATH}:target/lib/commons-codec-1.6.jar \
CLASSPATH=${CLASSPATH}:target/lib/commons-lang3-3.4.jar \
CLASSPATH=${CLASSPATH}:target/lib/commons-logging-1.1.1.jar \
CLASSPATH=${CLASSPATH}:target/lib/gson-2.2.4.jar \
CLASSPATH=${CLASSPATH}:target/lib/httpclient-4.2.5.jar \
CLASSPATH=${CLASSPATH}:target/lib/httpcore-4.2.4.jar \
CLASSPATH=${CLASSPATH}:target/lib/jcip-annotations-1.0.jar \
CLASSPATH=${CLASSPATH}:target/lib/json-20090211.jar \
CLASSPATH=${CLASSPATH}:target/lib/json-smart-1.3.1.jar \
CLASSPATH=${CLASSPATH}:target/lib/lang-tag-1.4.jar \
CLASSPATH=${CLASSPATH}:target/lib/log4j-1.2.17.jar \
CLASSPATH=${CLASSPATH}:target/lib/mail-1.4.7.jar \
CLASSPATH=${CLASSPATH}:target/java-property-utils-1.10.jar \
CLASSPATH=${CLASSPATH}:target/lib/rhino-1.7R4.jar \
CLASSPATH=${CLASSPATH}:target/lib/slf4j-api-1.7.5.jar \
CLASSPATH=${CLASSPATH}:target/lib/slf4j-log4j12-1.7.5.jar \
##java -cp %cp% org.mozilla.javascript.tools.shell.Main test.js
#java -cp ${CLASSPATH} org.mozilla.javascript.tools.shell.Main getLogonInfoTest.js

java -cp ${CLASSPATH} org.mozilla.javascript.tools.shell.Main test.js