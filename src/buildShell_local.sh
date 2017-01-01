#!/bin/bash
# SCRIPT:  method1.sh
# PURPOSE: Process a file line by line with PIPED while-read loop.
#FILENAME=$1

head -1 git_Changelog_local.txt > firstLine.txt
echo firstLine.txt

#mkdir -p ./${Commits:61:40}
#cd ${Commits:61:40}

#while read Commits
#do
#  echo cmt1=${Commits:16:40}
#  echo cmt2=${Commits:61:40}
  #mkdir -p ./${Commits:61:40}
  #cd ${Commits:61:40}
#  pwd
#  git show --pretty="format:" --name-only $cmt1 $cmt2 | sort | uniq > Commits1.txt
#  cat Commits1.txt
#    cat Commits1.txt | while read LINE
#    do
#      echo "$count" "$LINE"
#    done
#done


#count=0
#cd ./${Commits:61:40}
#ls
#cat Commits1 | while read LINE
#do
#let count++
#echo "$count" "$LINE"
#done
#echo -e "\nTotal $count Lines read"
