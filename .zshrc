# Created by newuser for 5.9
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# 命令提示符(prompt sign) \u = username,\h = hostname,\W = current working directory
PS1='[\u@\h \W]\$ '

# eval "$(starship init zsh)"
eval "$(lua /usr/share/z.lua/z.lua  --init zsh)"

export PATH=~/.npm-global/bin:$PATH
export PATH=~/.treesitter/tree-sitter:$PATH
# 解决终端中文乱码
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export TMUX_TMPDIR=~/.tmux

alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# alias ls='ls --color=auto'
alias ls="lsd"
alias la="lsd -a"
alias ll="lsd -lh"
alias lr="lsd -lR"
alias rm="trash"
alias rr="trash-restore"
alias pip='pip3'
alias cat='bat'
alias lg="lazygit"

# nvims
alias nvim="/usr/bin/nvim"
alias nvim-lazy="NVIM_APPNAME=LazyVim nvim"
alias nvim-kick="NVIM_APPNAME=kickstart nvim"
alias nvim-chad="NVIM_APPNAME=NvChad nvim"
alias nvim-astro="NVIM_APPNAME=AstroNvim nvim"

function nvims() {
  items=("default" "kickstart" "LazyVim" "NvChad" "AstroNvim")
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "default" ]]; then
    config=""
  fi
  NVIM_APPNAME=$config nvim $@
}
bindkey -s ^a "nvims\n"


# export HTTPS_PROXY=https://127.0.0.1:7890
# export HTTP_PROXY=http://127.0.0.1:7890
# export FTP_PROXY=http://127.0.0.1:7890/
# export all_proxy=socks5://127.0.0.1:7890
alias setproxy="export ALL_PROXY=socks5://127.0.0.1:7890; echo 'SET PROXY SUCCESS!!!'"
alias unsetproxy="unset ALL_PROXY; echo 'UNSET PROXY SUCCESS!!!'"
# 打开终端自动开启代理
setproxy

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
ZSH_THEME="powerlevel10k/powerlevel10k"

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme 
source /usr/share/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/autojump/autojump.zsh
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
