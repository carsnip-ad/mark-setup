#! /bin/bash
BASE=~/Development/mark-setup
#Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Google Chrome
brew cask install google-chrome

#VS Code
brew cask install visual-studio-code
ln -s "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" /usr/local/bin/code

brew install nvm
mkdir ~/.nvm

#SSH Setup
ssh-keygen
#Add key to GitHub
cp $BASE/ssh/config ~/.ssh/config

brew cask install gpg-suite
# MANUAL STEP - Import / Create GPG Key
brew install gopass
gopass clone git@github.com:carsnip/ops-credentials.git

gopass ssh/carsnip.pem.b64 | base64 --decode > ~/.ssh/carsnip.pem
gopass ssh/carsnip-live.pem.b64 | base64 --decode > ~/.ssh/carsnip-live.pem
chmod go-r ~/.ssh/*.pem
# MANUAL - install VPN from https://vpn.carsnip.com

mkdir ~/Development
cd ~/Development
git clone git@github.com:marksmithson/mark-setup.git

mkdir ~/.aliases
cp $BASE/aliases ~/.aliases/aliases
cp $BASE/bash_profile ~/.bash_profile
source ~/.bash_profile

nvm install 8.9.0

yarn config set registry http://jenkins.internal.carsnip.com:4873

brew cask install slack

brew cask install evernote

brew cask install spectacle

# MANUAL - Install Zoom


brew cask install java
brew install groovy
brew install gradle

#MANUAL- Office from office365
#MANUAL - IntelliJ
#MANUAL - Data grip - & connection configuration

#MANUAL - Docker from docker.com

curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"

#
unzip awscli-bundle.zip
./awscli-bundle/install
rm -rf awscli-bundle
rm awscli-bundle.zip


Nord VPN
