# vim:ft=zsh ts=4 sw=4 sts=4
#
################################################################################
#
# Jumbo ZSHrimp
# A delicious zsh theme. Preferably covered in coconut and deep-fried.
#
# Inspired by agnoster's Theme:
# https://gist.github.com/3712874
#
################################################################################

typeset -aHg JUMBOZSHRIMP_PROMPT_SEGMENTS=(
    prompt_dir
)

PRIMARY_FG=white
PRIMARY_BG=black

SEGMENT_START="\ue0b6"
SEGMENT_END="\ue0b4"
BRANCH="\ue0a0"
DETACHED="\u27a6"
PLUSMINUS="\u00b1"

function reset_typeface() {
    print -n "%{%f%k%b%}"
}

function prompt_segment() {
    local fg bg fg_ bg_
    [[ -n $2 ]] && fg="%F{$2}" && fg_="%F{$3}" || fg="%f"
    [[ -n $3 ]] && bg="%K{$3}" && bg_="%K{$2}" || bg="%k"
    [[ $4 = "bold" ]] && bf="%B" || bf="%b"
    print -n "%{$fg_$bg_%}$SEGMENT_START"
    [[ -n $1 ]] && print -n "%{$fg$bg$bf%}$1"
    print -n "%{$fg_$bg_%}$SEGMENT_END "
    reset_typeface
}

function prompt_dir() {
    local status_color
    [[ $RETVAL -ne 0 ]] && status_color=red || status_color=blue
    prompt_segment '%~' black $status_color
}

function prompt_jumbozshrimp_main() {
    for segment in "${JUMBOZSHRIMP_PROMPT_SEGMENTS[@]}"; do
        [[ -n $segment ]] && $segment
    done
}

function prompt_jumbozshrimp_precmd() {
    RETVAL=$?

    vcs_info

    reset_typeface
    PROMPT="$(prompt_jumbozshrimp_main)"
    RPROMPT=''
}

function prompt_jumbozshrimp_setup() {
    autoload -Uz add-zsh-hook
    autoload -Uz vcs_info

    prompt_opts=(cr percent sp subst)

    add-zsh-hook precmd prompt_jumbozshrimp_precmd

    zstyle ':vcs_info:*' enable git
    zstyle ':vcs_info:*' check-for-changes false
    zstyle ':vcs_info:git*' formats '%b'
    zstyle ':vcs_info:git*' actionformats '%b (%a)'
}

prompt_jumbozshrimp_setup "$@"

