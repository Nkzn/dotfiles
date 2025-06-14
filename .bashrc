# bashrc

export PROMPT_DIRTRIM=2 # カレントディレクトリから数えて2つ表示。それ以降は省略記号

## for bash_completion
if [ -f $(brew --prefix)/etc/bash_completion.d/git-prompt.sh ]; then
  source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
fi
if [ -f $(brew --prefix)/etc/bash_completion.d/git-completion.bash ]; then
  source $(brew --prefix)/etc/bash_completion.d/git-completion.bash
fi

## ls color
alias ls='ls -G'

## git ps1
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[37m\][\[\033[36m\]\u\[\033[37m\]@\h \[\033[32m\]\w\[\033[37m\]]\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '

# anyenv
eval "$(anyenv init -)"

# 環境変数
export JAVA8_HOME="`/usr/libexec/java_home -v 1.8`"
export JAVA10_HOME="`/usr/libexec/java_home -v 10`"
export JAVA17_HOME="`/usr/libexec/java_home -v 17`"
export JAVA21_HOME="`/usr/libexec/java_home -v 21`"
export JAVA_HOME=$JAVA17_HOME
export GOPATH=$HOME/dev

# PATH
export PATH=$HOME/bin:$PATH
export PATH=$HOME/git-cmds:$PATH
export PATH=$HOME/.anyenv/bin:$PATH
export PATH=$HOME/flutter/bin:$PATH
export PATH=$HOME/flutter/.pub-cache/bin:$PATH
export PATH=$HOME/flutter/bin/cache/dart-sdk/bin/:$PATH
export PATH=$JAVA_HOME/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$GOPATH/bin:$PATH
export PATH=$HOME/.deno/bin:$PATH
export PATH=/opt/homebrew/opt/postgresql@13/bin:$PATH
export PATH="${AQUA_ROOT_DIR:-${XDG_DATA_HOME:-$HOME/.local/share}/aquaproj-aqua}/bin:$PATH"

# alias
alias java10="$JAVA10_HOME/bin/java"
alias jshell10="$JAVA10_HOME/bin/jshell"
alias derived='rm -rf ~/Library/Developer/Xcode/DerivedData/*'
alias r='cd $(ghq root)/$(ghq list | peco)'
alias rc='code $(ghq root)/$(ghq list | peco)'
alias be='bundle exec'
alias rg="$HOME/.claude/local/node_modules/@anthropic-ai/claude-code/vendor/ripgrep/arm64-darwin/rg"

# Android
export ANDROID_HOME=~/Library/Android/sdk
export ANDROID_NDK=~/bin/android-ndk-r17b
export PATH=$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH

# opam (OCaml)
$HOME/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# Flutter
export FLUTTER_HOME=/Users/y.nakagawa/bin/flutter
export PATH=$FLUTTER_HOME/bin:$PATH

# zoxide
eval "$(zoxide init bash)"

# misc
. "$HOME/.cargo/env"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
alias claude="$HOME/.claude/local/claude"
