#!/bin/bash

# create a new github repo by running this script, ie bash repo.sh new-repo
# make sure you change <name> to your github username

# thanks to Michael Durrant
# http://stackoverflow.com/questions/2423777/is-it-possible-to-create-a-remote-repo-on-github-from-the-cli-without-opening-br

a='{"name":"'$1'"}'
curl -u '<name>' https://api.github.com/user/repos -d $a
git remote add origin 'git@github.com:<name>/'$1'.git'
git push origin master
