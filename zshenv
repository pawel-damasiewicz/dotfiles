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
config_dir="$HOME/.cache"
[[ -d $config_dir ]] && export XDG_CACHE_HOME="$config_dir"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.symfony/bin:$PATH"

