# Custom function paths and tool initializations.

# Add custom functions directory to completion search path
fpath+=("${ZDOTDIR}/functions")

# Initialize z.lua (plugin loaded in 40-plugins.zsh)
eval "$(lua ${ZINIT_HOME:h}/plugins/skywind3000---z.lua/z.lua --init zsh)"

# nvm configurations
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# cc-switch completions
if [ -d "$XDG_DATA_HOME/zsh/site-functions" ]; then
  fpath=("$XDG_DATA_HOME/zsh/site-functions" $fpath)
fi
