# Dotfiles - Lazyvim + Tmux + Oh-my-zsh
**Remmember to place .tmux.conf and .zshrc in the correct dir**

## Lazyvim
My Lazyvim config is developed from a starter template for [LazyVim](https://github.com/LazyVim/LazyVim). Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

# Possible Error
## Neotree and mini-starter (Update 23.02.2024)
The line installed_version: 8 is removed from lazy-lock.json compared to the current original Lazyvim setup to bypass the error. Still don't know why

## LSP Problems
### Code suggestion error
Check lsp.lua

# LSP
## Ruby (Solargraph)
+ Have not find out a way to bypass double warning when using Rubocop with Solargraph (Not Important)
### Solargraph
For scripting Ruby Project, use *bundle init* for Solargraph to detect the root of project
+ Use .solargraph.yaml to config the Solargraph (e.g. exclude and include files)
