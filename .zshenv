export PATH="/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="$HOME/bin:$PATH"

function export_path_if_exists { [[ -d "$1" ]] && export PATH="$1:$PATH" }
function source_if_exists { [[ -f "$1" ]] && source "$1" }

source_if_exists ~/dotfiles/zsh/antigen/antigen.zsh

antigen-bundle rbenv
antigen-bundle bundler

export EDITOR='vim'
export PAGER='less -R'

disable r

