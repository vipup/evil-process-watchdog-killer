#!/bin/sh
#logger KILLEVILS called...
WDHOME=/home/watchdoguser/evil-process-watchdog-killer
PID2KILL=$WDHOME/PIDTOKILL
if [ ! -f "$PID2KILL" ]; then
    echo "$PID2KILL not exists - nothing to do"
    exit 0
fi

evill2kill=`cat $PID2KILL`
if [ $evill2kill > 30 ]; then
        evilpid=`cat $WDHOME/firstPID.log`
        logger "IWANTTOKILLITKILLIT!!!---$evill2kill ========="
        kill -9 $evill2kill
        rm $WDHOME/PIDTOKILL
	rm $WDHOME/top1.log
fi



