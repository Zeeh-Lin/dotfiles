# Oh-My-Zsh libraries and plugins loaded as snippets.

# Core OMZ libraries
zinit for \
    OMZL::theme-and-appearance.zsh \
    OMZL::completion.zsh \
    OMZL::compfix.zsh \
    OMZL::clipboard.zsh \
    OMZL::git.zsh \
    OMZL::directories.zsh

# OMZ plugins
zinit for \
    OMZP::git \
    OMZP::colored-man-pages \
    OMZP::sudo

# Clear OMZ compdef replay list to avoid duplicate completions
zinit cdclear -q


# Core third-party plugins (Turbo-deferred for fast startup).

# Syntax highlighting
zinit wait lucid light-mode for \
    zdharma-continuum/fast-syntax-highlighting

# Auto-suggestions (atload fixes first-prompt initialization)
zinit wait lucid atload'_zsh_autosuggest_start' light-mode for \
    zsh-users/zsh-autosuggestions

# z.lua: intelligent directory jumping
zinit ice lucid \
    atload'[[ -d "${_ZL_DATA:h}" ]] || mkdir -p "${_ZL_DATA:h}"; eval "$(lua ${ZINIT_HOME:h}/plugins/skywind3000---z.lua/z.lua --init zsh)"'
zinit light skywind3000/z.lua

# External CLI tools and fzf integrations.

# fzf binary from GitHub Releases
zinit ice from"gh-r" as"program" # Download release archive/binary
zinit light junegunn/fzf

# fzf OMZ integration (key bindings + completion helpers)
zinit snippet OMZP::fzf

# fzf-tab: replace default tab completion with fzf interface
zinit light Aloxaf/fzf-tab
