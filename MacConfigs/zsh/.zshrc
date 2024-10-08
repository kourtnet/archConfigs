#
# ~/.zshrc
#

#set hist file
HISTFILE=~/.zsh_history
export HISTFILESIZE=10000000
export HISTSIZE=10000000
export SAVEHIST=500000
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt APPENDHISTORY
export HISTTIMEFORMAT="%d/%m/%Y %H:%M] "

#set default text editor
export EDITOR=nvim

#set prompt
PS1='%F{blue}%1~ %(?.%F{green}.%F{red})%#%f '

#aliases for ffmpeg screen record
alias ffmpeg1='ffmpeg -y -video_size 2560x1600 -framerate 60 -f x11grab -i :0.0 -f pulse -ac 2 -i default /tmp/screen1_recording_`date '+%Y-%m-%d_%H-%M-%S'`.mp4 &> /dev/null' 

#alias for screenshot command
alias screenshot='flameshot gui'

#alias for shutdown
alias spoki='shutdown -h now'

#start window manager on boot
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
	exec startx
fi

S1='%(?..[%F{136}%?%f] )%n%f@%F{136}%m%f %1~ %#> '

bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^[[Z' reverse-menu-complete
zstyle ':completion:*' menu select
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

alias ls='ls --color=auto'
