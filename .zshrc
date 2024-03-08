# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
alias dotfiles="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias df="dotfiles"
alias pn="pnpm"

eval "$(rbenv init - zsh)"
eval "$(thefuck --alias)"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpath+=("$(brew --prefix)/share/zsh/site-functions")

autoload -U promptinit; promptinit
prompt pure

zstyle :prompt:pure:git:stash show yes

export BAT_THEME="Sublime Snazzy"
export LC_ALL="en_US.UTF-8"

# bun completions
[ -s "/Users/thomastuvignon/.bun/_bun" ] && source "/Users/thomastuvignon/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/thomastuvignon/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Shopify Hydrogen alias to local projects
alias h2='pn $(npm prefix -s)/node_modules/.bin/shopify hydrogen'

PATH=~/.console-ninja/.bin:$PATH

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
