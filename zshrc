# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$HOME/.yarn/bin/:$HOME/.local/itksnap.app/bin/:$PATH

# Path to your oh-my-zsh installation.
# export TERM="xterm-256color"
export ZSH=/home/gabriel/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnoster"
# ZSH_THEME="oxide"
ZSH_THEME="robbyrussell"
# ZSH_THEME="powerlevel9k/powerlevel9k"
# POWERLEVEL9K_COLOR_SCHEME='light'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
export DISABLE_AUTO_TITLE='true'

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#export NVM_LAZY_LOAD=true # From zsh-nvm plugin
#export NVM_LAZY_LOAD_EXTRA_COMMANDS=('nvim')
#plugins=(git zsh-nvm)
plugins=(git fzf ssh-agent)

source $ZSH/oh-my-zsh.sh

# User configuration
DEFAULT_USER=gabriel

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nano'
 else
   export EDITOR='nano'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias vim=/opt/vim80/bin/vim
alias nvim=~/Applications/nvim.appimage
alias vim=nvim
alias sudo='sudo '
alias sa='source _venv/bin/activate'
alias icat="kitty +kitten icat"
alias dc="docker compose"
alias dcu="docker compose up -d"

# Tmux alias
alias tl="tmuxp load"
alias tls="tmux ls"
alias ta="tmux attach -t"

# Exa alias
alias ls='exa --icons'
alias ll='ls -al'

export FZF_ALT_C_COMMAND="fd . $HOME -t d"

# Awesome font setup
# source ~/.fonts/*.sh

# Google cloud
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/gabriel/Software/gcloud/google-cloud-sdk/path.zsh.inc' ]; then . '/home/gabriel/Software/gcloud/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/gabriel/Software/gcloud/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/gabriel/Software/gcloud/google-cloud-sdk/completion.zsh.inc'; fi


# Add cuda library path
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-11/lib64
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-10.2/lib64

# Add plantuml
export PLANTUML=$HOME/Software/plantuml/plantuml.1.2020.19.jar

# Rust
source $HOME/.cargo/env

# FZF setup
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_DEFAULT_COMMAND="find -L"

# Node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GLFW_IM_MODULE=ibus # Needed for ibus to work on kitty

