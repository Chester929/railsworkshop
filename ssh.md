# SSH

## Generate ssh key
This creates a new ssh key, using the provided email as a label.

    ssh-keygen -t rsa -b 4096 -C "your_email@example.com"


When you're prompted to "Enter a file in which to save the key," press Enter. This accepts the default file location.

    > Enter a file in which to save the key (/Users/you/.ssh/id_rsa): [Press enter]
    > Enter passphrase (empty for no passphrase): [Type a passphrase]
    > Enter same passphrase again: [Type passphrase again]

## Adding your SSH key to the ssh-agent

Start the ssh-agent in the background.

    eval "$(ssh-agent -s)"

* If you're using macOS Sierra 10.12.2 or later, you will need to modify your `~/.ssh/config` file to automatically load keys into the ssh-agent and store passphrases in your keychain...
    ~~~bash
    Host *
      AddKeysToAgent yes
      UseKeychain yes
      IdentityFile ~/.ssh/id_rsa
    ~~~
* ...or add your SSH private key to the ssh-agent and store your passphrase in the keychain.
    ~~~bash
    ssh-add -K ~/.ssh/id_rsa
    ~~~
    
## Adding your SSH to GitHub
See https://help.github.com/en/articles/adding-a-new-ssh-key-to-your-github-account