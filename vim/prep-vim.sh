rsync -razh --progress --exclude=.git --exclude=.last_entered_dir -L vim_folder_basic vimrc-basic vimrc-advanced $1:~/
ssh $1 'mv vimrc-basic .vimrc-basic; mv vimrc-advanced .vimrc-advanced; mv ~/vim_folder_basic ~/.vim; echo "source ~/.vimrc-basic
source ~/.vimrc-advanced" > .vimrc'
