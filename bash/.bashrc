# ~/.bashrc

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Uncomment the following line for a colored prompt, if the terminal has the capability.
 force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='\u@\h:\w\$ '
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -alF --color=auto'
alias l='ls -A --color=auto'
#alias l='ls -CF --color=auto'

#alias ..='cd ..'
#alias ~='cd ~'
#/() {  cd /}

# application aliasi
alias vim='nvim'
alias vi='nvim'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Enable reverse search in bash history
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Enable autocorrect
shopt -s cdspell

# tab completion irrespective of case sensitivity
bind 'set completion-ignore-case on'


# Function to be executed when changing directories
#auto_ls() {
#    ls -A "$1"
#}
# Function to be called before changing directories
#cd() {
    # Call the original cd command
#    builtin cd "$1"
    
    # Run auto_ls after changing directories
#    auto_ls "$(pwd)"
#}



