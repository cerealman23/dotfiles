# Bash initialization for interactive non-login shells and
# for remote shells (info "(bash) Bash Startup Files").

# Export 'SHELL' to child processes.  Programs such as 'screen'
# honor it and otherwise use /bin/sh.
export SHELL

if [[ $- != *i* ]]
then
    # We are being invoked from a non-interactive shell.  If this
    # is an SSH session (as in "ssh host command"), source
    # /etc/profile so we get PATH and other essential variables.
    [[ -n "$SSH_CLIENT" ]] && source /etc/profile

    # Don't do anything else.
    return
fi

# Source the system-wide file.
source /etc/bashrc

# Adjust the prompt depending on whether we're in 'guix environment'.
if [ -n "$GUIX_ENVIRONMENT" ]
then
    PS1='\u@\h \w [env]\$ '
else
    PS1='\u@\h \w\$ '
fi
alias ls='ls -p --color=auto'
alias ll='ls -l'
alias grep='grep --color=auto'
alias firefox='flatpak run org.mozilla.firefox'
alias slack='flatpak run com.slack.Slack'


# Swaps ctrl with caps lock and makes a single press act as escape

eval "$(starship init bash)"

GUIX_PROFILE="/home/malcolm/.guix-profile"
. "$GUIX_PROFILE/etc/profile"

GUIX_PROFILE="/home/malcolm/.config/guix/current"

export EDITOR=vim
