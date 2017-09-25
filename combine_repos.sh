#!/bin/bash

#######################################################################
# Make temporary location to clone files to
temp_dir="/d/temp/"
mkdir $temp_dir
cd $temp_dir

# # Delete temporary location afterwards?
# #delete_temp=true

# Remote repository URLs for cloning
URLs[0]="https://github.com/Jeffrey-Ede/Hello-C-Cpp-Cs.git"
URLs[1]="https://github.com/Jeffrey-Ede/Hello-Web.git"
URLs[2]="https://github.com/Jeffrey-Ede/Miscellaneous-Python.git"
URLs[3]="https://github.com/Jeffrey-Ede/Hello-R.git"
URLs[4]="https://github.com/Jeffrey-Ede/Hello-Perl.git"
URLs[5]="https://github.com/Jeffrey-Ede/Hello-Ruby.git"
URLs[6]="https://github.com/Jeffrey-Ede/Hello-Racket.git"

# Combined repository URL
URL_Combined="https://github.com/Jeffrey-Ede/Miscellaneous.git"

#######################################################################

# Clone all the repositories
for i in "${URLs[@]}"
do
	git clone $i
done

# Remove READMEs to prevent merge conflicts
for i in $(ls -d */); do
	cd $i
	git rm "README.md"
	cd ..
done

# Change all the remote origins so that they are the same
for i in $(ls -d */); do

	cd $i
	
	# Change the remote origin to that of the combined repository
	git remote rm origin
	git remote add origin $URL_Combined
	
	# Rename the local master branch
	git checkout master
	git branch -m master-holder
	
	# Pull all the code from the combined repository to make it the master
	git fetch
	git checkout master
	git pull origin master
	
	# Merge master-holder into master
	git merge master-holder --allow-unrelated-histories
	
	# Push the repo to the combined repository
	git push origin master
	
	cd ..
done