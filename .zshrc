# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.tools:/usr/local/bin:$PATH
source $HOME/.nix-profile/etc/profile.d/nix.sh

# Path to your oh-my-zsh installation.
export ZSH=/home/joyce/.oh-my-zsh
export VIRTUAL_ENV_DISABLE_PROMPT=
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="lb"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
plugins=(git history-substring-search)

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
export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export TERM=xterm-256color # or screen-256color
export EDITOR=/usr/bin/nvim
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUAL_ENV_DISABLE_PROMPT=true
source /usr/bin/virtualenvwrapper.sh

#Aliases
alias shutdown="sudo shutdown -hP now"
alias aoeu='setxkbmap us'
alias asdf='setxkbmap dvorak'
alias openports="netstat --all --numeric --programs --inet --inet6"
alias ison="ps -A | grep $1"
alias listfonts="fc-list | sed 's,:.*,,' | sort -u"
alias fontinfo="otfinfo -f"
# pacman/pacaur
alias pacall="LC_ALL=C pacman -Qi | sed -n '/^Name[^:]*: \(.*\)/{s//\1 /;x};/^Installed[^:]*: \(.*\)/{s//\1/;H;x;s/\n//;p}' | sort -nk2 | column -t"
alias pacupg='yay -Syu --noconfirm' # Synchronize with repositories before upgrading packages that are out of date on the local system.
alias pacupgf='yay -Syu'
alias pacin='yay -S' # Install specific package(s) from the repositories
alias pacre='yay -R' # Remove the specified package(s), retaining its configuration(s) and required dependencies
alias pacrem='yay -Rns' # Remove the specified package(s), its configuration(s) and unneeded dependencies
alias pacinf='yay -Si' # Display information about a given package in the repositories
alias pacs='yay -Ss' # Search for package(s) in the repositories
alias pacfiles='yay -Ql' # list the files from a certain pacagke
alias git-prune="git branch --merged >/tmp/merged-branches && vi /tmp/merged-branches && xargs git branch -d </tmp/merged-branches"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
