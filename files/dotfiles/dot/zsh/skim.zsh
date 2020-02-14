# Setup skim
# ---------
if [[ ! "$PATH" == *$HOME/.skim/bin* ]]; then
  export PATH="$PATH:$HOME/.skim/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "$HOME/.skim/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "$HOME/.skim/shell/key-bindings.zsh"
