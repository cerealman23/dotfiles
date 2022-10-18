# Honor per-interactive-shell startup file
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

GUIX_PROFILE="/home/malcolm/.guix-profile"
. "$GUIX_PROFILE/etc/profile"

GUIX_PROFILE="/home/malcolm/.config/guix/current"

## before the plan eyboard
setxkbmap -option ctrl:nocaps
xcape -e 'Control_L=Escape' -t 175

export PATH="$HOME/bin:$PATH"

export GEM_PATH=/home/malcolm/.gem/ziy7a6zib846426kprc7fgimggh8bz97-ruby-2.1.3/2.1.0
export GEM_HOME=$GEM_PATH
export GEM_SPEC_CACHE=/home/malcolm/.gem/ziy7a6zib846426kprc7fgimggh8bz97-ruby-2.1.3/specs
mkdir -p $GEM_PATH
mkdir -p $GEM_SPEC_CACHE
gem env

NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$PATH:$NPM_PACKAGES/bin"
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"
