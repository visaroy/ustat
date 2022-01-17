United Statistics of Metrics
### ⚛️ ustat
for use in small Linux devices where only a bash or shell is available or you don't want to install Python, Ruby, Go etc.  
Minimalistic bash shell script sends metrics to supported databases:  
* influxdb  
* opentsdb *  
* prometheus *  
* graphite *  
* elasticsearch *

works on amd64, arm64, armel, armhf, i386, mips, mips64el, mipsel, ppc64el, s390x

### 1️⃣ INSTALL ustat
``` shell
wget https://github.com/visaroy/ustat/archive/refs/heads/master.zip
unzip -o ./master.zip
cd ./ustat-master
sh ./ustat install
```

### 2️⃣ EDIT config file
#### [influxdb](https://github.com/influxdata/influxdb)
```
[agent]
  interval="5s"

[[outputs.influxdb]]
  urls = ["http://localhost:8086"]
  database = "database_name"

[[inputs.net]]
  interfaces = ["eth0"]
```
### 3️⃣ USAGE (as a service)
``` shell
service ustat start
```
or
``` shell
/etc/init.d/ustat start
```

`ustat` runs as a service by default, it collects and sends simple network and system load statistics to default database defined in ustat.conf  
It is also used as standalone `ustat` shell command which sends specific data to the database.

### ⚛️ USAGE (as a command)
``` shell
ustat --help
```

```
ustat -options [value] <measurementName> <tagKey=tagValue> <fieldKey=fieldValue> [timestamp]
  -b                             - verbose
  -c                             - create database
  -d                             - drop database
  -i [database]                  - database name
  -o [network_interface]         - network interface eg. -o eth0
  -p                             - read proc load
  -r                             - read default or specific database
  -s                             - show all databases
  -t [interval]                  - interval in seconds eg. -t 5
  -w                             - write a point to influxdb database
  --update|update|--install      - update ustat files and service (or install if not exists)
  ===== Examples: =====
  ustat -w                       - write 1 metric every INTERVAL time to default database
  ustat -i data1 -w              - write metric point to data1 database
  ===== send data point from other shell scripts:
  ustat mySriptName function=functionName line=tookTime timestamp
```



[See more on Wiki page...](https://github.com/visaroy/ustat/wiki)



[...See more options on Wiki page](https://github.com/visaroy/ustat/wiki)  

# Wiki
[ustat Wiki 🚧 Under construction](https://github.com/visaroy/ustat/wiki)

** TODO
