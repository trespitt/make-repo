#!/bin/bash

# make sure you change tres-pitt to your github username

b='init'
if [ $# -eq 0 ]
  then
	CURRENT=`pwd`
	BASENAME=`basename "$CURRENT"`

	b="$BASENAME"
  else
  	b=$1
fi

a='{"name":"'$b'"}'
curl -u 'tres-pitt' https://api.github.com/user/repos -d $a
git remote add origin 'git@github.com:trespitt/'$1'.git'
git push origin master


# http://stackoverflow.com/questions/2423777/is-it-possible-to-create-a-remote-repo-on-github-from-the-cli-without-opening-br
# http://stackoverflow.com/questions/1371261/get-current-directory-name-without-full-path-in-bash-script
