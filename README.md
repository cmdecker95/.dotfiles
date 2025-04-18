# `.dotfiles`

Dotfiles are files and folders on Unix-like systems starting with `.` that control the configuration of applications and shells on your system.

The dotfiles here include my personal:

- aliases
- shell config
- tmux config
- Brewfile

## Usage

There are two intended usage scenarios:

1. **GitHub Codespaces.** Any new Codespace that I start runs `setup.sh` on initialization, which just copies my `.bashrc` into the dev container. Other terminal-based configurations are skipped, since Codespace workflows are centered on VS Code.

2. **Personal Mac.** I run `dotfiles.sh` to clone and source my dotfiles on my Mac, whether to bootstrap a new one or get a fresh start on an old one.

> Prerequisites (instructions below)
>
> 1. Install Apple CLT
> 2. Connect to GitHub
> 3. Clone dotfiles repo

## Prerequisites for using on a personal Mac

### 1. Install the Apple Command Line Tools (CLT)

```sh
xcode-select --install
```

### 2. Connect to GitHub

#### 2a. Generate SSH key on local machine

- Press `Enter` when prompted for file name.
- Enter passphrase for key.

```sh
ssh-keygen -t ed25519 -C "50999401+cmdecker95@users.noreply.github.com"
ssh-agent -s
cat <<EOL > ~/.ssh/config
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
EOL
ssh-add -K ~/.ssh/id_ed25519
pbcopy < ~/.ssh/id_ed25519.pub
```

#### 2b. Add SSH key to GitHub settings

- **GitHub** > **Settings** > **SSH and GPG keys** > **New SSH key**
- Click **Add SSH key** and enter passphrase.

### 3. Clone `dotfiles` repo

#### 3a. Create temporary git settings

```sh
git config --global user.name "Christian Decker"
git config --global user.email "50999401+cmdecker95@users.noreply.github.com"
```

#### 3b. Clone repo

```sh
git clone https://github.com/cmdecker95/.dotfiles.git ~/.dotfiles
```

### 4. Install apps

```sh
brew bundle --file ~/.dotfiles/Brewfile install
```

### 5. Sync dotfiles

```sh

# Sync tmux
rm -rf ~/.tmux.conf
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

# Sync starship
rm -rf ~/.config/starship.toml
mkdir -p ~/.config
ln -s ~/.dotfiles/starship.toml ~/.config/starship.toml

# Sync zsh
rm -rf ~/.zprofile
rm -rf ~/.zshrc
ln -s ~/.dotfiles/.zprofile ~/.zprofile
ln -s ~/.dotfiles/.zshrc ~/.zshrc
```
