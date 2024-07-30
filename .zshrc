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

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/thomastuvignon/Library/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Console Ninja
export PATH=~/.console-ninja/.bin:$PATH

# Q post block. Keep at the bottom of this file.
q_post_block_file="${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
[[ -f "$q_post_block_file" ]] && builtin source "$q_post_block_file"
