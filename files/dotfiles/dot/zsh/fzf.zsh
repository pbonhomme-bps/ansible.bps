# Options for fzf
export FZF_COMPLETION_OPTS='+c -x'
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_DEFAULT_OPTS="--layout=reverse --inline-info"

# Use fd (https://github.com/sharkdp/fd) instead of the default find
# # command for listing path candidates.
# # - The first argument to the function ($1) is the base path to start
# traversal
# # - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
    fd --hidden --follow --exclude ".svn" . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
    fd --type d --hidden --follow --exclude ".svn" . "$1"
}

