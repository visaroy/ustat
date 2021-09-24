# ⚛️ ustat
minimalistic script in BASH sends metrics to supported databases:  
• influxdb  
• *opentsdb***  
• *prometheus***  
• *graphite***  
• *elasticsearch***  

** TODO list

# 1️⃣ INSTALL ustat

⭐️ download latest version from Github  
⭐️ on Linux machine with bash shell, extract `ustat-master.zip` and run `./install.sh`

 ``` shell
 wget https://github.com/visaroy/ustat/archive/refs/heads/master.zip
 unzip -o ./ustat-master.zip
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

# #
send metrics to:
# influxdb
[github.com/influxdb](https://github.com/influxdata/influxdb)
#### ☝️ please note: your influxdb database available at `http://localhost:8086`
configure your ustat: `/etc/ustat.conf`
```
[agent]
  interval="5s"

[[outputs.influxdb]]
  urls = ["http://localhost:8086"]
  database = "database_name"
```

⭐️ run  `ustat -w`

or
`service ustat start`

or
`/etc/init.d/ustat start`
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

☝️ `ustat` is ready as a command line bash script:
``` shell
ustat
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
☝️ TIP: use -s option  
⭐️ EXAMPLE: ustat -s

## -c create default database
``` shell
ustat -c
```
☝️ TIP: use -c option  
⭐️ EXAMPLE: ustat -c

## -d drop default database
``` shell
ustat -d
```
☝️ TIP: use -d to drop default database  
⭐️ EXAMPLE: ustat -d  
⭐️ EXAMPLE: ustat -i database1 -d

## -i [database_name]
``` shell
ustat -i [database_name]
```
☝️ TIP: use -i operate on other database   
⭐️ EXAMPLE: ustat -i [database_name]

## -w
``` shell
ustat -w # write metrics to the database
```
☝️ TIP:  
⭐️

# Wiki
[ustat Wiki 🚧 Under construction](https://github.com/visaroy/ustat/wiki)
