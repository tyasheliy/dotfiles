bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended || exit 1

curl https://raw.githubusercontent.com/thm-unix/thm-zshtheme/master/thm.zsh-theme --output ~/.oh-my-zsh/themes/thm.zsh-theme || exit 1

ln ./config/zsh/zshrc ~/.zshrc || exit 1
