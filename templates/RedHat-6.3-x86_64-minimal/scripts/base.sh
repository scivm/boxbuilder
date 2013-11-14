# Base install

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

yum -y install gcc make gcc-c++ kernel-devel-`uname -r` zlib-devel kernel-devel openssl-devel readline-devel sqlite-devel perl wget

# disable iptables
/etc/init.d/iptables stop
chkconfig iptables off
