
function prompt_char {
    git branch >/dev/null 2>/dev/null && echo 'λ' && return
    hg root >/dev/null 2>/dev/null && echo 'Њ' && return
    echo '$'
}

local ret_status="%(?:%{$fg_bold[green]%}●:%{$fg_bold[red]%}●%s)"
PROMPT='[%{$FG[154]%}%n@%m%{$fg[white]%}:%{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}]$(parse_git_dirty)$(prompt_char)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
