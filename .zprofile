# OrbStack integration (оставлено, если нужно)
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

# Инициализация Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Настройка pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# Настройка autojump (если установлен)
if [[ -s "$(brew --prefix autojump)/etc/profile.d/autojump.sh" ]]; then
  source "$(brew --prefix autojump)/etc/profile.d/autojump.sh"
fi

export PATH="/opt/homebrew/opt/qt@5/bin:$PATH"

alias git-clean-branches='git branch | grep -v "^*" | xargs git branch -D'
