# evil-process-watchdog-killer
thee basic bash-based cron-job for watchdog-user / root for detect most CPU-intensive PID and kill it

# install steps

* adduser watchdoguser
...
* su watchdoguser
* #$watchdoguser# git clone https://github.com/vipup/evil-process-watchdog-killer/
..
* #$watchdoguser# cd evil-process-watchdog-killer
* #$watchdoguser# crontab -e <<  watchdoguser.crontab
..
* #$root# crontab -e <<  root.crontab
...
* enjoy :)

