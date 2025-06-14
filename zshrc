home_zshrc_loaded=1
(( zsh_files_loaded = zsh_files_loaded + 1 ))
home_zshrc_loaded_at=$zsh_files_loaded
export zsh_files_loaded
export home_zshrc_loaded
export home_zshrc_loaded_at

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Load base16 theme
# BASE16_SHELL="$HOME/.config/base16-shell/"
# [ -n "$PS1" ] && \
# 	[ -s "$BASE16_SHELL/profile_helper.sh" ] && \
# 	source "$BASE16_SHELL/profile_helper.sh"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="spaceship"

DEFAULT_USER="pawel"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    brew
    common-aliases
    jsontools
    urltools
    virtualenv
    python
    pyenv
    docker-compose
    docker
    tig
    ssh-agent
)

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
# DISABLE_AUTO_TITLE="true"

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


# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Load custom aliases if exist
if [[ -f $HOME/.aliases.zsh ]]; then
  source "$HOME/.aliases.zsh"
fi

if command -v exa 1>/dev/null 2>&1; then
    [[ -f $HOME/.exa-aliases.zsh ]] && source "$HOME/.exa-aliases.zsh"
fi

function load_info()
{
  echo "/etc/zshenv loaded? $etc_zshenv_loaded"
  echo "/etc/zshenv loader at:  $etc_zshenv_loaded_at"
  echo "$HOME/.zshenv loaded? $home_zshenv_loaded"
  echo "$HOME/.zshenv loaded at: $home_zshenv_loaded_at"
  echo "$HOME/.zprofile loaded? $home_profile_loaded"
  echo "$HOME/.zprofile loaded at: $home_profile_loaded_at"
  echo "$HOME/.zshrc loaded? $home_zshrc_loaded"
  echo "$HOME/.zshrc loaded at: $home_zshrc_loaded_at"
}

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

gnutar_bin="/usr/local/opt/gnu-tar/libexec/gnubin"
[[ -d $gnutar_bin ]] && export PATH="$gnutar_bin:$PATH"

if command -v rbenv 1>/dev/null 2>&1; then
  eval "$(rbenv init -)"
fi

if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi

export PATH="/usr/local/opt/gettext/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

phpbrew_loader=$HOME/.phpbrew/bashrc
if [ -f $phpbrew_loader ]; then
  source $phpbrew_loader
  source export PATH="/usr/local/opt/icu4c/bin:$PATH"
  export PATH="/usr/local/opt/icu4c/sbin:$PATH"
fi

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"
