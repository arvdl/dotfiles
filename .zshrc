### ${ZDOTDIR:-$HOME}/.zshrc

# setup your environment
export EDITOR=vim
export HISTFILE=/dev/null

# load pz
PZ_PLUGIN_HOME="${ZDOTDIR:-$HOME/.config/zsh}/plugins"
[[ -d $PZ_PLUGIN_HOME/pz ]] ||
    git clone https://github.com/mattmc3/pz.git $PZ_PLUGIN_HOME/pz
source $PZ_PLUGIN_HOME/pz/pz.zsh

# source plugins from github
pz source zsh-users/zsh-autosuggestions
pz source zsh-users/zsh-history-substring-search
pz source zsh-users/zsh-completions
pz source zsh-users/zsh-syntax-highlighting

# source ohmyzsh plugins
pz source ohmyzsh/ohmyzsh plugins/colored-man-pages

# -or- use oh-my-zsh themes instead of a prompt plugin
pz source ohmyzsh lib/git
pz source ohmyzsh lib/theme-and-appearance
pz source ohmyzsh themes/minimal
pz source ohmyzsh plugins/autojump
pz source ohmyzsh plugins/vagrant
