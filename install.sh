#!/bin/sh
# install ustat service

case $1 in
    "--force")
#    rm /etc/ustat.conf
    rm /usr/bin/ustat
    rm /etc/init.d/ustat
    ;;
esac

if [ -f /etc/ustat.conf ]; then
    echo "* [OK] ustat config file already in /etc/ustat.conf"
else
    cp ./etc/ustat.conf /etc/ustat.conf
    echo "* [OK] ustat config file coppied to /etc/ustat.conf"
fi

if [ -x /usr/bin/ustat ]; then
    echo "* [OK] ustat script already installed"
else
    cp ./ustat /usr/bin/ustat
    chmod +x /usr/bin/ustat
    echo "* [OK] ustat script installed"
fi

if [ -x /etc/init.d/ustat ]; then
    echo "* [OK] ustat service already installed, usage: /etc/init.d/ustat start"
else
    cp ./etc/init.d/ustat /etc/init.d/ustat
    chmod +x /etc/init.d/ustat
    cd /etc/init.d/
    update-rc.d -v ustat start 99 3 . stop 99 6 . >/dev/null
    update-rc.d -f ustat defaults 99 >/dev/null
    cd /
    echo "* [OK] ustat service installed, usage: service ustat start"
fi

echo "- use 'install.sh --force' if you want to to reinstall ..."
