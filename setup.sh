# Base up and running...
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
sudo add-apt-repository ppa:webupd8team/java -y
sudo add-apt-repository ppa:tsbarnes/indicator-keylock -y
sudo add-apt-repository ppa:daniel.pavel/solaar -y
echo "deb https://apt.dockerproject.org/repo ubuntu-`lsb_release -c | awk '{print $2}'` main" | sudo tee /etc/apt/sources.list.d/docker.list
echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update -y
sudo apt-get install build-essential -y
sudo apt-get install python-software-properties -y
sudo apt-get install curl -y
sudo apt-get install git -y
sudo apt-get install openssh-server -y
sudo apt-get install solaar -y
sudo apt-get install compizconfig-settings-manager compiz-plugins-extra -y
sudo apt-get install libcurl4-openssl-dev -y

# Core development set
sudo apt-get install silversearcher-ag -y
sudo apt-get install yakuake -y
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
sudo apt-get install sublime-text-installer -y
sudo apt-get install tmux

# Set up Docker
sudo apt-get install apt-transport-https ca-certificates -y
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-get install linux-image-extra-$(uname -r)
sudo apt-get install docker-engine
sudo service docker start
sudo groupadd docker
sudo usermod -aG docker mikek

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
rm -rf ~/.config/sublime-text-3/Packages/User
ln -s ~/code/mkunkel_config/sublime/User ~/.config/sublime-text-3/Packages/User/

sudo apt-get install exo-utils -y
sudo apt-get install htop -y

# Core environment
gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.2
gem install hub
gem install pry
gem install bundler
sudo apt-get install oracle-java7-installer -y
sudo apt-get install nginx -y

sudo apt-get install postgresql-9.3 postgresql-server-dev-9.3 postgresql-contrib-9.3 -y
sudo apt-get install redis-server -y
wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.8.deb
sudo dpkg -i elasticsearch-0.90.8.deb
rm elasticsearch-0.90.8.deb
sudo apt-get install tig -y
sudo apt-get install numlockx -y
sudo apt-get install libxslt-dev libxml2-dev -y
sudo apt-get install ttf-dejavu -y

# Install Chrome
sudo apt-get install libxss1 libappindicator1 libindicator7 -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb

# Other apps
sudo apt-get install indicator-keylock -y
