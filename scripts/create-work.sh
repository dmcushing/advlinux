#!/bin/bash

BASEDIR="work"
mkdir -p $BASEDIR
for BASELEVEL in {1..10}
  do
  FILENAMEBASE=$( shuf -n1 /scripts/data/words | sed -e "s/'//g" )
  touch $BASEDIR"/"$FILENAMEBASE
  echo $BASEDIR"/"$FILENAMEBASE
  shuf -n30 /scripts/data/words | sed -e "s/'//g" > $BASEDIR"/"$FILENAMEBASE
  DIRNAMELEVEL1=$BASEDIR"/"$( shuf -n1 /scripts/data/words | sed -e "s/'//g" )
  mkdir -p $DIRNAMELEVEL1
  for DLEVEL1 in {1..10}
    do
    FILENAMELEVEL1=$( shuf -n1 /scripts/data/words | sed -e "s/'//g" )
    touch $DIRNAMELEVEL1"/"$FILENAMELEVEL1
    echo $DIRNAMELEVEL1"/"$FILENAMELEVEL1
    shuf -n30 /scripts/data/words | sed -e "s/'//g" > $DIRNAMELEVEL1"/"$FILENAMELEVEL1
      DIRNAMELEVEL2=$DIRNAMELEVEL1"/"$( shuf -n1 /scripts/data/words | sed -e "s/'//g" )
      mkdir -p $DIRNAMELEVEL2
      for DLEVEL2 in {1..10}
        do
        FILENAMELEVEL2=$( shuf -n1 /scripts/data/words | sed -e "s/'//g" )
        touch $DIRNAMELEVEL2"/"$FILENAMELEVEL2
        echo $DIRNAMELEVEL2"/"$FILENAMELEVEL2
        shuf -n30 /scripts/data/words | sed -e "s/'//g" > $DIRNAMELEVEL2"/"$FILENAMELEVEL2
          DIRNAMELEVEL3=$DIRNAMELEVEL2"/"$( shuf -n1 /scripts/data/words | sed -e "s/'//g" )
          mkdir -p $DIRNAMELEVEL3
          for DLEVEL3 in {1..10}
            do
            FILENAMELEVEL3=$( shuf -n1 /scripts/data/words | sed -e "s/'//g" )
            touch $DIRNAMELEVEL3"/"$FILENAMELEVEL3
            echo $DIRNAMELEVEL3"/"$FILENAMELEVEL3
            shuf -n30 /scripts/data/words | sed -e "s/'//g" > $DIRNAMELEVEL3"/"$FILENAMELEVEL3
          done
      done
  done
done
