MAVEN_BASE_OPTS="-Xms2048m -Xmx2048m -XX:PermSize=256m -XX:MaxPermSize=512m"

export MAVEN_OPTS=$MAVEN_BASE_OPTS


function mavendebug() {
    export MAVEN_OPTS="$MAVEN_BASE_OPTS -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005"
}

function maven() {
   export MAVEN_OPTS=$MAVEN_BASE_OPTS
}
