#!/bin/bash

export DATE=`date +%Y-%m-%d`
export BRANCH_NAME=catalog-$DATE
git checkout $BRANCH_NAME
python catalog.py 
git status
git add -u
git commit -m "Update catalog for date $DATE"
git push origin catalog-$DATE
git request-pull origin/test_automation $BRANCH_NAME
