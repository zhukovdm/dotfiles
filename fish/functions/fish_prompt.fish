function fish_prompt
    set -l last_status $status

    # user and host
    set_color -o green
    echo -n (whoami)@(prompt_hostname)
    set_color normal

    # working directory
    set_color -o blue
    echo -n ' '(prompt_pwd --full-length-dirs 99)
    set_color normal

    # git branch if any
    set -l branch (git rev-parse --abbrev-ref HEAD 2>/dev/null)
    if test -n "$branch"
        set_color -o yellow
        echo -n " ($branch)"
        set_color normal
    end

    # new line
    echo
    echo -n '$ '
end
