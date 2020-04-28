#!/bin/bash

#rm -rf /home/osmc/wg++/guide.xml
uptime >> /home/osmc/wg++/log.txt
/home/osmc/wg++/run.sh
cp -f /home/osmc/wg++/guide_new.xml /home/osmc/wg++/guide.xml
rm -rf cc.xml cc_1.xml
wget http://epg.51zmt.top:8000/cc.xml
perl -p -e 's/\r/\n/g' cc.xml > cc_1.xml
#delete first line 3 times
sed '1d' cc_1.xml > cc.xml
sed '1d' cc.xml >cc_1.xml
sed '1d' cc_1.xml > cc.xml
#delete the last line
sed '$d' cc.xml > cc_1.xml
#embed cc_1.xml to guide.xml
sed -i '2r cc_1.xml' guide.xml