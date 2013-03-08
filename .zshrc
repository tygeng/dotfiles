#PS1="\[\e[1;32m\]\t \w \$\[\e[0m\] "
#zsh below
setopt extendedglob
autoload -U colors && colors
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
alias go='gnome-open'
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
cl()
{
	cd $1 && ls --color=auto $2
}
#alias vim='gvim'
alias cdd='cl /media/sda3/Dropbox'
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

alias cds='cl /media/sda3/Dropbox/VT_CS/Semester_8/'
alias cdf='cl /media/sda3/Dropbox/FINANCE/'
alias cdi='cl /media/sda3/Dropbox/ideas/'
alias cdg='cl /media/sda3/Dropbox/git/'
alias mv='mv -i'
alias cp='cp -i'
alias gc='gcalcli'
#export LANG=C
submit() {
	/media/sda3/Dropbox/VT_CS/Semester_8/cs3214/submit.pl $1 $2
}
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
ZLS_COLORS="no=00:fi=00:di=01;34:ln=01;36:\ 
pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:\ 
or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:\ 
*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:\ 
*.z=01;31:*.Z=01;31:*.gz=01;31:*.deb=01;31:\ 
*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.ppm=01;35:\ 
*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:\ 
*.mpg=01;37:*.avi=01;37:*.gl=01;37:*.dl=01;37:"

g() {
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
		rlogin_dir=".";
	else
		rlogin_dir=$2;

	fi
	scp -r tony1@rlogin.cs.vt.edu:$1 $rlogin_dir
}
