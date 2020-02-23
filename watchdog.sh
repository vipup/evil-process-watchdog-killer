#
# i1       24064  128  0.3 5289876 56472 ?       Rl   10:25  17:55 /usr/lib/chromium-browser/chromium-browser --type=renderer --disable-webrtc-apm-in-audio-service --
#ps ahux --sort=-c | awk 'NR<=5{printf"%s %6d %s [%s]\n",$3,$2,$11,$1}' >> ~/Watchdog6.log
ps ahux --sort=-c | awk 'NR<=5{printf"%s %6d %s [%s] %s %s %s \n",$3,$2,$11,$1,$5,$6,$9}' >> ~/evli-process-watchdog-killer/Watchdog6.log
#Fr 14. Feb 11:51:05 CET 2020
date >> ~/evli-process-watchdog-killer/Watchdog6.log

