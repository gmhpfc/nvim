
# Neovim with starter as lazyvim and amendments 
A [Neovim](https://neovim.io) setup  use extra to enable on disable a plugins start with  [LazyVim](https://github.com/LazyVim/LazyVim)

##  Getting Started

1. Install [Neovim] version 10 or higher on your machine
2. Remove or backup your existing configuration files in `~/.config/nvim`
3. Clone the git repo `git c clone https://github.com/gmhpfc/nvim ~/.config/nvim`
4. Run `nvim` from a terminal
5. Use the `LazyExtras` option from within Neovim to enable optional plugins
6. Problem :
  - Extra build in hijacked -- config.lazy.lua 
  - { import = "plugins.extras.util.lazyrc" } 
  - to load layvim extras comment out the above lines
7. Checkhealth and details config information and error
    :Checkhealth
8. further action 
- [ ] remove task duplicity with overlapping noice, trouble, telescope, qlist , rust-tool, rust-extensions etc.
```lua 
    FIXIT: load what you need then test for conflict before serious work

    TODO: Have fun with neovim and its configurations -
    TODO: Enable plugins in extra by pressing x 'telescope-in-workflow' 
    NOTE: and enjoy the workflow with telescope 🐸
```

wip
