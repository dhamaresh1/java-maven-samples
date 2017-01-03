#!/bin/bash
# SCRIPT:  method1.sh
# PURPOSE: Process a file line by line with PIPED while-read loop.
#FILENAME=$1
rm -rf commotfile
temp_commits=$(mktemp commitfile)

head -1 git_Changelog_local.txt > $temp_commits


#mkdir -p ./${temp_commits:61:40}
#cd ${Commits:61:40}

cat $temp_commits | while read Commits
do
  cmt1=${Commits:16:40}
  cmt2=${Commits:61:40}
  echo "$cmt1"
  echo "$cmt2"

  mkdir -p ./"$cmt2"
  git diff --name-status ${Commits:16:40} ${Commits:61:40} | sort | uniq > ./"$cmt2"/Commits1.txt
  pwd
  #cat Commits1.txt
  cd ./"$cmt2"
  pwd
  echo "Sssssss"
  cat Commits1.txt | while read LINE
    do
echo "yyyyyyy"
      echo Mode=${LINE:0:1}
      echo FILENAME=${LINE:2:99}
      if [ "${LINE:0:1}" = "D" ]
      then
          pwd
          echo "Mode is D"
      elif [ "${LINE:0:1}" = "M"  ]
      then
        echo "Mode is M"
      else
        echo "Nothing for you"
      fi
    done
done

rm -rf ${temp_commits}


#count=0
#cd ./${Commits:61:40}
#ls
#cat Commits1 | while read LINE
#do
#let count++
#echo "$count" "$LINE"
#done
#echo -e "\nTotal $count Lines read"
