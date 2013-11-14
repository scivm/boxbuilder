# configure any extra yum repo here

cat > /etc/yum.repos.d/epel.repo << EOM
[epel]
name=epel
mirrorlist=https://mirrors.fedoraproject.org/metalink?repo=epel-6&arch=x86_64
failovermethod=priority
enabled=1
gpgcheck=0
EOM
