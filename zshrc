# If you come from bash you might have to change your $PATH.
export PATH=/sbin:/home/a/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/a/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
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
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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

export QT_QPA_PLATFORMTHEME='qt5ct'

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

# Custom Aliases
alias rbt="sudo systemctl reboot"
alias shd="sudo shutdown now"
alias vv="vimv -av -e vim"
alias zrc="vim ~/.zshrc && source ~/.zshrc"
alias suzrc="sudo vim ~/.zshrc && sudo source ~/.zshrc"

alias cdg='cd "$(basename "$_" .git)"'
alias gacp='f(){ git add . && git commit -m "$1" && git push origin $2; unset -f f; }; f'
alias kvlc="pgrep vlc | xargs kill -9"

# APT for Debain based systems
alias supg='sudo apt update && sudo apt upgrade -y && sudo apt autoremove'
alias supd='sudo apt-get update'
alias install='sudo apt-get install'
alias remove='sudo apt remove'
alias purge='sudo apt purge'

alias findf='sudo find / -iname'
alias finda='sudo find / | grep -i'

alias vpnc='nordvpn connect'
alias vpnd='nordvpn disconnect'
alias vpnc-us='nordvpn connect United_States'


alias ccr='f(){ g++ --std=c++11 -Wall $1 && ./a.out $2; unset -f f; }; f'
alias gr++='f(){ g++ --std=c++20 -Wall $1 && ./a.out $2; unset -f f; }; f'

alias ytd='youtube-dl -f best --cookies /home/a/cookies.txt --restrict-filenames'
alias ytdb0='youtube-dl -f best --cookies /home/a/cookies.txt --restrict-filenames --batch-file b0'
alias ytdb1='youtube-dl -f best --cookies /home/a/cookies.txt --restrict-filenames --batch-file b1'

alias prime='/opt/google/chrome/google-chrome --profile-directory=Default --app-id=opcphpnjbcikadmhphfngbokieemooem'
alias netflix='/opt/google/chrome/google-chrome --profile-directory=Default --app-id=ajncmjojnddbipcddbphleijkdchpamf'

alias ksaws='ssh -i /home/a/centos0.pem ec2-user@13.239.17.202'
alias jno='jupyter notebook --ip=0.0.0.0 --port=8080'
alias nlpv='source /home/a/nlp-algorithm-design/nlp_venv/bin/activate'
