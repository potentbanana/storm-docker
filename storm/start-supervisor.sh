
sed -i -e "s/%zookeeper%/zk/g" $STORM_HOME/conf/storm.yaml
sed -i -e "s/%nimbus%/nimbus/g" $STORM_HOME/conf/storm.yaml

echo "storm.local.hostname: `hostname -i`" >> $STORM_HOME/conf/storm.yaml
