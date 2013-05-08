#!/bin/sh
############################################################
#             WenQuanYi Font Packaging System
#
#  wqydebmkdir.sh: script to create deb packaging folder structure
#
#  Author: Qianqian Fang <fangq at nmr.mgh.harvard.edu>
#  History:  
#      2009/05/26    Initial version for MicroHei
#
############################################################ 

if [ $# -ne 1 ]; then
     echo 1>&2 Usage: $0 package-name
     exit 2
fi

PKGNAME=$1
   
mkdir -p debian/usr/share/fonts/wenquanyi/$PKGNAME
mkdir -p debian/usr/share/doc/wenquanyi/$PKGNAME
mkdir -p debian/DEBIAN/
