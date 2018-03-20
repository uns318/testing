#!/bin/bash
DIRECTORY='/tmp/scripts/logs'
BACKUPDIR='/tmp/scripts/backuplog'

mkdir -p $BACKUPDIR

for i in `cat backupfiles.txt`
do
	if [ -f $BACKUPDIR/$i ]
	then
		echo "copying $i files to backuplog directory"
cp $DIRECTORY/$i $BACKUPDIR
else
	echo "$i file exits,copied"
fi
done
echo
echo
echo "zipping files"
tar -czvf backuplog.tgz backuplog
echo
echo
echo "successful"
