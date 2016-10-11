export IP=`hostname -i`

sed -i -e "s/%zookeeper%/172.18.0.2/g" $STORM_HOME/conf/storm.yaml
sed -i -e "s/%nimbus%/172.18.0.4/g" $STORM_HOME/conf/storm.yaml

echo "storm.local.hostname: `hostname -i`" >> $STORM_HOME/conf/storm.yaml

supervisord
