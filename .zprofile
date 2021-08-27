#
# Executes commands at login pre-zshrc.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

#
# Browser
#

if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

#
# Editors
#

export EDITOR='nano'
export VISUAL='nano'
export PAGER='less'

#
# Language
#

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

#
# Paths
#

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

# Set the list of directories that cd searches.
# cdpath=(
#   $cdpath
# )

# Set the list of directories that Zsh searches for programs.
path=(
  /usr/local/{bin,sbin}
  $path
)

#
# Less
#

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X to enable it.
export LESS='-g -i -M -R -S -w -X -z-4'

xrdb merge ~/.Xresources

# Set the Less input preprocessor.
# Try both `lesspipe` and `lesspipe.sh` as either might exist on a system.
if (( $#commands[(i)lesspipe(|.sh)] )); then
  export LESSOPEN="| /usr/bin/env $commands[(i)lesspipe(|.sh)] %s 2>&-"
fi

# First
export HISTFILE=/dev/null
path+=('~/bin')
path+=('/home/ravn/.local/bin')
path+=('~/.dwm')
export PATH

export SVDIR=~/service
# Additional
#eval "$(rbenv init -)"

export VAGRANT_CHECKPOINT_DISABLE=1
alias cat='bat -p -f --paging=never'
alias startkvm='sudo systemctl start libvirtd libvirtd-ro.socket libvirtd.socket libvirtd-admin.socket'
alias stopkvm='sudo systemctl stop libvirtd libvirtd-ro.socket libvirtd.socket libvirtd-admin.socket'

