@echo off
setlocal
set MVNW_DIR=%~dp0
set MAVEN_PROJECTBASEDIR=%MVNW_DIR%
set JAVA_CMD=%JAVA_HOME%\bin\java.exe
if not exist "%JAVA_CMD%" set JAVA_CMD=java
"%JAVA_CMD%" -Dmaven.multiModuleProjectDirectory=%MAVEN_PROJECTBASEDIR% -classpath "%MVNW_DIR%\.mvn\wrapper\maven-wrapper.jar" org.apache.maven.wrapper.MavenWrapperMain %*
endlocal
