[[ -x /usr/libexec/java_home ]] && export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)

java8() {
   export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
}

java7() {
   export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
}

java6() {
   export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)
}
