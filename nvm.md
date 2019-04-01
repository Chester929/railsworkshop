# NVM installation

## Git source

Clone this repo in the root of your user profile

    git clone https://github.com/creationix/nvm.git ~/.nvm

Checkout the latest version
    
    cd ~/.nvm
    git checkout v0.34.0
    
Activate nvm by sourcing it from your shell

    . nvm.sh
    
Now add these lines to your `~/.bashrc`, `~/.profile`, or `~/.zshrc` file to have it automatically sourced upon login: (you may have to add to more than one of the above files)

    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
    
## To install from another sources, see

    https://github.com/creationix/nvm#installation-and-update