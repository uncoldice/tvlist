#!/bin/bash

#rm -rf /home/osmc/wg++/guide.xml
uptime >> /home/osmc/wg++/log.txt
/home/osmc/wg++/run.sh
cp -f /home/osmc/wg++/guide_new.xml /home/osmc/wg++/guide.xml
