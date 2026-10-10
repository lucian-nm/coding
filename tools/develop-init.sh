yum groupinstall "Development tools" -y
yum install vim telnet nc strace bc gcc gcc-c++  gdb-y
yum install -y  kernel kerenl-devel systemtap systemtap-runtime

sudo yum install yum-utils -y
debuginfo-install glibc kernel  -y
#sudo yum install -y kernel-debuginfo-$(uname -r)
#sudo yum install -y kernel-debuginfo-common-$(uname -m)-$(uname -r)
#sudo yum install -y systemtap systemtap-runtime

yum -y install ncurses-devel openssl-devel man-pages
yum -y install elfutils-libelf-devel
yum -y install perf  gdb ethtool cscope  psmisc
yum install clang -y
systemctl disable nfs-client.target
yum -y install asciidoc xmlto
yum -y install cmake wget  tcpdump
# manpages
yum  install man-pages libstdc++-docs -y 
#apt-get install manpages-dev manpages-posix-dev
yum install bison  -y
# ebpf
dnf install  dwarves - y
yum install iproute-devel glibc-devel.i686 libdwarves -y
yum install bcc-tools clang  -y
yum install systemtap-sdt-devel  -y
