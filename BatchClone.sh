#!/bin/bash
wd=`pwd`
sed -i 's/[ ]*//g' BatchClone.txt
for path in `cat BatchClone.txt`
do
#${wd} /d/LouisGithub
cd "${wd}"
dir=${path#*//}
#$dir /github.com/louisgeek/GitBatchClone.git
if [ ! -x "$dir" ]; then
echo "= Creating: project in ${wd} ="
#${path} https://github.com/louisgeek/GitBatchClone.git
echo "- Running: git clone ${path} -"
git clone "${path}"
echo "= Successfully cloned ${path} ="
fi
done
