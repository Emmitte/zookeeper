#!/bin/sh
function makeDir()
{
  dir=$1
  cur_dir=''
  OLD_IFS="$IFS"
  IFS="/"
  arr=($dir)
  IFS="$OLD_IFS"
  for s in ${arr[@]}
  do
    cur_dir=''$cur_dir'/'$s''
    if [ ! -d "$cur_dir" ]; then  
      echo 'create dir '$cur_dir
      mkdir $cur_dir
    fi
  done
}

tar_file=$1
tar -zxvf $tar_file
sleep 5
dir=$2
cd $dir/conf/
cp zoo_sample.cfg zoo.cfg

sed -i '/dataDir/d' zoo.cfg
dataDir=$3
makeDir $dataDir
dataLogDir=$4
makeDir $dataLogDir
echo 'dataDir='$dataDir'' >> zoo.cfg
echo 'dataLogDir='$dataLogDir'' >> zoo.cfg
iplist=$5
i=1
for ip in $iplist
do
  echo 'server.'$i'='$ip':2888:3888' >> zoo.cfg
  i=$(($i+1))
done

cd $dataDir
myid=$6
touch myid
echo $myid > myid


 
