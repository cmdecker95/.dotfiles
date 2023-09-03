# New Mac? 👨🏽‍💻

Follow these steps to **automatically install all your applications** on a new Mac!

> #### These steps assume that you have a `.dotfiles` repo on your own GitHub account.
>
> If you don't already have one, **fork this repo**, and customize the settings to your liking!
> I recommend that you create your own Brewfile by running `brew bundle dump`.
>
> #### New to [Homebrew](https://brew.sh)?
>
> It's a _package manager_ to neatly and efficiently install apps to MacOS (or Linux). No more "drag to install" prompts!

## 1. Install the Apple CLT

This can take several minutes sometimes, depending on your connection.

```Bash
xcode-select --install
```

## 2. Connect to GitHub

#### Generate SSH key

- Press `Enter` when prompted for file name.
- Enter passphrase for key.

```Bash
ssh-keygen -t ed25519 -C "your.email@here.com"
```

#### Start SSH Agent in the background.

```Bash
eval "$(ssh-agent -s)"
```

#### Create and open SSH config file.

```Bash
touch ~/.ssh/config
open ~/.ssh/config
```

#### Paste this into the SSH config file:

```Bash
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
```

#### Add SSH key to SSH Agent

```Bash
ssh-add -K ~/.ssh/id_ed25519
```

#### Copy public SSH key to clipboard.

```Bash
pbcopy < ~/.ssh/id_ed25519.pub
```

#### Paste SSH key in the "Key" field here:

- GitHub > Settings > SSH and GPG keys > New SSH key
- Click "Add SSH key" and enter passphrase.

## 3. Clone your Dotfiles

#### Configure temporary Git globals

```Bash
git config --global user.name "Your Name"
git config --global user.email "your.email@here.com"
```

#### Clone your repo

```Bash
git clone git@github.com:<github_user>/.dotfiles.git
```

#### Symlink resources from repo to user root

```Bash
rm ~/.gitconfig
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.zprofile ~/.zprofile
```

## 4. Install Homebrew

#### Install Homebrew

```Bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

#### Add Homebrew to PATH

```Bash
eval "$(/opt/homebrew/bin/brew shellenv)"
```

#### Install everything

```Bash
brew bundle --file ~/.dotfiles/Brewfile
```
