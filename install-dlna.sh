echo "Installation de mini-dlna"
apt-get install minidlna -y
rm /etc/minidlna.conf
cp minidlna.conf /etc/
mkdir -p /home/nas/medias/Music
mkdir -p /home/nas/medias/Images
mkdir -p /home/nas/medias/videos
mkdir -p /home/dlna/logs
echo "Demarage de dlna"
/etc/init.d/minidlna start
echo "scan des repertoires"
minidlna -R
