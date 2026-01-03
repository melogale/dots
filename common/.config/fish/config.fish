set fish_greeting ""
set -gx XDG_DATA_HOME ~/.local/share
fish_add_path ~/scripts

function fish_prompt
    string join '' \
        -- (set_color magenta) (fish_git_prompt '(%s) ') \
        (set_color normal) '[' \
        (set_color green) (whoami) (set_color normal) '@' \
        (set_color blue) (prompt_hostname) (set_color normal) ':' \
        (set_color cyan) (prompt_pwd) (set_color normal) ']' \
        (set_color normal) '$ '
end

if status is-interactive
    if test -f ~/.cache/wal/colors.fish
        source ~/.cache/wal/colors.fish
    end
    if test -f ~/.cache/wal/sequences
        cat ~/.cache/wal/sequences
    end
end
