ZINIT_HOME="${XDG_DATA_HOME}/zinit/zinit.git"

[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"

source "${ZINIT_HOME}/zinit.zsh"

# Register zinit command completion
autoload -Uz _zinit                           # Lazy-load completion function
(( ${+_comps} )) && _comps[zinit]=_zinit      # Bind `zinit` command to its completer

# Pre-register compinit (actual initialization deferred to 90-completions)
autoload -Uz compinitautoload -Uz compinit
