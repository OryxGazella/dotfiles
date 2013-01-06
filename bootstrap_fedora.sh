#!/bin/sh
# Inspiration taken from http://smashingweb.info/fedora-17-post-installation-guide-things-to-do-after-installing-fedora-17/
mkdir temp
cd temp
# install RPM Fusion
#yum -y localinstall --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-stable.noarch.rpm
yum -y install wget.x86_64
#ViM
yum -y install vim-common vim-minimal vim-enhanced vim-X11

# terminal multiplexer
yum -y install tmux.x86_64 
## get tmux config file from the pragmatic bookshelf
wget http://media.pragprog.com/titles/bhtmux/code/bhtmux-code.tgz
tar -xzf bhtmux-code.tgz
mv code/config/tmux.conf ../.tmux.conf
#Google chrome
##Key
wget https://dl-ssl.google.com/linux/linux_signing_key.pub
##Add repo
rpm --import linux_signing_key.pub

#Oracle Java JDK
wget http://download.oracle.com/otn-pub/java/jdk/7u10-b18/jdk-7u10-linux-x64.rpm
rpm -Uvh /path/to/binary/jdk-7u10-linux-x64.rpm

#echo "[google]
name=Google Chrome 64-bit
baseurl=http://dl.google.com/linux/chrome/rpm/stable/x86_64" >> /etc/yum.repos.d/google.repo


##Do install via yum
yum -y install google-chrome-stable

#Install some media codecs
yum -y install gstreamer gstreamer-plugins-good gstreamer-plugins-bad gstreamer-plugins-ugly
yum -y install ffmpeg ffmpeg-libs

#Adobe Reader
#rpm -ivh http://linuxdownload.adobe.com/adobe-release/adobe-release-x86_64-1.0-1.noarch.rpm rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-adobe-linux
#yum -y install AdobeReader_enu
#install rvm as local user

#delete the temp directory
cd ..
rm -rf temp
#install nodejs & npm

#give some useful instructions
echo "now that you're done, you may have some trouble with yum, why not check out this link --> http://www.if-not-true-then-false.com/category/linux/yum-guides-howtos/"
