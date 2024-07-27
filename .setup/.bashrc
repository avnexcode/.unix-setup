# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# Homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
eval "$(zoxide init bash)"

# laravel
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

PATH=~/.console-ninja/.bin:$PATH

figlet -c -w $(tput cols) -f big "Let's  Code  Axnvee" | boxes -d dog -a hc | lolcat


### import external module
## Config
source ~/.unix-setup/.configs/.zoxide.sh
source ~/.unix-setup/.configs/.oh-my-posh.sh

## Commands
source ~/.unix-setup/.commands/.git-aliases.sh
source ~/.unix-setup/.commands/.vite-react.sh
source ~/.unix-setup/.commands/.native-php.sh
source ~/.unix-setup/.commands/.native-javascript.sh
source ~/.unix-setup/.commands/.credentials-file.sh