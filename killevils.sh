#!/bin/sh
#logger KILLEVILS called...
evill2kill=`cat /home/e1/evli-process-watchdog-killer/PIDTOKILL`
if [ $evill2kill > 30 ]; then
        evilpid=`cat /home/e1/evli-process-watchdog-killer/firstPID.log`
        logger "IWANTTOKILLITKILLIT!!!---$evill2kill ========="
        kill -9 $evill2kill
        rm /home/e1/evli-process-watchdog-killer/PIDTOKILL
	rm /home/e1/evli-process-watchdog-killer/top1.log
fi



