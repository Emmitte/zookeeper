#参数1:zk的压缩包地址(后缀为.tar.gz)
#参数2:zk解压后目录
#参数3:zk存储data的目录
#参数4:zk运行log的目录
#参数5:集群中每个集群的ip(','分割)
#参数6:myid编号
sh makeZookeeperInstall.sh /home/wangyida/software/zookeeper-3.4.6.tar.gz /home/wangyida/software/zookeeper-3.4.6 /home/wangyida/temp/zk/data /home/wangyida/temp/zk/log "127.0.0.1" 1
