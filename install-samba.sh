echo "Montage de sda2 dans /home/nas"
mkdir -p /home/nas
mount /dev/sda2 /home/nas
echo "Installation de Samba"
apt-get install samba samba-common libcups2 -y
mv /etc/samba/smb.conf /etc/samba/smb.conf.bak
echo "Creation des utilisateurs"
echo "Entrer le mot de passe pour l'utilisateur luniun"
adduser luniun
echo "Entrer le mot de passe pour l'utilisateur annette"
adduser annette
echo "Entrer le mot de passe pour l'utilisateur medias"
adduser medias
cp smb.conf /etc/samba/
echo "Creation des utilisateur Samba"
echo "Creation de luniun"
smbpasswd luniun
echo "Creation de annette"
smbpasswd annette
mkdir -p /home/nas/luniun
chmod 700 /home/nas/luniun
chown luniun:luniun /home/nas/luniun
mkdir -p /home/nas/annette
chmod 700 /home/nas/annette
chown annette:annette /home/nas/annette
mkdir -p /home/nas/medias
chmod 777 /home/nas/medias
echo "Redemarage de Samba"
/etc/init.d/samba restart
echo "Installation Terminer!"
