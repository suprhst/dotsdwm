
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/varun/.zshrc'

autoload -Uz compinit
compinit

#Prompt

#PROMPT="%Bॐ%b %B%F{117}%~%f%b %B⚛%b "
PROMPT="%B%F{92}ᨀ%f%b %B%F{38}%~%f%b %B%F{75}ᛃ%f%b "
#PROMPT="%B%F{51}☣%f%b %B%F{81}%~%f%b %B%F{49}↝%f%b "
#git
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git



#zsh auto suggestion
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
