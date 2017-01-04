#!/bin/bash
rm -rf commitfile
temp_commits=$(mktemp commitfile)
head -1 git_Changelog_local.txt > $temp_commits

cat $temp_commits | while read Commits
do
  cmt1=${Commits:16:40}
  cmt2=${Commits:61:40}
  mkdir -p ./"$cmt2"/Files_New
  mkdir -p ./"$cmt2"/Files_Modified
  mkdir -p ./"$cmt2"/Files_Deleted
  cd ../
  git diff --name-status "$cmt1" "$cmt2" | sort | uniq > ./src/"$cmt2"/Commits1.txt
  cat ./src/"$cmt2"/Commits1.txt | while read LINE
    do
      #fileMode=${LINE:0:1}
      #fileName=${LINE:2:99}
      fileMode="$( cut -c 1 <<< "$LINE" )"
      filePath="$( cut -d '/' -f 1 <<< "${LINE:2:49}" )"
      fileName="$( cut -d '/' -f 2,2 <<< "$LINE" )"

        if [ "$fileMode" = "A" ]
        then
          cp ./"$filePath"/"$fileName" ./src/"$cmt2"/Files_New
          echo "$fileName has been added"
        elif [ "$fileMode" = "D"  ]
        then
          echo /"$filePath"/"$fileName" > ./src/"$cmt2"/Files_Deleted/deletedFileList
          echo "$fileName has been deleted"
        elif [ "$fileMode" = "M"  ]
        then
          cp ./"$filePath"/"$fileName" ./src/"$cmt2"/Files_Modified
          echo "$fileName has been Modified"
        else
          echo "Please Check something else happened with the file $fileName"
        fi
    done
done
rm -rf ${temp_commits}
