#!/bin/sh
############################################################
#             WenQuanYi Font Packaging System
#
#  wqydebcopy.sh: script to copy deb source files to the
#                 packaging folder
#
#  Author: Qianqian Fang <fangq at nmr.mgh.harvard.edu>
#  History:
#      2009/05/26    Initial version for MicroHei
#
############################################################

if [ $# -ne 2 ]; then
     echo 1>&2 Usage: $0 package-name version
     exit 2
fi

PKGNAME=$1
VERSION=$2
#INFO=`awk '/I. About this font/{dop=1;} /^$/{if(dop>0) dop++;} /./{if(dop==2) print " " $0;}' README*`

FONTDIR=debian/usr/share/fonts/wenquanyi/$PKGNAME
DOCDIR=debian/usr/share/doc/wenquanyi/$PKGNAME

if [ ! -d $FONTDIR ]; then
     echo 1>&2 $FONTDIR does not exist, please run makewqydebdir.sh first
     exit 2
fi

cp -a AUTHORS* $DOCDIR
cp -a ChangeLog* $DOCDIR
cp -a INSTALL* $DOCDIR
cp -a README* $DOCDIR

cp -a $PKGNAME.* $FONTDIR
cp -a LICENSE* $FONTDIR
[ -d debsrc ] && cp -a debsrc/* debian/DEBIAN/
sed -i "s/%NAME%/$PKGNAME/g"  debian/DEBIAN/*
sed -i "s/%VERSION%/$VERSION/g"  debian/DEBIAN/*

#sed -i "s/%INFO%/$INFO/g"  debian/DEBIAN/control
#sed -i "s/^&/\n/g"  debian/DEBIAN/control
awk '/I. About this font/{dop=1;} /^$/{if(dop>0) dop++;} /./{if(dop==2) print " " $0;}' README* >> debian/DEBIAN/control
