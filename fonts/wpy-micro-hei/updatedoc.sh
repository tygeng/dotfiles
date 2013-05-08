#!/bin/sh
VER=BigBang
lynx -dump "http://wenq.org/index.cgi?keywords=MicroHei_${VER}_README&raw=1" > README.txt
lynx -dump -width 100 "http://wenq.org/index.cgi?keywords=MicroHei_${VER}_ChangeLog&raw=1" > ChangeLog.txt
lynx -dump "http://wenq.org/index.cgi?keywords=MicroHei_${VER}_INSTALL&raw=1" > INSTALL.txt
lynx -dump "http://wenq.org/index.cgi?keywords=MicroHei_${VER}_AUTHORS&raw=1" > AUTHORS.txt

perl -pi -e 's/<\/*pre>//g' README.txt ChangeLog.txt INSTALL.txt AUTHORS.txt
