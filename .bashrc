#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_HOME

export PATH="$HOME/.bin:$PATH"

if [ -f "$HOME/.bash_aliases" ]; then
	source "$HOME/.bash_aliases"
fi

if [ -f "$HOME/.Xmodmap" ] && [ -z "$DISPLAY" ]; then
   	xmodmap "$HOME/.Xmodmap"
fi
#XMODIFIERS="@im=none"
#GTK_IM_MODULE=xim
#QT_IM_MODULE=xim
export GTK_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export QT_IM_MODULE=fcitx


#setxkbmap -option compose:ralt

export GZIP=-9

export USE_CCACHE=1
export EDITOR=vim
export PAGER=vimpager
export MAKEFLAGS="-j$(nproc)"
export STEAM_FRAME_FORCE_CLOSE=1
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=$DEVKITPRO/devkitARM
export PATH=$PATH:$DEVKITARM/bin
export CTRULIB=/opt/devkitpro/libctru/
export PYENV_ROOT="$HOME/.pyenv"

#eval "$(ssh-agent -s)"
