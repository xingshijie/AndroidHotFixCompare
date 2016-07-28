#!/bin/sh
PRG="$0"
while [ -h "$PRG" ] ; do
  ls=`ls -ld "$PRG"`
  link=`expr "$ls" : '.*-> \(.*\)$'`
  if expr "$link" : '/.*' > /dev/null; then
    PRG="$link"
  else
    PRG=`dirname "$PRG"`/"$link"
  fi
done
PRGDIR=`dirname "$PRG"`

#Keystore name: "debug.keystore"
#Keystore password: "android"
#Key alias: "androiddebugkey"
#Key password: "android"
java -Xms512m -Xmx1024m -jar apkpatch-1.0.3.jar -t app-debug.apk -f app/build/outputs/apk/app-debug.apk -o ./ -k debug.keystore -p android -a androiddebugkey -e android
##-f AndFixDemo-debug-1.0-patch.apk -t AndFixDemo-debug-1.0.apk -o ./ -k  /Users/word/AndroidStudioProjects/AndFix/debug.keystore -p android -a androiddebugkey -e android