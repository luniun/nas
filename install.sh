mkdir /tmp/boot
wget "http://downloads.iomega.nas-central.org/Users/olderzeus/kernel3.12.6%20&%20Debian%20wheezy/BootSectors.tgz"
tar -C /tmp/boot -zxf BootSectors.tgz
cd /tmp/boot
./mkgptdisk.sh /dev/sdb
apt-get install xfsprogs -y
parted /dev/sdb mkpart primary 8623489024B 100%
mkfs.ext3 /dev/sdb2
cd /tmp/boot
./flushsd.sh /dev/sdb
mkdir /tmp/mydisk
mount /dev/sdb1 /tmp/mydisk
cd /tmp
wget "http://downloads.iomega.nas-central.org/Users/olderzeus/kernel3.12.6%20&%20Debian%20wheezy/wheezy.20140112.tgz"
tar -C /tmp/mydisk -zvxf wheezy.20140112.tgz
sync
umount /dev/sdb1

