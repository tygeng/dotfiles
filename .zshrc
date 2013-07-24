#PS1="\[\e[1;32m\]\t \w \$\[\e[0m\] "
#zsh below
setopt extendedglob
autoload -U colors && colors
autoload -U compinit promptinit
compinit
promptinit
setopt completealiases
eval `dircolors /media/sda3/Dropbox/productivity/colors`
PS1="%{$fg_bold[green]%}%T %{$fg_bold[yellow]%}%~%{$fg[green]%} $%{$reset_color%} "
# PS1="[%{$fg_bold[green]%}%T%{$reset_color%}] %{$fg_bold[yellow]%}%~%{$fg[green]%} $%{$fg[red]%} "
HISTFILE=$HOME/.zhistory
setopt INC_APPEND_HISTORY
HISTSIZE=1200
SAVEHIST=1000
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY
export PYTHONSTARTUP='/media/sda3/Dropbox/productivity/python/pythonstartup'
#PATH="/usr/java/jdk1.7.0_09/bin:$PATH:/home/tony1/bin:." 
alias ls='ls --color=auto'
# alias go='ssid gnome-open'
go()
{
    ssid gnome-open $@ 12> /dev/null
    sleep 0.5

}
alias lgn='ssh rlogin.cs.vt.edu'
alias lgng='ssh tincan6.cs.vt.edu'
# alias lgnb='ssh CS4414S13@bio.cs.vt.edu'
lgnb()
{
	ssh CS4414S13@bio.cs.vt.edu
}
alias gcc='gcc'
alias compa='gcc -std=c99 -o ${PWD##*/} *.c *.o'
alias compac='gcc -o ${PWD##*/} *.c'
alias gdbcompac='gcc -std=c99 -O0 -ggdb3 -m32 -o ${PWD##*/} *.c && gdb ${PWD##*/}'
alias gdbcompa='gcc -std=c99 -O0 -ggdb3 -m32 -o ${PWD##*/} *.c *.o && gdb ${PWD##*/}'
alias dddcompac='gcc -std=c99 -O0 -ggdb3 -m32 -o ${PWD##*/} *.c && ddd ${PWD##*/}'
alias cdcs='cl /home/tony1/CS2506'
alias tree='tree -C'
alias treel='tree -C|less -R'
alias ll='ls -l --color=auto -h'
alias SS='echo \(  `sselp`  \);eval `sselp`'
alias mm='sudo fdisk -l | grep "sd[bcde]" && echo "================= MOUNTED =================" &&  mount|grep "sd[bcde]"|awk "{print \$1 \" ==> \" \$3}"'
alias mat='matlab -nodesktop'
alias -g xclip='xclip -selection c'
alias pig='~/dev/pig/pig-0.11.1/bin/pig -x local'
m()
{
    udisks --mount /dev/sd$1
}
um()
{
    udisks --unmount /dev/sd$1
}
ffo()
{
    ssid firefox `pwd`/$@
}
cl()
{
	cd $1 && ls --color=auto $2
    echo $PWD>~/.current_pwd
}
cdlast() {
    current_pwd=`cat ~/.current_pwd`
    cl $current_pwd
}
sside() {
    ssid $@&&exit
}
#alias vim='gvim'
alias sus='sudo pm-suspend'
alias shut='sudo shutdown -h 0'
# alias fan='sudo -S thinkfan <<<z1x2c3v4
# '
alias hiber='sudo pm-hibernate'
alias rbt='sudo reboot'
alias d='mysdcv'
alias gvim='vim -g'
alias cd='cl'
mysdcv()
{
	result=`sdcv $1 <<< -1`
	if [[ $result = Found\ [12]\ items* ]];	then
		perl ~/bin/sdcv-color <<< "$result"
	else
		more <<< "$result"
	fi
}

alias cdd='cl /media/sda3/Dropbox'
alias cddl='cl ~/Dropbox'
alias cds='cl ~/Dropbox/Semester_8/'
alias cdf='cl /media/sda3/Dropbox/FINANCE/'
alias cdi='cl ~/Dropbox/ideas/'
alias cdg='cl ~/Dropbox/git/'
alias cdq='cl /media/sda3/Dropbox/思琪/'
alias mv='mv -i'
alias cp='cp -i'
alias gc='gcalcli'
#export LANG=C
submit() {
	~/Dropbox/Semester_8/cs3214/submit.pl $1 $2
}
# zsh completion
zmodload -i zsh/complist
zstyle ':completion:*' menu select=2
zstyle ':completion:*' list-colors ''

# zmodload zsh/complist
bindkey -M menuselect ' ' accept-and-infer-next-history
bindkey -M menuselect '^?' undo

if [[ ${+debian_missing_features} == 1 ]]
then
        function zle-line-init () {
        }
        function zle-line-finish () {
        }
fi
[[ -n "${key[PageUp]}"   ]]  && bindkey  "${key[PageUp]}"    history-beginning-search-backward
[[ -n "${key[PageDown]}" ]]  && bindkey  "${key[PageDown]}"  history-beginning-search-forward
## case-insensitive (all),partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' \
    'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

ZLS_COLORS="no=00:fi=00:di=01;34:ln=01;36:\ 
pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:\ 
or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:\ 
*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:\ 
*.z=01;31:*.Z=01;31:*.gz=01;31:*.deb=01;31:\ 
*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.ppm=01;35:\ 
*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:\ 
*.mpg=01;37:*.avi=01;37:*.gl=01;37:*.dl=01;37:"
# end of zsh completion

google() {
    search=""
    echo "Googling: $@"
    for term in $@; do
        search="$search%20$term"
    done
    w3m "http://www.google.com/search?q=$search"
}
putr() {
	scp -r $1 tony1@rlogin.cs.vt.edu:$2
}
getr() {
	if [[ $2 == "" ]]; then
		local_dir=".";
	else
		local_dir=$2;

	fi
	scp -r tony1@rlogin.cs.vt.edu:$1 $local_dir
}
putb() {
	scp -r $1 CS4414S13@bio.cs.vt.edu:$2
}
getb() {
	if [[ $2 == "" ]]; then
		local_dir=".";
	else
		local_dir=$2;

	fi
	scp -r CS4414S13@bio.cs.vt.edu:~/SVD1/$1 $local_dir
}
source ~/bin/bashmarks.sh 
