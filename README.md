# MacOS Setup

MacOs clean setup

#### install homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

#### install zsh
```bash
brew install zsh
```

#### install oh_my_zsh
```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### install brew-commandline.sh 
```bash
chmod +x brew-commandline.sh 
./brew-commandline.sh 
```

#### install brew-jdk.sh 
```bash
chmod +x brew-jdk.sh
./brew-jdk.sh
```

#### install brew-apps.sh
```bash
chmod +x brew-apps.sh
./brew-apps.sh
```

#### install powerline10k theme for oh_my_zsh
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
#### set powerline10k theme
```bash
ZSH_THEME="powerlevel10k/powerlevel10k"
in ~/.zshrc.
```
 
 ###### On the first run, Powerlevel10k configuration wizard will ask you a few questions and configure your prompt. If it doesn't trigger automatically, type p10k configure. 
 
 
 #### zsh compinit: insecure directories and files, run compaudit for list.

The cause of the warning is not the issue here; I have two admin users on the same Macbook who both need to use homebrew. When files in /usr/local have group read/write privileges rather than single user privileges, the COMPFIX process flags them as insecure.

Other solutions suggest adding ZSH_DISABLE_COMPFIX=true to the top of my .zshrc file

#### install zsh-autosuggestions plugin
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
```
in ~/.zshrc
plugins=(zsh-autosuggestions)
```
