rm ~/.vimrc
rm ~/.ycm_extra_conf.py
rm -r ~/.vim 
rm -r ~/vimscripts
ln -s `pwd`/.vimrc ~/
ln -sd `pwd`/.vim ~/
ln -sd `pwd`/vimscripts ~/
ln -s `pwd`/.ycm_extra_conf.py ~/
