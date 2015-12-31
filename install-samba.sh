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
