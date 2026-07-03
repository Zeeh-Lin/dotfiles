# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Listing
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Editor
alias v='nvim'

# Safety / verbosity
alias mkdir='mkdir -pv'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias cld='claude --dangerously-skip-permissions'
alias python='python3'
alias py='python3'
alias cact='conda activate $(basename $(pwd))'

mkcd() {
	mkdir -pv "$1"
	cd "$1"
}
