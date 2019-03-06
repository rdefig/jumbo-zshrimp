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
    prompt_context
    prompt_virtualenv
    prompt_dir
    prompt_git
)

PRIMARY_FG=white
PRIMARY_BG=black

SEGMENT_START="\ue0b6"
SEGMENT_END="\ue0b4"
CURVE_LEFT="("
CURVE_RIGHT=")"
BRANCH="\ue0a0"
DETACHED="\u27a6"
PLUSMINUS="\u00b1"

function prompt_segment_start() {
    local fg bg
    [[ -n $1 ]] && fg="%F{$2}"
    [[ -n $2 ]] && bg="%K{$1}"
    print -n "%{%f%k%b%}%{$fg$bg%}$SEGMENT_START"
}

function prompt_segment_mid() {
    local fg bg bf
    [[ -n $2 ]] && fg="%F{$2}"
    [[ -n $3 ]] && bg="%K{$3}"
    [[ $4 = "bold" ]] && bf="%B"
    [[ -n $1 ]] && print -n "%{$fg$bg$bf%}$1"
}

function prompt_segment_end() {
    local fg bg
    [[ -n $1 ]] && fg="%F{$2}"
    [[ -n $2 ]] && bg="%K{$1}"
    print -n "%{$fg$bg%}$SEGMENT_END%{%f%k%b%}"
}

function prompt_segment_full() {
    prompt_segment_start $2 $3
    prompt_segment_mid $1 $2 $3 $4
    prompt_segment_end $2 $3
    print -n " "
}

function prompt_context() {
    local user=`whoami`
    if [[ "$user" != "$DEFAULT_USER" || -n "$SSH_CONNECTION" ]]; then
        prompt_segment_mid "%(!.%{%F{magenta}%}.)$user@%m " $PRIMARY_FG $PRIMARY_BG bold
    fi
}

function prompt_virtualenv() {
    if [[ -n $VIRTUAL_ENV ]]; then
        prompt_segment_full "$(basename $VIRTUAL_ENV)" black cyan
    fi
}

function prompt_dir() {
    local status_color
    [[ $RETVAL -ne 0 ]] && status_color=red || status_color=blue
    prompt_segment_full "%~" black $status_color
}

function is_dirty() {
    test -n "$(git status --porcelain --ignore-submodules)"
}

function prompt_git() {
    local branch_color sync_color ref
    local upstream local_ remote base

    ref="$vcs_info_msg_0_"

    if [[ -n "$ref" ]]; then
        if is_dirty; then
            branch_color=yellow
            ref="$ref $PLUSMINUS"
        else
            branch_color=green
        fi
        
        upstream=${1:-'@{u}'}
        local_=$(git rev-parse @)
        remote=$(git rev-parse "$upstream")
        base=$(git merge-base @ "$upstream")
        if [[ $local_ = $remote ]]; then
            sync_color=$branch_color
        elif [[ $local_ = $base ]]; then
            sync_color=red
        elif [[ $remote = $base ]]; then
            sync_color=blue
        else
            sync_color=magenta
        fi

        if [[ "${ref/.../}" = "$ref" ]]; then
            ref="$BRANCH $ref"
        else
            ref="$DETACHED ${ref/.../}"
        fi

        print -n "%{%F{$sync_color}%B%}$CURVE_LEFT$CURVE_LEFT%{%f%b%}"
        prompt_segment_start black $branch_color
        prompt_segment_mid "$ref" black $branch_color
        prompt_segment_end black $branch_color
        print -n "%{%F{$sync_color}%B%}$CURVE_RIGHT$CURVE_RIGHT%{%f%b%} "
    fi
}

function prompt_jumbozshrimp_main() {
    for prompt_segment in "${JUMBOZSHRIMP_PROMPT_SEGMENTS[@]}"; do
        [[ -n $prompt_segment ]] && $prompt_segment
    done
}

function prompt_jumbozshrimp_precmd() {
    RETVAL=$?

    vcs_info

    PROMPT="$(prompt_jumbozshrimp_main)"
    RPROMPT=""
}

function prompt_jumbozshrimp_setup() {
    autoload -Uz add-zsh-hook
    autoload -Uz vcs_info

    prompt_opts=(cr percent sp subst)

    add-zsh-hook precmd prompt_jumbozshrimp_precmd

    zstyle ":vcs_info:*" enable git
    zstyle ":vcs_info:*" check-for-changes false
    zstyle ":vcs_info:git*" formats "%b"
    zstyle ":vcs_info:git*" actionformats "%b (%a)"
}

prompt_jumbozshrimp_setup "$@"

