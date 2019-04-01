# Rbenv

## Install

### Git source


For a more automated install, you can use
[rbenv-installer](https://github.com/rbenv/rbenv-installer#rbenv-installer).
If you prefer a manual approach, follow the steps below.

This will get you going with the latest version of rbenv without needing
a systemwide install.

1. Clone rbenv into `~/.rbenv`.

    ~~~ sh
    git clone https://github.com/rbenv/rbenv.git ~/.rbenv
    ~~~

    Optionally, try to compile dynamic bash extension to speed up rbenv. Don't
    worry if it fails; rbenv will still work normally:

    ~~~
    cd ~/.rbenv && src/configure && make -C src
    ~~~

2. Add `~/.rbenv/bin` to your `$PATH` for access to the `rbenv`
   command-line utility.

   * For **bash**:
     ~~~ bash
     echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
     ~~~
     
   * For **Ubuntu Desktop**:
     ~~~ bash
     echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
     ~~~
     
   * For **Zsh**:
     ~~~ zsh
     echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
     ~~~
   
   * For **Fish shell**:
     ~~~ fish
     set -Ux fish_user_paths $HOME/.rbenv/bin $fish_user_paths
     ~~~

3. Set up rbenv in your shell.

   ~~~ sh
   $ ~/.rbenv/bin/rbenv init
   ~~~
   
   Follow the printed instructions to [set up rbenv shell integration](#how-rbenv-hooks-into-your-shell).

4. Restart your shell so that PATH changes take effect. (Opening a new
   terminal tab will usually do it.)

5. Verify that rbenv is properly set up using this
   [rbenv-doctor](https://github.com/rbenv/rbenv-installer/blob/master/bin/rbenv-doctor) script:

    ~~~ sh
    $ curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
    Checking for `rbenv' in PATH: /usr/local/bin/rbenv
    Checking for rbenv shims in PATH: OK
    Checking `rbenv install' support: /usr/local/bin/rbenv-install (ruby-build 20170523)
    Counting installed Ruby versions: none
      There aren't any Ruby versions installed under `~/.rbenv/versions'.
      You can install Ruby versions like so: rbenv install 2.2.4
    Checking RubyGems settings: OK
    Auditing installed plugins: OK
    ~~~

6. _(Optional)_ Install [ruby-build][], which provides the
   `rbenv install` command that simplifies the process of
   [installing new Ruby versions](#installing-ruby-versions).
 
 ### To install from another sources, see
 
    https://github.com/rbenv/rbenv/blob/master/README.md#installation