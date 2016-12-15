#!/bin/bash
# SCRIPT:  method1.sh
# PURPOSE: Process a file line by line with PIPED while-read loop.
FILENAME=$1
count=0
cat git_Changelog_local.txt | while read Commits
do
#echo  ${FirstLine:16:40} ${FirstLine:61:40}
#echo "$FirstLine"
cmt1=${Commits:16:40}
cmt2=${Commits:61:40}
#mkdir ./$cmt2
git show --pretty="format:" --name-only $cmt1 " " $cmt2 | sort | uniq > Commits.text
done

#count=0
#cat Commits.txt | while read LINE
#do
#let count++
#cd ./$cmt2
#echo "$count" "$LINE"
#done
#echo -e "\nTotal $count Lines read"

#echo  ${FirstLine:16:40} ${FirstLine:61:40}
#echo "$FirstLine"
#git show --pretty="format:" --name-only ${FirstLine:16:40} ${FirstLine:61:40} | sort | uniq > Commits.text
#done
