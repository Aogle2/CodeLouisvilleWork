#!/bin/bash

#if [[ "$1" = "--SSH" || "$1" = "-s" ]];
#then
#	echo 'Test'
#	exit 1
#elif [[ -z "$1" ]];
#then
#	echo "Nothing is stated, this is not going to run"
#	exit 1
#fi


for repo in {1..9};
do
	if [ -d "myrepo$repo" ];
	then
		echo "myrepo$repo exist"
		cd myrepo$repo
		git add .
		git commit -m "Bash Automation"
		git push
		cd ..
		
	else
		echo "myrepo$repo does not exist"
		git clone "https://github.com/Aogle2/myrepo$repo.git"
		cp basefiles/* "myrepo$repo"

	fi
done
#add commands for the the special repos
for srepo in {1..2};
do
	if [ -d "project$srepo" ];
	then
		echo "project$srepo exist"
		cd project$srepo
		git add .
		git commit -m "Bash Automation"
		git push
		cd ..

	else
		echo "project$srepo does not exist"
		git clone "https://github.com/Aogle2/project$srepo.git"
		cp basefiles/* "project$srepo"
	fi
done

#Get the one repo that is for pscode
if [ -d "pscode-wk5" ];
then
	echo "pscode-wk5 exist"
	cd pscode-wk5
	git add .
	git commit -m "Bash Automation"
	git push
	cd ..
else
	echo "pscode-wk5"
	git clone "https://github.com/Aogle2/pscode-wk5.git"
fi


