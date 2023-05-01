#/bin/bash

DATAFILE="class.txt"

dos2unix $DATAFILE

while IFS=","  read USERNAME COMMENT; do
        USERNAME2="$( echo $USERNAME | rev )"
        COMMENT2="$( echo $COMMENT | sed 's/,/ /g' )"
        echo  $USERNAME2 $COMMENT2
        useradd -c "$COMMENT2" -s /bin/bash -m $USERNAME2
        echo "$USERNAME2:final2023" | chpasswd
done < $DATAFILE