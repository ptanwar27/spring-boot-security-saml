cd \
cd C:\Users\CampbellD\git\spring-boot-security-saml
call mvn clean
call mvn package -U
cd target
call cf push DCJavaSpringSaml2Sample -p spring-boot-security-saml-sample-1.4.0.RELEASE.war
IF "%1"=="logs" (call bluemix app logs DCJavaSpringSaml2Sample) 
cd ..


