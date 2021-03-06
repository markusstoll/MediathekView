#!/bin/sh
#
# Wenn der Arbeitsspeicher knapp ist, kann das helfen:
# java -Xdock:name="MediathekView" -Xms128M -Xmx1G -jar ./MediathekView.jar $*

dir=`dirname "$0"`
cd "$dir"

if [ -f ../MediathekView.jar ]; then
   cd ..
fi

if [ -n "$JAVA_HOME" ]; then
   $JAVA_HOME/bin/java -Xdock:name="MediathekView" -jar ./MediathekView.jar Einstellungen/.mediathek3 $*
else
   java -Xdock:name="MediathekView" -jar ./MediathekView.jar Einstellungen/.mediathek3 $*
fi
cd $OLDPWD

