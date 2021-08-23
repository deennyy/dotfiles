# Enable colors and change prompt:
autoload -U colors && colors
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
PS1="%B%{$fg[magenta]%}>%{$fg[magenta]%}>%{$fg[magenta]%}>%b "

# Custom Variables
EDITOR=nvim

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zshhistory
setopt appendhistory

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.

set -o vi

# Load aliases and shortcuts if existent.
[ -f "$HOME/.aliasrc" ] && source "$HOME/.aliasrc"

precmd() { eval "$PROMPT_COMMAND" }

PROMPT_COMMAND='printf "\033]0;%s@%s:%s\007" "${USER}" "${HOST}" "${PWD/#$HOME/~}"'

# Load ; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
