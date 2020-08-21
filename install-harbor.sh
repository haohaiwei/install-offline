#!/bin/sh

mkdir /rs1
echo '解压tar包...'
tar -xvf $1 -C /rs1
cd /rs1/harbor
chmod +x install.sh 
./install.sh
