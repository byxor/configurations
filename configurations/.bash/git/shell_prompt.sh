function get_current_git_branch {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

export PS1="\u@\h \w \$(get_current_git_branch) $ "

