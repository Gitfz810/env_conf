if status is-interactive
    if test (uname) = "Darwin"
        fish_add_path -g /usr/local/bin
    end

    if test -d $HOME/.local/bin
        fish_add_path -g $HOME/.local/bin
    end

    if test -d $HOME/.cargo/bin
        fish_add_path -g $HOME/.cargo/bin
    end

    if test -d /opt/homebrew/bin
        fish_add_path -g /opt/homebrew/bin
    end
end

# delete welcome message of fish shell
set fish_greeting ""
set -g fish_prompt_pwd_dir_length 0

set -gx LC_ALL "en_US.UTF-8"
set -gx CLICOLOR 1
set -gx GREP_COLOR "1;31"

# customize colors for commands output
set -gx LESS_TERMCAP_mb \e'[01;31m'       # begin blinking
set -gx LESS_TERMCAP_md \e'[01;38;5;74m'  # begin bold
set -gx LESS_TERMCAP_me \e'[0m'           # end mode
set -gx LESS_TERMCAP_se \e'[0m'           # end standout-mode
set -gx LESS_TERMCAP_so \e'[38;5;016m\E[48;5;220m'    # begin standout-mode - info box
set -gx LESS_TERMCAP_ue \e'[0m'           # end underline
set -gx LESS_TERMCAP_us \e'[04;38;5;146m' # begin underline

