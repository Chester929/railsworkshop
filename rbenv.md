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
   ~/.rbenv/bin/rbenv init
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
 
 ## How to use
 
 ### Installing Ruby versions
 
 The `rbenv install` command doesn't ship with rbenv out of the box, but
 is provided by the [ruby-build][] project. If you installed it either
 as part of GitHub checkout process outlined above or via Homebrew, you
 should be able to:
 
 ~~~ sh
 # list all available versions:
 rbenv install -l
 
 # install a Ruby version:
 rbenv install 2.4.1
 ~~~
 
 Alternatively to the `install` command, you can download and compile
 Ruby manually as a subdirectory of `~/.rbenv/versions/`. An entry in
 that directory can also be a symlink to a Ruby version installed
 elsewhere on the filesystem. rbenv doesn't care; it will simply treat
 any entry in the `versions/` directory as a separate Ruby version.

### rbenv local

Sets a local application-specific Ruby version by writing the version
name to a `.ruby-version` file in the current directory. This version
overrides the global version, and can be overridden itself by setting
the `RBENV_VERSION` environment variable or with the `rbenv shell`
command.

    rbenv local 1.9.3-p327

When run without a version number, `rbenv local` reports the currently
configured local version. You can also unset the local version:

    rbenv local --unset

### rbenv global

Sets the global version of Ruby to be used in all shells by writing
the version name to the `~/.rbenv/version` file. This version can be
overridden by an application-specific `.ruby-version` file, or by
setting the `RBENV_VERSION` environment variable.

    rbenv global 1.8.7-p352

The special version name `system` tells rbenv to use the system Ruby
(detected by searching your `$PATH`).

When run without a version number, `rbenv global` reports the
currently configured global version.