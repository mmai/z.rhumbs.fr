#Position on current develop branch
git stash
git checkout develop

#Build new files
stack exec site clean
stack exec site build

#Prepare new files
git fetch --all
git checkout master
cp -a _site/. .
git commit -A

#Push to github
git commit -m "publish"
git push

# Restoration
git checkout develop
git stash pop
