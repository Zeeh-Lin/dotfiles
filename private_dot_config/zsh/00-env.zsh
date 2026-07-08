# PATH
export PATH="${HOME}/.local/bin:${PATH}"
export PATH="$PATH:/opt/nvim"

# HISTFILE PATH
export HISTFILE="${XDG_DATA_HOME}/zsh/history"
export _ZL_DATA="${XDG_DATA_HOME}/zlua/.zlua"

# TOOLS PATH
export NVM_DIR="${XDG_DATA_HOME}/nvm"
export CC_SWITCH_CONFIG_DIR="${XDG_CONFIG_HOME}/cc-switch"
export CLAUDE_CONFIG_DIR="${XDG_CONFIG_HOME}/claude"
export CODEX_HOME="${XDG_CONFIG_HOME}/codex"
export KIMI_CODE_HOME="${XDG_CONFIG_HOME}/kimi-code"

setopt auto_cd
setopt extended_glob
setopt nomatch
setopt interactive_comments
