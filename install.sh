
# Clone awesomerc
git clone --recursive https://github.com/linuws/awesomerc.git .awesomerc

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install node & npm
curl -L https://git.io/n-install | bash
n latest

# install Hyper shell
brew cask install hyper
brew install zsh-syntax-highlighting

# install all the global npm modules i use
npm install --global pure-prompt
