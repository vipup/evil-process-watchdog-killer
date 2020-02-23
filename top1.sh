#!/bin/sh
#ps ahux --sort=-c | awk 'NR<=5{printf"%6d %s [%s]\n",$2,$11,$1}' >> ~/Watchdog6.log
#ps ahux --sort=-c | awk 'NR<=1{printf"%2d %s [%s]\n",$2,$11,$1}' > ~/first.log
loadlastmin=`ps ahux --sort=-c | head -2 | awk 'NR<=1{printf"%2d\n",$3}'`
echo "$loadlastmin"
if [ "101" -ge "$loadlastmin"  ]
then
	#echo "nothing to do"
        logger "All fine."
	exit 0
fi

ps ahux --sort=-c | awk 'NR<=1{printf"XX%2dXX\n",$2}' > ~/evli-process-watchdog-killer/first.log
ps ahux --sort=-c | awk 'NR<=1{printf"%2d\n",$2}' > ~/evli-process-watchdog-killer/firstPID.log
cat ~/evli-process-watchdog-killer/first.log >> ~/evli-process-watchdog-killer/top1.log
evil=`cat ~/evli-process-watchdog-killer/first.log`
echo "$evil"
cat ~/first.log
##e1@i1-LIFEBOOK-E756:~$ eee=`cat top1.log |grep "$evli"|wc -l`
##e1@i1-LIFEBOOK-E756:~$ echo $eee
evillivetime=`cat ~/evli-process-watchdog-killer/top1.log |grep  "$evil"| wc -l`
echo "---$evillivetime--- Check for last 5 mins..."
if [ "$evillivetime" -ge "5" ]; then
	evilpid=`cat ~/evli-process-watchdog-killer/firstPID.log`
	echo "IWANTTOKILLITKILLIT!!!---$evillivetime---: $evilpid ========="
	echo "$evilpid">~/evli-process-watchdog-killer/PIDTOKILL
fi
