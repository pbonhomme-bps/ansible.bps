#Supports oh-my-zsh plugins and the like
zplug "plugins/git",   from:oh-my-zsh
# Also prezto
zplug "modules/prompt", from:prezto

zplug Aloxaf/fzf-tab
zplug zsh-users/zsh-history-substring-search
zplug zsh-users/zsh-syntax-highlighting
zplug softmoth/zsh-vim-mode
zplug agkozak/zsh-z, from:github
#zplug zdharma/zui, from:github
#zplug zdharma/zzcomplete, from:github
#zplug wyntau/fzf-zsh, from:github
#zplug vifon/deer, use:deer
#zle -N deer
#bindkey '\ek' deer
zplug romkatv/powerlevel10k, as:theme, depth:1
