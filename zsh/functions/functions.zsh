# fzf functions
source ~/dotfiles/zsh/functions/github.zsh
source ~/dotfiles/zsh/functions/git.zsh
source ~/dotfiles/zsh/functions/fzf.zsh
source ~/dotfiles/zsh/functions/tmux.zsh
source ~/dotfiles/zsh/functions/misc_dev_related.zsh
source ~/dotfiles/zsh/functions/x_windows.zsh

function install() {
    sudo apt install $1
}

function uninstall() {
    sudo apt remove $1
}

function latex_to_markdown() {
    pandoc $1 -f latex -t markdown -o $2
}

function sscreen() {
    scrot -s ~/screens/$1
}

function zip_it() {
    if [[ -f $1.zip ]]; then
        rm $1.zip
    fi
    zip -r $1.zip $1
}

