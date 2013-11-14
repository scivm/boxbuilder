yum -y erase gtk2 libX11 hicolor-icon-theme avahi freetype bitstream-vera-fonts
yum -y erase gcc make gcc-c++ kernel-devel zlib-devel openssl-devel readline-devel sqlite-devel
yum -y clean all
rm -rf VBoxGuestAdditions_*.iso
