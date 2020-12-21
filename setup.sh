#!/bin/sh

set -e

ABSPATH=$(cd "$(dirname $0)"; pwd)

find $ABSPATH \
  -mindepth 1 -maxdepth 1 \
  -not \( -name README.md -o -name .git -o -name .gitmodules -o -name $(basename $0) \) \
  | xargs -I@ ln -s @ $HOME

git clone https://github.com/riywo/anyenv ~/.anyenv
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install wget
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O /usr/local/etc/bash_completion.d/git-completion.bash
chmod a+x /usr/local/etc/bash_completion.d/git-completion.bash
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O /usr/local/etc/bash_completion.d/git-prompt.sh
chmod a+x /usr/local/etc/bash_completion.d/git-prompt.sh
