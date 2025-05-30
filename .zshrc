batpager() {  
  bat --paging=always "$@"  
}  # Função: sempre usa 'bat' com paginação  
export PAGER=batpager  # Define 'batpager' como pager padrão  

alias find='fd'  # 'fd' no lugar de 'find'  

alias tr='tree -C'  # 'tree' colorido no lugar de 'tr'  

alias vi='nvim'  # 'nvim' no lugar de 'vi'  

eval "$(zoxide init zsh)"  # Ativa 'zoxide' no Zsh (atalho de diretórios)  

alias c='clear'  # 'c' limpa o terminal  

eval "$(starship init zsh)"  # Ativa 'starship' (prompt personalizado)  

export FZF_CTRL_T_OPTS="--preview 'bat --style=numbers --color=always --line-range=:500 {}'"  
# Configura preview com 'bat' no FZF (Ctrl+T)  

eval "$(fzf --zsh)"  # Ativa 'fzf' no Zsh (busca fuzzy)  
