# Base up and running...
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
sudo add-apt-repository ppa:webupd8team/java -y
sudo add-apt-repository ppa:tsbarnes/indicator-keylock -y
sudo add-apt-repository ppa:daniel.pavel/solaar -y
sudo apt-get update -y
sudo apt-get install build-essential -y
sudo apt-get install python-software-properties -y
sudo apt-get install curl -y
sudo apt-get install git -y
sudo apt-get install openssh-server -y
sudo apt-get install compizconfig-settings-manager compiz-plugins-extra -y

# Core development set
sudo apt-get install silversearcher-ag -y
sudo apt-get install terminator -y
sudo apt-get install yakuake -y
sudo apt-get install nodejs -y
sudo apt-get install sublime-text-installer -y

# I'm moving in!
mkdir -p ~/code
git clone https://github.com/mkunkel/mkunkel_config.git ~/code/mkunkel_config
if [ -f ~/.bashrc ]; then
	cp ~/.bashrc ~/.bashrc.bkup
fi
ln -sf ~/code/mkunkel_config/.bash_profile ~/.bash_profile
ln -sf ~/code/mkunkel_config/.bashrc ~/.bashrc
ln -sf ~/code/mkunkel_config/compiz.profile ~/compiz.profile
ln -sf ~/code/mkunkel_config/.dircolors ~/.dircolors
ln -sf ~/code/mkunkel_config/.gitconfig ~/.gitconfig
ln -sf ~/code/mkunkel_config/.irbrc ~/.irbrc
ln -sf ~/code/mkunkel_config/rvmrc ~/.rvmrc
ln -sf ~/code/mkunkel_config/.ttytterrc ~/.ttytterrc
ln -sf ~/code/mkunkel_config/bin ~/bin
ln -sf ~/code/mkunkel_config/Scripts ~/Scripts
mkdir -p ~/.config/terminator
ln -sf ~/code/mkunkel_config/config/terminator/config ~/.config/terminator/config

# Core environment
gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.1
gem install hub
gem install pry
sudo apt-get install oracle-java7-installer -y
sudo apt-get install nginx -y
sudo apt-get install postgresql-9.3 postgresql-server-dev-9.3 postgresql-contrib-9.3 -y
sudo apt-get install postgresql-9.3-postgis-2.1 -y
sudo apt-get install redis-server -y
wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.8.deb
dpkg -i elasticsearch-0.90.8.deb
rm elasticsearch-0.90.8.deb
sudo apt-get install git -y
sudo apt-get install tig -y
sudo apt-get install numlockx -y
mkdir /tmp/adobefont
cd /tmp/adobefont
wget http://downloads.sourceforge.net/project/sourcecodepro.adobe/SourceCodePro_FontsOnly-1.017.zip
unzip SourceCodePro_FontsOnly-1.017.zip
mkdir -p ~/.fonts
cp SourceCodePro_FontsOnly-1.017/OTF/*.otf ~/.fonts
fc-cache -f -v
rm -rf /tmp/adobefont
cd ~

# Install Chrome
sudo apt-get install libxss1 libappindicator1 libindicator7 -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb

# Other apps
sudo apt-get install indicator-keylock -y
sudo apt-get install xchat -y
sudo apt-get install solaar -y
