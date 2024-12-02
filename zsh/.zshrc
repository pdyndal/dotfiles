### Added by Codeium. These lines cannot be automatically removed if modified
if command -v termium > /dev/null 2>&1; then
  eval "$(termium shell-hook show pre)"
fi
### End of Codeium integration

export ZSH="$HOME/.oh-my-zsh"
export XDG_CONFIG_HOME="$HOME/.config"

ZSH_THEME="robbyrussell"

plugins=(
	git
	bun
	sudo
	npm
	python
	docker
	ruby
    golang
	tmux
    colorize
    node
    ng
    nvm
    ssh
    ubuntu
    rust
)

# bun completions:
[ -s "/home/pady/.bun/_bun" ] && source "/home/pady/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm use default

export NODE_OPTIONS="--max-old-space-size=8192"

# py aliases
alias py=/usr/bin/python3
alias python=/usr/bin/python3

# ruby
export ruby=/home/pady/.local/share/gem/ruby/3.0.0/bin

# go
export go=/usr/local/go/bin
export PATH=$PATH:/usr/local/go/bin

# tmux
ZSH_TMUX_AUTOSTART=true

# custom aliases
alias G=git
alias cht.sh=~/.config/scripts/cht.sh

# rust

export PATH=$HOME/.local/bin:$PATH

source $ZSH/oh-my-zsh.sh

clear

### Added by Codeium. These lines cannot be automatically removed if modified
if command -v termium > /dev/null 2>&1; then
  eval "$(termium shell-hook show post)"
fi
### End of Codeium integration
