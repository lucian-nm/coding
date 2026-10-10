#!/bin/bash
ARGS_NUM=1
usage()
{
        echo 'usage :'$0 'interval'
}
if [ $# -ne $ARGS_NUM ] ; then
        usage
        exit 1
fi
INTERVAL=$1
while true ; do
        echo "----------"`date`"---------"
        cat /proc/meminfo
        cat /proc/buddyinfo
        cat /proc/vmstat
        sleep $INTERVAL
done
