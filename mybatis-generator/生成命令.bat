@echo on
if not exist src\main\java  md src\main\java
del src\main\java\* /q /f /s 
java -jar mybatis-generator-core-1.3.5.jar -configfile generatorConfig.xml -overwrite
echo. & pause