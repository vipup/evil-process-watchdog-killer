#!/bin/sh
loadlastmin=`ps ahux --sort=-c | head -2 | awk 'NR<=1{printf"%2d\n",$3}'`
echo "$loadlastmin"
if [ "101" -ge "$loadlastmin"  ]
then
	#echo "nothing to do"
        logger "All fine."
	exit 0
fi

ps ahux --sort=-c | awk 'NR<=1{printf"XX%2dXX\n",$2}' > ~/evil-process-watchdog-killer/first.log
ps ahux --sort=-c | awk 'NR<=1{printf"%2d\n",$2}' > ~/evil-process-watchdog-killer/firstPID.log
cat ~/evil-process-watchdog-killer/first.log >> ~/evil-process-watchdog-killer/top1.log
evil=`cat ~/evil-process-watchdog-killer/first.log`
echo "$evil"
cat ~/evil-process-watchdog-killer/first.log
evillivetime=`cat ~/evil-process-watchdog-killer/top1.log |grep  "$evil"| wc -l`
echo "---$evillivetime--- Check for last 5 mins..."
if [ "$evillivetime" -ge "5" ]; then
	evilpid=`cat ~/evil-process-watchdog-killer/firstPID.log`
	echo "IWANTTOKILLITKILLIT!!!---$evillivetime---: $evilpid ========="
	echo "$evilpid">~/evil-process-watchdog-killer/PIDTOKILL
fi
