# SPRINT FOR TASK WARRIOR
export SPRINT=$(date +%-V)

# If you come from bash you might have to change your $PATH.

# Path to your oh-my-zsh installation.
  export ZSH=/home/shamotskyi/.oh-my-zsh
  export TZ="/usr/share/zoneinfo/Europe/Berlin"



 # Todo remove this abomination
# export PATH=/home/sh/bin:/usr/local/bin:/home/sh/.local/bin:/home/sh/.gem/ruby/2.5.0/bin:/home/sh/bin:/usr/local/bin:/home/sh/.local/bin:/home/sh/.gem/ruby/2.5.0/bin:/home/sh/bin:/usr/local/bin:/home/sh/.local/bin:/home/sh/.gem/ruby/2.5.0/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/sh/.rvm/bin:/home/sh/.rvm/bin:/home/sh/.gem/ruby/2.6.0/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/sh/.rvm/bin:/home/sh/.gem/ruby/2.6.0/bin 

# export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.gem/ruby/2.6.0/bin:/home/sh/s/p/bspwm/panel:$PATH

 export PANEL_FIFO="/tmp/panel-fifo"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="dogenpunk"
ZSH_THEME="jnrowe"
#ZSH_THEME="random"
#ZSH_THEME="trapd00r"

# Uncomment the following line to use case-sensitive completion.
 CASE_SENSITIVE="true"


# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
 DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13
# export UPDATE_ZSH_DAYS=50

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(history-substring-search)

source $ZSH/oh-my-zsh.sh
#source $ZSH/zsh-history-substring-search.zsh

  bindkey '^[[A' history-substring-search-up
  bindkey '^[[B' history-substring-search-down

# User configuration

inc_append_history="true"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


bindkey -v

#!/bin/zsh
# Simple colorize for bash by means of sed
#
# Copyright 2008-2015 by Andreas Schamanek <andreas@schamanek.net>
#
# 2017 - Modified from mycolorize into a shell function 
#     by Ignacio Nunez Hernanz <nacho _a_t_ ownyourbits _d_o_t_ com>
#
# GPL licensed (see end of file) * Use at your own risk!
#
# Usage examples:
#   tail -f somemaillog | xcolorize white '^From: .*' bell
#   tail -f somemaillog | xcolorize white '^From: \/.*' green 'Folder: .*'
#   tail -f somemaillog | xcolorize --unbuffered white '^From: .*'
#
# Notes:
#   Regular expressions need to be suitable for _sed --regexp-extended_
#   Slashes / need no escaping (we use ^A as delimiter).
#   \/ splits the coloring (similar to procmailrc. Matches behind get color.
#   Even "white '(for|to) \/(her|him).*$'" works :) Surprisingly ;)
#   To color the string '\/' use the regular expression '\\()/'.
#   If the 1st argument is -u or --unbuffered, _sed_ will be run so.

# For the colors see tput(1) and terminfo(5), or e.g.
# https://wiki.archlinux.org/index.php/Color_Bash_Prompt
# and http://stackoverflow.com/a/20983251/196133

function xcolorize()
{
  local bold=$(tput bold)                         # make colors bold/bright
  local normal=$'\e[0m'                           # (works better sometimes)

  local red="$bold$(tput setaf 1)"                # bright red text
  local green=$(tput setaf 2)                     # dim green text
  local fawn=$(tput setaf 3); beige="$fawn"       # dark yellow text
  local yellow="$bold$fawn"                       # bright yellow text
  local darkblue=$(tput setaf 4)                  # dim blue text
  local blue="$bold$darkblue"                     # bright blue text
  local purple=$(tput setaf 5); magenta="$purple" # magenta text
  local pink="$bold$purple"                       # bright magenta text
  local darkcyan=$(tput setaf 6)                  # dim cyan text
  local cyan="$bold$darkcyan"                     # bright cyan text
  local gray=$(tput setaf 7)                      # dim white text
  local darkgray="$bold"$(tput setaf 0)           # bold black = dark gray text
  local white="$bold$gray"                        # bright white text

  local bell=$(tput bel)                          # bell/beep
  local y=0

  # Make output unbuffered? (Pass argument -u|--unbuffered to _sed_.)
  if [ "/$1/" = '/-u/' -o "/$1/" = '/--unbuffered/' ] ; then
    local UNBUFFERED='-u'; shift
  else
    local UNBUFFERED=""
  fi

  # produce separator character ^A (for _sed_)
  local A=$(echo | tr '\012' '\001')

  # compile all rules given at command line to 1 set of rules for SED
  while [ "/$1/" != '//' ] ; do
    local c1=''; local re='';  local beep=''
    c1=$1 ; re="$2" ; shift 2 || break
    # if a beep is requested in the optional 3rd parameter set $beep
    [ "/$1/" != '//' ] && [[ ( "$1" = 'bell' || "$1" = 'beep' ) ]] \
      && beep=$bell && shift
    # if the regular expression includes \/ we split the substitution
    if [ "/${re/*\\\/*/}/" = '//' ] ; then
      # we need to count "("s before the \/ (=$left)
      local left="${re%\\/*}"; local leftlength=${#left}
      # first we count "\("
      local dummy=${left//\\(}; escdgroups=$(( (leftlength-${#dummy})/2 ))
      # now "(" (and we add 2 for the groups used for ($re) in $sedrules)
      local dummy=${left//(}; groupcnt=$((leftlength-${#dummy}-escdgroups+2))
      # replace \/ with )( so below we get (left-re)(right-re)
      re="${re/\\\//)(}"
      local sedrules="$sedrules;s$A($re)$A\1${(P)c1}\\$groupcnt$beep$normal${A}g"
      sedrules="${sedrules}I"   # add case insensitive
    else
      local sedrules="$sedrules;s$A($re)$A${(P)c1}\1$beep$normal${A}g"
      sedrules="${sedrules}I"   # add case insensitive
    fi
    # limit parsing of arguments
    (( y++ && y>888 )) && { echo "$0: too many arguments" >&2; return 1; }
  done

  # call sed to do the main job
  sed $UNBUFFERED --regexp-extended -e "$sedrules"

  return
}

# Colorize your standard output using xcolorize with a grep-like usage
#
# Copyleft 2017 by Ignacio Nunez Hernanz <nacho _a_t_ ownyourbits _d_o_t_ com>
# GPL licensed (see end of file) * Use at your own risk!
#
# Usage piping from stdin:
#   mount | xcol mnt "sda." "sdb." cgroup tmpfs proc
#
# Usage reading from a file:
#   xcol pae fpu vme mhz sse2 cache cores /proc/cpuinfo
#
# Notes:
#   It supports sed compatible regular expressions
function xcol()
{
  local bold=$(tput bold)                         # make colors bold/bright
  local red="$bold$(tput setaf 1)"                # bright red text
  local green=$(tput setaf 2)                     # dim green text
  local fawn=$(tput setaf 3); beige="$fawn"       # dark yellow text
  local yellow="$bold$fawn"                       # bright yellow text
  local darkblue=$(tput setaf 4)                  # dim blue text
  local blue="$bold$darkblue"                     # bright blue text
  local purple=$(tput setaf 5); magenta="$purple" # magenta text
  local pink="$bold$purple"                       # bright magenta text
  local darkcyan=$(tput setaf 6)                  # dim cyan text
  local cyan="$bold$darkcyan"                     # bright cyan text
  local gray=$(tput setaf 7)                      # dim white text
  local darkgray="$bold"$(tput setaf 0)           # bold black = dark gray text
  local white="$bold$gray"                        # bright white text

  local COLS=( white yellow red cyan gray purple pink fawn )

  [ -t 0 ] && local STDIN=0 || local STDIN=1

  if [[ $STDIN == 0 ]]; then 
    local FILE=$argv[$#];                         # last argument is the file name
    argv[$#]=()                                   # remove last argument
  fi

  local IDX=1                                     # rotate colors in a cycle
  for arg in $argv[@]; do
    local ARGS=( ${ARGS[@]} ${COLS[$IDX]} $arg )
    IDX=$(( IDX + 1 )) 
    [[ $IDX == ${#COLS[@]} ]] && IDX=1
  done
  [[ $STDIN == 1 ]] && {
    xcolorize --unbuffered ${ARGS[@]}
    } || {
    cat $FILE | xcolorize --unbuffered ${ARGS[@]}
  }
}
# License
#
# This script is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This script is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this script; if not, write to the
# Free Software Foundation, Inc., 59 Temple Place, Suite 330,
# Boston, MA  02111-1307  USA
# List files in zsh with <TAB>
#
# Copyleft 2017 by Ignacio Nunez Hernanz <nacho _a_t_ ownyourbits _d_o_t_ com>
# GPL licensed (see end of file) * Use at your own risk!
#
# Usage:
#   In the middle of the command line:
#     (command being typed)<TAB>(resume typing)
#
#   At the beginning of the command line:
#     <SPACE><TAB>
#     <SPACE><SPACE><TAB>
#
# Notes:
#   This does not affect other completions
#   If you want 'cd ' or './' to be prepended, write in your .zshrc 'export TAB_LIST_FILES_PREFIX'
#   I recommend to complement this with push-line-or edit (bindkey '^q' push-line-or-edit)
function tab_list_files
{
  if [[ $#BUFFER == 0 ]]; then
    BUFFER="ls "
    CURSOR=3
    zle list-choices
    zle backward-kill-word
  elif [[ $BUFFER =~ ^[[:space:]][[:space:]].*$ ]]; then
    BUFFER="./"
    CURSOR=2
    zle list-choices
    [ -z ${TAB_LIST_FILES_PREFIX+x} ] && { BUFFER="  "; CURSOR=2; }
  elif [[ $BUFFER =~ ^[[:space:]]*$ ]]; then
    BUFFER="cd "
    CURSOR=3
    zle list-choices
    [ -z ${TAB_LIST_FILES_PREFIX+x} ] && { BUFFER=" "; CURSOR=1; }
  else
    BUFFER_=$BUFFER
    CURSOR_=$CURSOR
    zle expand-or-complete || zle expand-or-complete || {
      BUFFER="ls "
      CURSOR=3
      zle list-choices
      BUFFER=$BUFFER_
      CURSOR=$CURSOR_
    }
  fi
}
zle -N tab_list_files
bindkey '^I' tab_list_files

# uncomment the following line to prefix 'cd ' and './' 
# when listing dirs and executables respectively
#export TAB_LIST_FILES_PREFIX

# these two lines are usually included by oh-my-zsh, but just in case
autoload -Uz compinit
compinit

# uncomment the following line to complement tab_list_files with ^q
#bindkey '^q' push-line-or-edit

# License
#
# This script is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This script is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this script; if not, write to the
# Free Software Foundation, Inc., 59 Temple Place, Suite 330,
# Boston, MA  02111-1307  USA
#


# Srv
alias c="clear"
alias hg='history | grep'
alias v='vim'
alias t='task'
alias pip='python3 -m pip'

# xclipboard 
 alias xc='xclip -selection c'
 alias xp='xclip -selection clipboard o'

# Lock
alias L='gnome-screensaver-command -l'
alias ss='gnome-screensaver-command -l && systemctl suspend'

# Folders
alias r='cd ~/w/b/research'
alias dtb='cd ~/o/dtb'
<<<<<<< HEAD:.zshrc
=======
alias ww='cd w/python-cuda/R6026'
>>>>>>> 47e6400944c937ae35006accb5183ce11ad1cee6:.zshrc
alias pages='cd ~/o/HP/pages'


alias t='task rc.uda.sprint.default=$SPRINT rc.dateformat=DM'
# Current sprint:
alias s='task s sprint.is:$SPRINT or sprint:c' 
alias tss='task sd'

# coninuously needed report
alias ts='task srv'

alias w='timew'

# work stuff
alias tw='task project:w'
alias tt='task project:w'

alias S='vim ~/.scratchpad'
alias ls='ls -a'

## Testing a bit more
# alias ls='lsd'

# Timer in zsh
tm() {
    local DATE=$(date +'%H:%M:%S %d/%m')
    local N="$1"; shift
  (utimer -c > ~/s/sounds/outbash $N && mpg123 -q ~/s/sounds/tib.mp3  &
      zenity --info --title="Time's Up" --text="${*:-BING} \n\n $DATE")
}

PATH=:/home/linuxbrew/.linuxbrew/bin:/bin:/usr/bin:/usr/local/bin:${PATH}
export PATH

<<<<<<< HEAD:.zshrc
cc() python3 -c "from math import *; print($*);"
alias cc='noglob cc'
# You can use `cc` just like `=` from above. All functions from the math module of Python are available for use. 

# Put these in your .zshrc (No need to install a plugin)
cc() python3 -c "from math import *; print($*);"
alias cc='noglob cc'
# You can use `cc` just like `=` from above. All functions from the math module of Python are available for use. 

PATH="/home/shamotskyi/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/shamotskyi/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/shamotskyi/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/shamotskyi/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/shamotskyi/perl5"; export PERL_MM_OPT;
