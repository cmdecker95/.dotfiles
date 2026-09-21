# `.dotfiles`

My dotfiles include:

- aliases
- shell config
- tmux config
- Brewfile

## Usage

Run `dotfiles.sh` (meant for macOS).

### 1. Install the Apple Command Line Tools (CLT)

```sh
xcode-select --install
```

### 2. Connect to GitHub

#### Generate SSH key on local machine

- Press `Enter` when prompted for file name.
- Enter passphrase for key.

```sh
ssh-keygen -t ed25519 -C "50999401+cmdecker95@users.noreply.github.com"
ssh-agent -s
cat <<EOL > ~/.ssh/config
Host github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
EOL
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
pbcopy < ~/.ssh/id_ed25519.pub
```

#### Add SSH key to GitHub settings

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
git clone git@github.com:cmdecker95/.dotfiles.git ~/.dotfiles
```

### 4. Install

```sh
~/.dotfiles/dotfiles.sh
```
