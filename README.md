# ⚛️ ustat
for use in small Linux devices, minimalistic bash script sends metrics to supported databases:  
* influxdb  
* opentsdb *  
* prometheus *  
* graphite *  
* elasticsearch *

works on amd64, arm64, armel, armhf, i386, mips, mips64el, mipsel, ppc64el, s390x

# 1️⃣ INSTALL ustat
``` shell
wget https://github.com/visaroy/ustat/archive/refs/heads/master.zip
unzip -o ./master.zip
cd ./ustat-master
sh ./install.sh
```

# 2️⃣ EDIT config file
# [influxdb](https://github.com/influxdata/influxdb)
```
[agent]
  interval="5s"

[[outputs.influxdb]]
  urls = ["http://localhost:8086"]
  database = "database_name"
```
# 3️⃣ USAGE
``` shell
service ustat start
```
or
``` shell
/etc/init.d/ustat start
```
[See more on Wiki page...](https://github.com/visaroy/ustat/wiki)



[...See more options on Wiki page](https://github.com/visaroy/ustat/wiki)  

# Wiki
[ustat Wiki 🚧 Under construction](https://github.com/visaroy/ustat/wiki)

** TODO
