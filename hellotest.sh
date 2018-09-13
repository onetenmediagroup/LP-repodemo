#!/bin/bash
dest=/home/forge/versionstorage.conradotest.xyz #destination where the current folder will be saved
folder=${PWD##*/} #setting the folder variable to its current folder name
time=$(date +%d-%m-%y-%H%M) #setting the variable for the timestamp
zipfile=$dest/$folder-$time.zip #setting the variable for the zipfile location
zip -r $zipfile ./* #zip process
git init #Reinitialize git to make sure that git is running in the server
git checkout master #To make sure that the server is using the master branch
git add . #Stage the changes in folder
git commit -m "File update $time" #commit the changes with the date as commit message
git push origin master #push the files to github repo