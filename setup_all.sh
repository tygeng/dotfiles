lesskey ./.lesskey
files=`find -maxdepth 1 -type f |grep "^\./\..*"`
for file in $files
do
	rm -f ~/$file
	ln -s `pwd`/$file ~/
done
execs=`find ./bin -maxdepth 1 -type f`
for file in $execs
do
	rm -f ~/$file
	ln -s `pwd`/$file ~/$file
done
for dir in  $(find  -maxdepth 1 -type d )
do
	if [ -f $dir/setup.sh ]
	then
		cd $dir
	    bash setup.sh
		cd ..
	fi
done
rm ~/.ssh
ln -sd `pwd`/../.ssh ~/
