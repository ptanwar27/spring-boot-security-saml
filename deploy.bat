cd \
cd C:\_BlueMix\git\spring-boot-security-saml
call mvn clean
call mvn package -U
cf logout
cf login -u David.campbell@ontario.ca -p Meaghan1!!** -a https://api.ops1.ca-east.bluemix.net -o OPS-CAC-Dev1 -s "CAC-POC Functional Tests"
cd target
call cf push DCJavaSpringSaml2Sample -p spring-boot-security-saml-sample-1.4.0.RELEASE.war
IF "%1"=="logs" (call cf logs DCJavaSpringSaml2Sample) 
cd ..


