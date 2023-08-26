# Git aliases
alias pull='git pull'
# __git_complete pull _git_pull
alias push='git push'
# __git_complete push _git_push
alias cmm='git commit -m'
alias cm='git commit'
alias add='git add .'
alias co='git checkout'
# __git_complete co _git_checkout
alias st='git status'
alias del-branch='git branch -D'
# __git_complete del-branch _git_branch -D
alias cmm-amend='git commit --amend'
alias log='git log --oneline'

# ~
alias nagasaki='rm -rf'

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
ZSH_THEME="powerlevel10k/powerlevel10k"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh