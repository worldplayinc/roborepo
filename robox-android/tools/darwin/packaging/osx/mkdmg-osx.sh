#!/bin/sh

# usage: ./mkdmg-osx.sh release/debug (case insensitive)
# Allows us to run mkdmg-osx.sh from anywhere in the three, rather than the tools/darwin/packaging/osx folder only
SWITCH=`echo $1 | tr [A-Z] [a-z]`
DIRNAME=`dirname $0`

if [ ${SWITCH:-""} = "debug" ]; then
  echo "Packaging Debug target for OSX"
  APP="$DIRNAME/../../../../build/Debug/RoBoXTV.app"
elif [ ${SWITCH:-""} = "release" ]; then
  echo "Packaging Release target for OSX"
  APP="$DIRNAME/../../../../build/Release/RoBoXTV.app"
else
  echo "You need to specify the build target"
  exit 1 
fi

if [ ! -d $APP ]; then
  echo "RoBoXTV.app not found! are you sure you built $1 target?"
  exit 1
fi
ARCHITECTURE=`file $APP/Contents/MacOS/RoBoXTV | awk '{print $NF}'`

PACKAGE=org.xbmc.roboxtv-osx

VERSION=1.0
REVISION=0

if [ "beta1" != "" ]; then
  REVISION=$REVISION~beta1
fi

ARCHIVE=${PACKAGE}_${VERSION}-${REVISION}_macosx-intel-${ARCHITECTURE}

echo Creating $PACKAGE package version $VERSION revision $REVISION
${SUDO} rm -rf $DIRNAME/$ARCHIVE

if [ -e "/Volumes/$ARCHIVE" ]
then 
  umount /Volumes/$ARCHIVE
fi

#generate volume iconset
if [ `which iconutil` ]
then
  echo "Generating volumeIcon.icns"
  iconutil -c icns --output "VolumeIcon.icns" "../media/osx/volumeIcon.iconset"
fi

$DIRNAME/dmgmaker.pl $APP $ARCHIVE

echo "done"
