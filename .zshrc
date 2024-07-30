# Q pre block. Keep at the top of this file.
q_pre_block_file="${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
[[ -f "$q_pre_block_file" ]] && builtin source "$q_pre_block_file"

# Aliases
alias dotfiles="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias df="dotfiles"
alias pn="pnpm"
alias h2='pn $(npm prefix -s)/node_modules/.bin/shopify hydrogen'

# Environment variables
export BAT_THEME="Sublime Snazzy"
export LC_ALL="en_US.UTF-8"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PNPM_HOME:$HOME/.console-ninja/.bin:$PATH"

# CLI tools
eval "$(rbenv init - zsh)"
eval "$(thefuck --alias)"

# Zsh plugins
source "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# Zsh configuration
fpath+=("$(brew --prefix)/share/zsh/site-functions")
fpath+=("$(brew --prefix)/share/zsh-completions:$fpath")
autoload -Uz compinit
compinit
autoload -U promptinit
promptinit
prompt pure
zstyle :prompt:pure:git:stash show yes

# Bun completions
bun_completions_file="$HOME/.bun/_bun"
[ -s "$bun_completions_file" ] && source "$bun_completions_file"

# Fig export
fig_export_file="$HOME/fig-export/dotfiles/dotfile.zsh"
[[ -f "$fig_export_file" ]] && builtin source "$fig_export_file"

# Q post block. Keep at the bottom of this file.
q_post_block_file="${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
[[ -f "$q_post_block_file" ]] && builtin source "$q_post_block_file"
