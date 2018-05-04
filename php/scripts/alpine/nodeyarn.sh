#!/bin/bash

set -euf -o pipefail

export VERSION=v10.0.0
export NPM_VERSION=6
export YARN_VERSION=latest

 # NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

{ \
  echo 'export NVM_DIR="$HOME/.nvm"'; \
  echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm'; \

} > ~/.profile

nvm install node -s
nvm alias default node
npm i -g npm

curl -o- -L https://yarnpkg.com/install.sh | bash
