# Completion system initialization (must run after all fpath changes).

# Replay deferred compdefs from plugins loaded before compinit
zinit cdreplay -q

# Initialize completion system; cache dump in XDG_CACHE_HOME
mkdir -p "${XDG_CACHE_HOME}/zsh"
compinit -d "${XDG_CACHE_HOME}/zsh/zcompdump"
