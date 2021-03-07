# Might be necessary for vim
shopt -s expand_aliases

# Built-in aliases
alias ll='ls -lhSrG '
alias home='cd ~'
alias h='history'
alias mem='top -l 1 -s 0 | grep PhysMem'
alias actlive='top -n 10 -o cpu -s 4 -i 100 -U vselin'

if [[ `uname` == 'Linux' ]]; then
    # ls on macOS is too old to support --color
    alias ll='ls -lhSrG --color'
    alias vi='vim'
fi

# Git
alias gitst='git status -s'
alias gitllog='git log --graph --all --oneline --decorate --color=always | sed -n 1,5p'
alias gitlloga='git log --graph --all --oneline --decorate --color=always | bless'
alias gitdesk='github .'

# Safety aliases
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias df='df -h'
alias du='du -h'
alias mkdir='mkdir -p'

# External programs
if command -v nvim &> /dev/null
then
    alias n='nvim'
fi

if command -v tmux &> /dev/null
then
    alias ta='tmux attach'
fi

# Alias to routing directory
alias safe='cd ~/.safe_house/safe; ls'

# Quickly read notes
# 
# Depends on fn from .bash_functions! Also requires configs to be softlinked in
# routing directory
if command -v bless &> /dev/null
then
    alias unix_notes='bless ~/.safe_house/safe/configs/notes/unix_notes.md'
    alias good_reads='bless ~/.safe_house/safe/configs/notes/reads.md'
    alias git_notes='bless ~/.safe_house/safe/configs/notes/git_notes.md'
    alias rust_ref='bless ~/.safe_house/safe/configs/notes/rust_ref.md'
    alias util_notes='bless ~/.safe_house/safe/configs/notes/utility_notes.md'
    alias vim_notes='util_notes'
fi
