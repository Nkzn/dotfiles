export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/usr/X11/bin:/usr/texbin:~/bin:~/git-cmds

### Constant values ###
export LOLCOMMITS_FONT=/Library/Fonts/ヒラギノ角ゴ\ StdN\ W8.otf
export LOLCOMMITS_DELAY=3
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_21.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home
export ANDROID_HOME=/Users/nakagawa/android-sdk
export GROOVY_HOME=/opt/boxen/homebrew/opt/groovy/libexec

### Path settings ###
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$PATH:/opt/boxen/homebrew/opt/go/libexec/bin
export PATH=$PATH:/Users/nakagawa/go_appengine

alias now="git now"
alias nowf="git now --fixup"

# for go lang
if [ -x "`which go`" ]; then
  export GOROOT=`go env GOROOT`
  export GOPATH=$HOME/go
  export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
fi

# The next line updates PATH for the Google Cloud SDK.
source '/Users/nakagawa/google-cloud-sdk/path.zsh.inc'

# The next line enables bash completion for gcloud.
# source '/Users/nakagawa/google-cloud-sdk/completion.zsh.inc'

# source ~/.nvm/nvm.sh
# nvm use "v0.11.7"
# ssh-add ~/.ssh/bitbucket_watercell_rsa

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="arrow"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git autojump encode64 git-flow golang)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# added by travis gem
[ -f /Users/nakagawa/.travis/travis.sh ] && source /Users/nakagawa/.travis/travis.sh
