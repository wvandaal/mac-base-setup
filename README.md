# Setting Up A Clean Dev Environment on a New Mac

Quick and clean Developer Environment setup

## Step 1: Install Apps
Run the following command from your standard Terminal app

```bash
$ sh <(curl -fsSL https://raw.githubusercontent.com/wvandaal/mac-base-setup/master/install_applications.sh)
```

This will download Homebrew, install XCode CLI tools, and install the following applications:

- Chrome
- Slack
- Spotify
- Intellij
- Sublime Text 3
- iTerm2
- SizeUp
- Postman

As well as the following CLI tools, dev dependencies, and build tools
- [Tree](https://linux.die.net/man/1/tree)
- Zsh
  - Antigen plugin manager
- Maven
- Java 8
- Java (latest)
- JEnv
- Leiningen
- Scala
- Sbt
- RabbitMQ

## Step 2a: Set Up Preferences with Mackup
Assuming you have Mackup up and running on a cloud storage drive (OneDrive for Northwestern Mutual), simply create a `.mackup.cfg` file in your `~/` directory and point it to the corresponding drive in your file system:

```ini
[storage]
engine = file_system
path = OneDrive - Northwestern Mutual
```

Save the file and then run `mackup restore` from the command line. For more information, read the [Mackup Docs](https://github.com/lra/mackup).

## Step 2b: Set Up Preferences (Zsh/Vim) without Mackup
Without Mackup, the best you can do is clone down your dotfiles for Zsh and Vim. To keep this light and allow for customization, it's best to simply curl these files from this repo and store them locally, rather than keeping them in version control and symlinking them. Similar to step 1, run the following to copy the two dotfiles into your home directory.

```bash
$ sh <(curl -fsSL https://raw.githubusercontent.com/wvandaal/mac-base-setup/master/install_dotfiles.sh)
```

## Step 3: Change Zsh to Default Shell

Finally, run the following command from the terminal to set Zsh as your default shell

```bash
$ chsh -s $(which zsh)
```
