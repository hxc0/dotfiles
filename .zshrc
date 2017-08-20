# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' max-errors 3 numerici
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle :compinstall filename '/home/hxc0/.zshrc'

autoload -Uz compinit
compinit
autoload -U colors && colors

autoload -U promptinit
promptinit
#PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%M %{$fg_no_bold[yellow]%}%1~%{$reset_color%}%#[%{$fg_no_bold[yellow]%}%?%{$reset_color%}]%d"
PROMPT="[%{$fg_bold[yellow]%}%?%{$reset_color%}]%F{253}%B%n%b%f%{$reset_color%}%F{228}%B@%b%f%{$reset_color%}%F{230}%B%M%b%f%{$reset_color%}:%{$fg_bold[yellow]%}%~$%{$reset_color%} "
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
#bindkey "${terminfo[khome]}" beginning-of-line
#bindkey "${terminfo[kend]}" end-of-line
#bindkey "${terminfo[kdch1]}" delete-char
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[3~' delete-char
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

LS_COLORS='rs=0:di=01;33:ln=01;36;40:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32;40:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:*.py=01;93;04:*.c=01;31;04:*.o=00;32:*.so=00;32;04:'
export LS_COLORS
export PATH=$PATH":/home/hxc0/.gem/ruby/2.4.0/bin"

export OTWUSERDIR="/d/BjpSmTQAb5EdXTiOszY3"

#bindkey -e
# End of lines configured by zsh-newuser-install
alias suz="su -s /bin/zsh"
alias ls="ls --color=auto"

alias dir='ls -laF --color=auto '
alias dirh='ls -laFh --color=auto '
alias ll='ls -laFh --color=auto '
alias dirl='ls -laFtr --color=auto '

alias lxplus="ssh -XY adudzic@lxplus.cern.ch"
alias vi="vim"
alias cd..="cd .."
alias netscan="sudo arp-scan --interface=wlp3s0 --localnet --retry=5 --timeout=1000"
alias msfconsole="msfconsole -L"
#  --colors x x x x x x
#              Changes the text colors in this order: title, @, underline, subtitle, colon, info

neofetch --ascii_colors 74 74 --colors 230 228 214 253 221 230
stty -ixon

#Fix for 256 colors in lxterm
if [ "x$TERM" = "xxterm" ]
then 
        export TERM="xterm-256color"
fi
export VISUAL="vim"
