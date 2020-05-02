#!/bin/sh
if [ -z "$1" ]; then
	mvn -B -T 8 clean install javadoc:jar deploy
else
	mvn -B -T 8 $@
fi
