# install oh my zsh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended || exit 1

# install favorite theme
curl https://raw.githubusercontent.com/thm-unix/thm-zshtheme/master/thm.zsh-theme --output ~/.oh-my-zsh/themes/thm.zsh-theme || exit 1

# intall zshrc
cp ./config/zsh/zshrc ~/.zshrc || exit 1
