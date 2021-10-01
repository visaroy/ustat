# ⚛️ ustat
for use in small Linux devices, minimalistic bash script sends metrics to supported databases:  
* influxdb  
* opentsdb *  
* prometheus *  
* graphite *  
* elasticsearch *

works on amd64, arm64, armel, armhf, i386, mips, mips64el, mipsel, ppc64el, s390x
# 1️⃣ INSTALL ustat

⭐️ download latest version from Github  
⭐️ on Linux machine with bash shell, extract `ustat-master.zip` and run `./install.sh`

 ``` shell
 wget https://github.com/visaroy/ustat/archive/refs/heads/master.zip
 unzip -o ./master.zip
 cd ./ustat-master
 sh ./install.sh
 ```

 or (when reinstall)
``` shell
sh ./install.sh --force
```

[...See more on Wiki page](https://github.com/visaroy/ustat/wiki)  

# 2️⃣ EDIT config file
⭐️ edit `/etc/ustat.conf`  
# global options
```
[agent]
  interval="5s"
```
send metrics to:

# influxdb
[github.com/influxdb](https://github.com/influxdata/influxdb)
#### ☝️ please note: in this case your influxdb database available at `http://localhost:8086`
```
[[outputs.influxdb]]
  urls = ["http://localhost:8086"]
  database = "database_name"
```

# 3️⃣ USAGE

☝️ `ustat` is ready as a service:  
and in default sends metrics to the database from `/etc/ustat.conf`
``` shell
service ustat start
```
or
``` shell
/etc/init.d/ustat start
```
[...See more on Wiki page](https://github.com/visaroy/ustat/wiki)  

⭐️ run  `ustat -w`

or
`service ustat start`

or
`/etc/init.d/ustat start`

# 🔣 MORE COMMANDS

☝️ `ustat` is ready as a command line bash script:
``` shell
ustat -h
```
## -s show all databases
``` shell
ustat -s
```
☝️ TIP: use -s option  
⭐️ EXAMPLE: ustat -s

## -r read default database
``` shell
ustat -r
```
☝️ TIP: use -r option  
⭐️ EXAMPLE:  
`ustat -r` check if default database exists  
`ustat -i database -r` check if particular database exists

## -c create default database
``` shell
ustat -c
```
☝️ TIP: use -c option  
⭐️ EXAMPLE:  
`ustat -c` create default database  
`ustat -i db1 -c` create 'db1' database on the server


## -d drop default database
``` shell
ustat -d
```
☝️ TIP: use -d to drop default database  
⭐️ EXAMPLE:  
`ustat -d`  drop default database  
`ustat -i database1 -d` drop 'db1' database on the server

## -i [database_name]
``` shell
ustat -i [database_name]
```
☝️ TIP: use -i operate on other database   
⭐️ EXAMPLE:  
`ustat -i db1` set 'db1' database

## -w
``` shell
ustat -w # write metrics to the database
```
☝️ TIP: this is default command option used in the service '/etc/init.d/ustat'  
⭐️ EXAMPLE:  
`ustat -w` write metrics in default database  
`ustat -i db1 -w` write metrics in 'db1' database

# Wiki
[ustat Wiki 🚧 Under construction](https://github.com/visaroy/ustat/wiki)

** TODO
