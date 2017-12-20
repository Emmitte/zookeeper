echo 'ZOOKEEPER_HOME='$1'' >> /etc/profile
echo 'PATH=$PATH:$ZOOKEEPER_HOME/bin' >> /etc/profile
echo 'export ZOOKEEPER_HOME' >> /etc/profile
echo 'export PATH' >> /etc/profile
source /etc/profile

