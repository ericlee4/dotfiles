#!/bin/bash

for d in *; do
   if [ ! -d $d ]; then continue; fi
   pushd $d
   git fetch

   # check if new revision is different than current revision
   if [ `git rev-parse @` != `git rev-parse @{u}` ]; then
      echo updating $d;
      git pull
      makepkg -si
   fi
   popd;
done
