useradd -m $FTP_USER
echo "$FTP_USER:$FTP_PASS" | chpasswd
mkdir -p /home/$FTP_USER/ftp/upload
mkdir -p /var/run/vsftpd/empty
chown nobody:nogroup /home/$FTP_USER/ftp/upload
chmod a-w /home/$FTP_USER/ftp
chmod 755 /home/$FTP_USER/ftp/upload
chmod 755 /var/run/vsftpd/empty 

vsftpd /etc/vsftpd.conf
