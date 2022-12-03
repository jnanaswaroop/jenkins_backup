#!/bin/bash
cp -r /var/lib/jenkins/* /root/jenkins_backup/
today_date=date +"%d-%m-%Y"
token="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"
username="jnanaswaroop"
reponame="jenkins_backup"
cd /root/jenkins_backup/
rm -rf caches/
git status
git add --all
git status
git commit -m "Committed Jenkins backup on ${today_date}"
git remote set-url origin https://${token}@github.com/${username}/${reponame}.git
git push -u origin master

