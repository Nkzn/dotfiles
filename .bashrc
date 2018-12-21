# bashrc

export PROMPT_DIRTRIM=2 # カレントディレクトリから数えて2つ表示。それ以降は省略記号

## for bash_completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

## ls color
alias ls='ls -G'

## git ps1
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[37m\][\[\033[36m\]\u\[\033[37m\]@\h \[\033[32m\]\w\[\033[37m\]]\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '

# 環境変数
export JAVA8_HOME="`/usr/libexec/java_home -v 1.8`"
export JAVA10_HOME="`/usr/libexec/java_home -v 10`"
export JAVA_HOME=$JAVA8_HOME

# PATH
export PATH=$HOME/bin:$PATH
export PATH=$HOME/git-cmds:$PATH
export PATH=$HOME/.anyenv/bin:$PATH

# alias
alias java10="$JAVA10_HOME/bin/java"
alias jshell10="$JAVA10_HOME/bin/jshell"
alias derived='rm -rf ~/Library/Developer/Xcode/DerivedData/*'
alias r='cd $(ghq root)/$(ghq list | peco)'
alias rc='code $(ghq root)/$(ghq list | peco)'

# anyenv
eval "$(anyenv init -)"

# Android
export ANDROID_HOME=~/Library/Android/sdk
export ANDROID_NDK=~/bin/android-ndk-r17b
export PATH=$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH

# opam (OCaml)
/Users/y.nakagawa/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# Flutter

export FLUTTER_HOME=/Users/y.nakagawa/bin/flutter
export PATH=$FLUTTER_HOME/bin:$PATH

# misc
