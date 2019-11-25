# Setup fzf
# ---------
if [[ ! "$PATH" == */home/hunter/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/hunter/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/hunter/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/hunter/.fzf/shell/key-bindings.zsh"
