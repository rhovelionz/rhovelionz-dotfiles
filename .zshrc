# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#export TERM="xterm-256color

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/corshine/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

#ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="bullet-train"
ZSH_THEME="dracula"

POWERLEVEL9k_MODE="nerdfont-complete"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=3

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions )

source $ZSH/oh-my-zsh.sh

# User configuration

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

##ALIASES
alias unimatrix="unimatrix -n -s 96 -l o"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


alias ls='lsd --color=auto'
alias l='lsd -lah --group-dirs first'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'


# Navigation
alias ..-'cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'


# reboot shutdown
alias ssn="sudo shutdown now"
alias sr="sudo reboot"

## tor-router

#alias starttor='sudo systemctl start tor.service tor-router.service'
#alias stoptor='sudo systemctl stop tor.service tor-router.service'
#alias restarttor='sudo systemctl restart tor.service tor-router.service'

## Ruby
PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"




## EXPORT PATH

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH=$PATH:/home/corshine/.gem/ruby/2.7.0/bin
export PATH=$PATH:/home/corshine/.local/bin



[ -f ~/.config/.fzf/.fzf.zsh ] && source ~/.config/.fzf/.fzf.zsh

## LAZY GIT
#
function corshinewebgit() {
    git add .
    git commit -a -m "$1"
    git push origin main
}


function corshinegit() {
    git add .
    git commit -a -m "$1"
    git push
}


# START TMUX
alias tmuxcorshine='tmux new -s CORSHINE \; split-window -h \; split-window -v \;'

#Clean system
#alias corshineclean='sudo bleachbit --clean system.cache system.localizations system.trash system.tmp'

# Termbin
alias tb="nc termbin.com 9999"
#alias gpuNV='prime-offload && optimus-manager --switch nvidia --no-confirm'


## Cloudflare 1.1.1.1
alias warp-c="warp-cli connect && curl https://www.cloudflare.com/cdn-cgi/trace/ 2>/dev/null | grep warp"
alias warp-dc="warp-cli disconnect && curl https://www.cloudflare.com/cdn-cgi/trace/ 2>/dev/null | grep warp"

#alias sptd="spotifyd -u radivan1337@gmail.com -p SpotifyCorshine -b pulseaudio --verbose --no-daemon --headless && spt"
