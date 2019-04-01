# GIT

## Install

* Mac OS
    ~~~bash
    brew install git
    ~~~
* Debian-based linux systems
    ~~~bash
    sudo apt-get install git
    ~~~
* Red Hat-based linux systems
    ~~~bash
    sudo yum install git
    ~~~
    
## Configuration

     git config --global user.name "Jon Doe"
     git config --global user.email johndoe@example.com

Another configurations: https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration

## Using example

### Clone

    cd ~
    mkdir railsworkshop
    git clone git@github.com:Chester929/railsworkshop.git ./railsworkshop
    cd ./railsworkshop

### Basic new commit commands

    git pull                            # actualize actual branch
    git add /path/to/file               # add file/s wich will be commited and pushed
    git commit -m 'Some message'        # commit added files with message
    git push                            # push changes to actual branch

### Checkout and Merging examples

    git checkout -b railsworkshop
    git pull
    git checkout master
    git merge railsworkshop
    git push

## New merged lines :)

### Cherry pick

    git cherry-pick <commit reference number>   # take commit defined by reference number and insert it to actual branch
