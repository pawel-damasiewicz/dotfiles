home_profile_loaded=1
(( zsh_files_loaded = zsh_files_loaded + 1 ))
home_profile_loaded_at=$zsh_files_loaded
export zsh_files_loaded
export home_zprofile_loaded
export home_zprofile_loaded_at

if [[ -f $HOME/.profile ]]; then
    source $HOME/.profile
fi
