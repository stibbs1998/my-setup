# Check if Git is present
git --version # should prompt git installation if not already present

# Install Homebrew
git clone https://github.com/Homebrew/brew ~/homebrew

eval "$(~/homebrew/bin/brew shellenv)"
brew update --force --quiet
chmod -R go-w "$(brew --prefix)/share/zsh"

# Python Install
brew install python
pip install ../Python-Setup/requirements.txt

# Install Neovim
brew install neovim

echo "At this point VIM is installed.  \
	Open the .vimrc in another window and install \ 
	all plugins."

# Install AWS CLI
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /

# Install Kubectl
curl -LO "https://dl.k8s.io/release/v1.20.0/bin/darwin/amd64/kubectl"
