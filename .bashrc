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
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
# laravel
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
# console ninja
PATH=~/.console-ninja/.bin:$PATH

### import external module
## Config
source ~/.unix-setup/.configs/.zoxide.sh
source ~/.unix-setup/.configs/.oh-my-posh.sh

## Commands
# Builders
source ~/.unix-setup/.configs/.auto-run.sh
source ~/.unix-setup/.commands/.next-app.sh
source ~/.unix-setup/.commands/.next-page.sh
source ~/.unix-setup/.commands/.vite-react.sh
source ~/.unix-setup/.commands/.native-php.sh
source ~/.unix-setup/.commands/.native-javascript.sh

# Aliases
source ~/.unix-setup/.commands/.git-aliases.sh
source ~/.unix-setup/.commands/.global-aliases.sh

# Others
source ~/.unix-setup/.secret/.credentials-file.sh