rm ~/.vimrc
rm -r ~/.vim 
rm -r ~/vimscripts
ln -s `pwd`/.vimrc ~/
ln -sd `pwd`/.vim ~/
ln -sd `pwd`/vimscripts ~/

