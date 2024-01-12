bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended || exit 1

rm ~/.zshrc

cp ./config/zsh/thm.zsh-theme ~/.oh-my-zsh/themes/

ln ./config/zsh/zshrc ~/.zshrc || exit 1
