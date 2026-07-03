# History file setup and behavior tuning.

# Ensure history directory exists
mkdir -p "$(dirname "$HISTFILE")"

export HISTSIZE=100000                        # Max events in memory
export SAVEHIST=100000                        # Max events on disk

# History options
setopt hist_ignore_dups     # Skip duplicate of previous command
setopt hist_ignore_space    # Ignore commands starting with space
setopt hist_ignore_all_dups # Remove older duplicate when new one is added
setopt hist_save_no_dups    # Never write duplicate entries to file
setopt hist_expire_dups_first # Trim duplicates first when limit reached
setopt hist_find_no_dups    # Skip duplicates in reverse search
setopt share_history        # Share history across concurrent sessions
setopt inc_append_history   # Append to file immediately, not on exit
setopt extended_history     # Record timestamp and duration
