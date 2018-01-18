#!/bin/bash

killall conky
conky-colors --theme=elementary --ubuntu --cpu=4 --cputemp --network --eth=1 --hd=simple --nvidia --weather=FIXX0031 --updates --proc=5 --hdtemp1=sda  --hdtemp2=sdb  --hdtemp3=sdc --hdtemp4=sdd
conky -c ~/.conkycolors/conkyrc