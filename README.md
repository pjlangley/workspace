# Workspace

This is a kind of generic workspace snapshot for my macOS setup, mainly for personal reference.
The repo root represents the home (`~/`) directory of my computer.

Whenever practical, my preference is to work from the command line. These workspace settings
will reflect that goal of mine. I like to explore productivity benefits and pleasant working
conditions from the CLI.

## Dependencies

In order to copy / paste these settings, the following dependencies are required:

- [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh/)
  - Follow their installation instructions.
  - This obviously assumes zsh shell usage; my current preference.
- [Vim Plug](https://github.com/junegunn/vim-plug)
  - Follow their installation instructions.
  - See `.vim/autoload/.gitkeep` for anything autoloaded; just this plugin manager for now.
  - See `.vimrc` for installed plugins.
  - I use [Vim Awesome](https://vimawesome.com/) to browse Vim plugins.
- [Homebrew](https://brew.sh/)
- [tmux](https://github.com/tmux/tmux)
  - Install with [brew](https://formulae.brew.sh/formula/tmux).
  - See `.tmux.conf` for installed plugins; all via [TPM](https://github.com/tmux-plugins/tpm).

## Git

Set a global Git user name and email address as standard:

```
git config --global user.email pjlangley@users.noreply.github.com
git config --global user.name pjlangley
```

_Override on a project by project basis as necessary._

---

Generate a new SSH key for GitHub access; GH has a [guide](https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) on this.

E.g.:

```
$ ssh-keygen -t rsa -b 4096 -C "pjlangley@users.noreply.github.com"
$ ... enter a passphrase for better security ...
$ ... save to ~/.ssh/id_rsa_pjlangley_github ...
```

**Setup an ssh host entry for the above (see `.ssh/config` in this repo).**

Add the ssh key into the agent:

```
$ ssh-add -K ~/.ssh/id_rsa_pjlangley_github
```

If the ssh agent isn't running, start the ssh agent:

```
$ eval "$(ssh-agent -s)"
```

Now you won't need to enter your passphrase during every remote Git command you make.

Finish by adding your public ssh key to your account; GH has a [guide](https://help.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account) on this.

## `node`

Node.js is installed via nvm, using the [`zsh-nvm`](https://github.com/lukechilds/zsh-nvm)
Oh My Zsh plugin; see `.zshrc`.

## `tree`

Provides a readable directory output - really useful for documentation etc.

Install from [brew](https://formulae.brew.sh/formula/tree).

## `jq`

Parse JSON on the command line.
Install from [brew](https://formulae.brew.sh/formula/jq).

## `watchman`

Watchman is a tool by Facebook for watching changes in the filesystem. It is highly recommended
for better performance with React Native development.

Install from [brew](https://formulae.brew.sh/formula/watchman).

## CocoaPods

For React Native development:

```
$ sudo gem install cocoapods
```

## Android Studio

For React Native development:

```
$ brew cask install android-studio
```

## JDK

Primarily for React Native development:

```
brew cask install adoptopenjdk/openjdk/adoptopenjdk8
```

## Bitwarden

My password manager of choice. I've installed the CLI for bitwarden
from [brew](https://formulae.brew.sh/formula/bitwarden-cli).

Combined with `jq`, you can list out matching items and copy/paste passwords:

```
$ bw list items --search github | jq
```

## Image optimisation

Install the ImageOptim app from [brew cask](https://formulae.brew.sh/cask/imageoptim).

Install the CLI for ImageOptim from [brew](https://formulae.brew.sh/formula/imageoptim-cli).
See the GH [repo](https://github.com/JamieMason/ImageOptim-CLI) for usage instructions, or
`imageoptim --help`.
