home_zshenv_loaded=1
(( zsh_files_loaded = zsh_files_loaded + 1 ))
home_zshenv_loaded_at=$zsh_files_loaded

export zsh_files_loaded
export home_zshenv_loaded
export home_zshenv_loaded_at

# Set XDG Config Home
config_dir="$HOME/.config"
[[ -d $config_dir ]] && export XDG_CONFIG_HOME="$config_dir"

# Set XDG Cache Home
cache_dir="$HOME/.cache"
[[ -d $cache_dir ]] && export XDG_CACHE_HOME="$cache_dir"

# Set XDG Pictures
pictures_dir="$HOME/pictures"
[[ -d $pictures_dir ]] && export XDG_PICTURES_DIR="$pictures_dir"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.symfony/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# Set pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
fi

[[ -f $HOME/.cargo/env ]] && . "$HOME/.cargo/env"
