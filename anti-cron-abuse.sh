#!/bin/bash
abuse='\* \* \* \* \*'
abuse1='\*/1 \* \* \* \*'
abuse2='\*/2 \* \* \* \*'
abuse3='\*/3 \* \* \* \*'
abuse4='\*/4 \* \* \* \*'
norm='*/5 * * * *'
find /var/spool/cron/ -type f -exec sed -i "s,$abuse,$norm," {} +
find /var/spool/cron/ -type f -exec sed -i "s,$abuse1,$norm," {} +
find /var/spool/cron/ -type f -exec sed -i "s,$abuse2,$norm," {} +
find /var/spool/cron/ -type f -exec sed -i "s,$abuse3,$norm," {} +
find /var/spool/cron/ -type f -exec sed -i "s,$abuse4,$norm," {} +

