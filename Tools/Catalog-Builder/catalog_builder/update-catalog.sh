#!/bin/bash

cd $HOME/PSL-Core/Tools/Catalog-Builder/catalog_builder
export DATE=`date +%Y-%m-%d`
export BRANCH_NAME=catalog-$DATE
git checkout -b $BRANCH_NAME
which /Users/petermetz/anaconda3/bin/python
/Users/petermetz/anaconda3/bin/python catalog.py 
git status
git add -u
git commit -m "Update catalog for date $DATE"
git push origin catalog-$DATE
git checkout automation
git pull --no-edit origin $BRANCH_NAME
git push origin automation
