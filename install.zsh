#!/usr/bin/env zsh

set -e

# Install neovim packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
	"$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim"

repoDir=$(pwd)

# Set XDG Config Home
config_dir="$HOME/.config"
[[ -d $config_dir ]] || mkdir $config_dir
[[ -d $config_dir ]] && export XDG_CONFIG_HOME="$config_dir"

function lnDot()
{
    dotName=.$1
    backup=$dotName.backup
    echo $dotName $backup $repoDir/$1

    [[ -f $dotName ]] && mv $dotName $backup

    ln -s $repoDir/$1 $dotName
}

function lnConfigDir()
{
    name=$1
    configRootDir=$2
    dryRun=$3

    configDir=$configRootDir/$name
    configBackupDir=$configDir.backup

    if [[ -d $configDir ]]; then
        echo "$name config found: $configDir"
        echo "Moving $configDir to bakcup $configBackupDir"
        [[ $dryRun -eq 1 ]] || mv $configDir $configBackupDir
    fi

    [[ -d $configBackupDir ]] && echo "Backup created at $configBackupDir"
    [[ -d $configDir ]] &&
        echo "Error, config still exists after creating backup $configDir" &&
        exit 1

    linkSource=$repoDir/$name
    linkTarget=$configDir

    [[ $dryRun -eq 1 ]] || ln -s $linkSource $linkTarget
    [[ -L $linkTarget ]] && [[ -d $linkTarget ]]
        echo "Created a symlink in $linkTarget pointing to $linkSource"
}

cd $HOME

lnDot 'aliases.zsh'
lnDot 'exa-aliases.zsh'
# lnDot 'spacemacs'
lnDot 'zprofile'
lnDot 'zshenv'
lnDot 'zshrc'


lnConfigDir 'nvim' $XDG_CONFIG_HOME $DOTFILES_DRY_INSTALL
lnConfigDir 'zellij' $XDG_CONFIG_HOME $DOTFILES_DRY_INSTALL
