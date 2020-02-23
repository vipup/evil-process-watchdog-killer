#
ps ahux --sort=-c | awk 'NR<=5{printf"%s %6d %s [%s] %s %s %s \n",$3,$2,$11,$1,$5,$6,$9}' >> ~/evil-process-watchdog-killer/Watchdog6.log
date >> ~/evil-process-watchdog-killer/Watchdog6.log


