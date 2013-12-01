export PATH="/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="$HOME/bin:$PATH"

source_if_exists ~/dotfiles/zsh/antigen/antigen.zsh

antigen-bundle rbenv
antigen-bundle bundler

export EDITOR='vim'
export PAGER='less -R'

disable r

