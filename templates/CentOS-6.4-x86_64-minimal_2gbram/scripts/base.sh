# Base install

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

yum -y install telnet mailx unzip gcc make gcc-c++ kernel-devel-`uname -r` zlib-devel kernel-devel openssl-devel readline-devel sqlite-devel perl wget

# disable iptables
/etc/init.d/iptables stop
chkconfig iptables off

# Allow yum to work through proxy
echo "proxy=http://proxy.echa.europa.local:8080" >> /etc/yum.conf

# install reach_user and group
mkdir /home/reach_user
groupadd reach_user -g 107
useradd reach_user -d /home/reach_user -g 107 -u 107

# Install secret file for encrypted data bags
