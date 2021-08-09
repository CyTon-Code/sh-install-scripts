#start:

# edit:
EDIT=name
pacman -Syy $EDIT
export EDITOR=$EDIT

cd $1
git pull
cd ..

cd $1
git commit
cd ..





# end git repo:
cd $1
git push
cd ..

backup.sh

# exit # or  poweroff

