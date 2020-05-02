@ECHO OFF
set MAVEN_OPTS="-Xmx1G"
IF %1.==. (
    mvn -B -T 8 clean install javadoc:jar deploy
) ELSE (
    mvn -B -T 8 %*
)