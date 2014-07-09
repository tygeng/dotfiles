# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$PATH:$HOME/bin"
	PATH="/usr/local/Trolltech/Qt-4.8.4/bin:$PATH:/home/tony1/dev/scheme/racket/bin:/home/tony1/dev/java/jdk1.7.0_21/bin:/usr/local/texlive/2013/bin/x86_64-linux:."
	export PATH
fi
PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig
export PKG_CONFIG_PATH
CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/usr/local/include
export CPLUS_INCLUDE_PATH
MANPATH=`manpath`
MANPATH=$MANPATH:/home/tony1/dev/java/jdk1.7.0_21/man:/usr/local/texlive/2013/texmf-dist/doc/man 
export MANPATH
JAVA_HOME='/home/tony1/dev/java/jdk1.7.0_21'
export JAVA_HOME
