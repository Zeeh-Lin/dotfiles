# Custom function paths and tool initializations.

# Add custom functions directory to completion search path
fpath+=("${ZDOTDIR}/functions")

# Initialize z.lua (plugin loaded in 40-plugins.zsh)
eval "$(lua ${ZINIT_HOME:h}/plugins/skywind3000---z.lua/z.lua --init zsh)"
