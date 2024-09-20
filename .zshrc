# Path configuration
# Set PATH to prioritize Homebrew binaries
export PATH="/opt/homebrew/bin:$PATH"

# Language environment settings
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=zh_CN.UTF-8

# Homebrew configuration for China
export HOMEBREW_API_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"

# Oh My Zsh configuration
export ZSH="$HOME/.oh-my-zsh"
plugins=(git)

# Powerlevel10k instant prompt initialization
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# NVM (Node Version Manager) configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # Load NVM
[ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # Load NVM bash completion


# To activate powerlevel10k theme, uncomment the following line
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# zsh-syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases
alias zshconfig="cursor ~/.zshrc"
alias ohmyzsh="cursor ~/.oh-my-zsh"

# Display system information on startup (uncomment one of the following lines)
# fastfetch
# jp2a --colors --term-fit ~/Documents/avatars/ins/dev1.png
