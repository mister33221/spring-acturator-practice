#!/bin/sh
# Maven Wrapper bootstrap
MVNW_DIR="$(cd "$(dirname "$0")" && pwd)"
MAVEN_PROJECTBASEDIR="$MVNW_DIR"
JAVA_CMD=${JAVA_HOME:-}/bin/java
if [ ! -x "$JAVA_CMD" ]; then
  JAVA_CMD=java
fi
exec "$JAVA_CMD" -Dmaven.multiModuleProjectDirectory="$MAVEN_PROJECTBASEDIR" \
  -classpath "$MVNW_DIR/.mvn/wrapper/maven-wrapper.jar" \
  org.apache.maven.wrapper.MavenWrapperMain "$@"
