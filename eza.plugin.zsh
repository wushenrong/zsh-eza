# SPDX-License-Identifier: MIT

if ! type eza >/dev/null 2>&1; then
  print 'eza not found. Please install eza before using this plugin or use the zsh-ls plugin.' >&2
  return 1
fi

alias ls='eza -Fgh --group-directories-first --git --git-ignore --icons --color-scale all --hyperlink'
alias lh='ls -d .*'
alias lD='ls -D'
alias lc='ls -1'

alias ll='ls -l'
alias la='ll -a'

if [[ "$EZA_ENABLE_SORT_ALIASES" = 1 ]]; then
  alias lA='ll --sort=acc'
  alias lC='ll --sort=cr'
  alias lM='ll --sort=mod'
  alias lS='ll --sort=size'
  alias lX='ll --sort=ext'
  alias llm='lM'
fi

if [[ "$EZA_ENABLE_EXTENDED_ALIASES" = 1 ]]; then
  alias l='la -a'
  alias lsa='l'
  alias lx='l -HimUuS'
  alias lxa='lx -Z@'
fi

alias lt='ls -T'
alias tree=lt
