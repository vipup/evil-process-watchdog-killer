#!/bin/sh
#logger KILLEVILS called...
evill2kill=`cat /home/watchdoguser/evil-process-watchdog-killer/PIDTOKILL`
if [ $evill2kill > 30 ]; then
        evilpid=`cat /home/watchdoguser/evil-process-watchdog-killer/firstPID.log`
        logger "IWANTTOKILLITKILLIT!!!---$evill2kill ========="
        kill -9 $evill2kill
        rm /home/watchdoguser/evil-process-watchdog-killer/PIDTOKILL
	rm /home/watchdoguser/evil-process-watchdog-killer/top1.log
fi



