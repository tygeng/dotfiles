# set up the color
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi
alias tmux="TERM=screen-256color-bce tmux"
if [ -z "$TMUX" ]; then
    tmux && exit
fi

alias ls='ls --color=auto'
source ~/Dropbox/dotfiles/zsh-common
eval `dircolors /media/sda3/Dropbox/productivity/colors`
export PYTHONSTARTUP='/media/sda3/Dropbox/productivity/python/pythonstartup'
go()
{
    ssid gnome-open $@ 12> /dev/null
    sleep 0.5

}
alias ll='ls -l --color=auto -h'
alias SS='echo \(  `sselp`  \);eval `sselp`'
alias mm='sudo fdisk -l | grep "sd[bcde]" && echo "================= MOUNTED =================" &&  mount|grep "sd[bcde]"|awk "{print \$1 \" ==> \" \$3}"'
alias -g xclip='xclip -selection c'
alias pig='~/dev/pig/pig-0.11.1/bin/pig -x local'
alias trm='trash-rm'
ffo()
{
    ssid firefox `pwd`/$@
}
sside() {
    ssid $@&&exit
}
alias sus='sudo pm-suspend'
alias shut='sudo shutdown -h 0'
# alias fan='sudo -S thinkfan <<<z1x2c3v4
# '
alias hiber='sudo pm-hibernate'
alias rbt='sudo reboot'
alias d='mysdcv'
alias gvim='vim -g'
mysdcv()
{
	result=`sdcv $1 <<< -1`
	if [[ $result = Found\ [12]\ items* ]];	then
		perl ~/bin/sdcv-color <<< "$result"
	else
		more <<< "$result"
	fi
}

alias lgc='ssh tygeng@128.173.237.170'
putc() {
	scp -r $1 tygeng@128.173.237.170:$2
}
getc() {
	if [[ $2 == "" ]]; then
		local_dir=".";
	else
		local_dir=$2;

	fi
	scp -r tygeng@128.173.237.170:$1 $local_dir
}
alias cdd='cl /media/sda3/Dropbox'
alias gc='gcalcli'
#export LANG=C
# zsh completion
bindkey -M menuselect ' ' accept-and-infer-next-history
bindkey -M menuselect '^?' undo
bindkey -e
# ===========================================
# GNUstep initialization
. /usr/GNUstep/System/Library/Makefiles/GNUstep.sh

alias c='noglob apcalculate'
function apcalculate {
calc -p -- $* | read temp
echo "     $temp"
echo $temp | xclip
}


# python debug
alias pydb='python -S /home/tony1/dev/python/Komodo-PythonRemoteDebugging-8.5.3-83298-linux-x86_64/pydbgp -d localhost:9000 '
