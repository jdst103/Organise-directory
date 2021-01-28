#!/bin/bash
Directory_to_organsise=/home/ubuntu/directory

Folder1=$Directory_to_organsise/Images
Folder2=$Directory_to_organsise/Music
Folder3=$Directory_to_organsise/Music


if [ ! -d "$Folder1" ]; then
  mkdir $Folder1
fi

if [ ! -d "$Folder2" ]; then
  mkdir $Folder2
fi

if [ ! -d "$Folder3" ]; then
  mkdir $Folder3
fi

mv $Directory_to_organsise/*.jpg $Folder1
mv $Directory_to_organsise/*.png $Folder1
mv $Directory_to_organsise/*.mp3 $Folder2
mv $Directory_to_organsise/*.flac $Folder2
mv $Directory_to_organsise/*.mov $Folder3
mv $Directory_to_organsise/*.avi $Folder3

rm -v $Directory_to_organsise/*.log
