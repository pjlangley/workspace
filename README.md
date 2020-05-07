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
  - See `.vim/plugged/.gitkeep` for installed plugins.
  - I use [Vim Awesome](https://vimawesome.com/) to browse Vim plugins.
- `tree` command
  - Provides a readable directory output - really useful for documentation etc.
  - For macOS, you can use [brew](https://formulae.brew.sh/formula/tree) to install it.
- [tmux](https://github.com/tmux/tmux)
  - > tmux is a terminal multiplexer: it enables a number of terminals to be created, accessed, and controlled from a single screen.
  - For macOS, you can use [brew](https://formulae.brew.sh/formula/tmux) to install it.
  - `mkdir -p ~/.tmux/plugins && touch ~/.tmux.conf`.
  - [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm).
    - This has almost been my one-stop-shop for tmux plugins.
    - Follow the installation instructions there.
    - Once installed, you can add your plugins to `~/.tmux.conf` then `prefix` + `I` to install,
      as per official instructions. Take a look at my own [tmux config](./.tmux.conf#L2-L6) for examples.
  - [Tmux Resurrect](https://github.com/tmux-plugins/tmux-resurrect)
    - > Restore tmux environment after system restart.
    - This is probably the staple tmux plugin for me.
    - Follow their official installation instructions (add to `~/.tmux.conf` then `prefix` + `I`).
  - [Tmux continuum](https://github.com/tmux-plugins/tmux-continuum)
    - This extends from Tmux Resurrect by auto saving your environment.
      A must have plugin for me.
    - Follow their official installation instructions (add to `~/.tmux.conf` then `prefix` + `I`).
  - [Tmux Yank](https://github.com/tmux-plugins/tmux-yank)
    - > Copy to the system clipboard in tmux.
    - This is one of those things you expect _just to work_, but one doesn't simply copy/paste without
    the help of this extra plugin! This plugin enables seemless copy/paste.
    - Note the official installation instructions depending on your OS. E.g. for macOS you often
      need `reattach-to-user-namespace`, which you can get from 
      [brew](https://formulae.brew.sh/formula/reattach-to-user-namespacehttps://formulae.brew.sh/formula/reattach-to-user-namespace). Anyway, it's all in the docs for this plugin.
  - [Tmux Prefix Highlight](https://github.com/tmux-plugins/tmux-prefix-highlight)
    - > Plugin that highlights when you press tmux prefix key.
    - This is a nice to have, but it's useful to see a visual indication of when the prefix key has
      been activated.
    - Follow their official installation instructions (add to `~/.tmux.conf` then `prefix` + `I`).
  - [Tmux Sensible](https://github.com/tmux-plugins/tmux-sensible)
    - Consider installing this. For the record, I haven't. My approach was to copy/paste the settings I
      specifically wanted. Although, you should probably install this unless you're an exceptionally
      fussy ~~control freak~~ person like me 😁
  - [Tmux GitBar](https://github.com/arl/tmux-gitbar)
    - Outside of the comforts of TPM, this plugin must be installed directly (at the time of writing).
    - Follow the official installation instructions. It involves cloning the repo and adding a line to
      your `~/tmux.conf`, [like so](./.tmux.conf#L10).

## Git

Set a global Git user name and email address as standard:

```
git config user.email pjlangley@users.noreply.github.com
git config user.name pjlangley
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

