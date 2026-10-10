mkdir -p data

nohup iostat -x -t $1 >> data/iostat.log &
nohup sh vmstat.sh $1 >> data/vmstat.log &
nohup mpstat -P ALL $1 >> data/mpstat.log &
nohup top -b -d $1 >> data/top.log &
nohup sh netstat.sh $1 >> data/netstat.log &
nohup sh meminfo.sh $1 >> data/meminfo.log &
nohup sar -n DEV $1 >> data/sar_dev.log &
nohup sar -n EDEV $1 >> data/sar_edev.log &
nohup sh slabinfo.sh $1 >> data/slalbinfo.log &

