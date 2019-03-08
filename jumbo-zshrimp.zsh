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

FG="%{\033[38;2;%}"
BG="%{\033[48;2;%}"
CLEAR="%{\033[0m%}"

BLACK="%{32;42;49m%}"
GRAY="%{144;146;141m%}"
WHITE="%{255;248;231m%}"
RED="%{217;113;113m%}"
YELLOW="%{233;232;104m%}"
GREEN="%{105;214;116m%}"
CYAN="%{98;199;197m%}"
BLUE="%{88;159;201m%}"
PURPLE="%{172;139;199m%}"

BLACK_BLACK_1="%{32;42;49m%}"
BLACK_BLACK_2="%{32;42;49m%}"
BLACK_BLACK_3="%{32;42;49m%}"
BLACK_GRAY_1="%{60;68;72m%}"
BLACK_GRAY_2="%{88;94;95m%}"
BLACK_GRAY_3="%{116;120;118m%}"
BLACK_WHITE_1="%{88;94;95m%}"
BLACK_WHITE_2="%{144;146;141m%}"
BLACK_WHITE_3="%{200;198;187m%}"
BLACK_RED_1="%{78;60;65m%}"
BLACK_RED_2="%{124;78;81m%}"
BLACK_RED_3="%{170;96;97m%}"
BLACK_YELLOW_1="%{82;90;63m%}"
BLACK_YELLOW_2="%{132;138;77m%}"
BLACK_YELLOW_3="%{182;186;91m%}"
BLACK_GREEN_1="%{50;85;66m%}"
BLACK_GREEN_2="%{68;128;83m%}"
BLACK_GREEN_3="%{86;171;100m%}"
BLACK_CYAN_1="%{49;81;86m%}"
BLACK_CYAN_2="%{66;120;123m%}"
BLACK_CYAN_3="%{83;159;160m%}"
BLACK_BLUE_1="%{46;71;87m%}"
BLACK_BLUE_2="%{60;100;125m%}"
BLACK_BLUE_3="%{74;129;163m%}"
BLACK_PURPLE_1="%{67;66;87m%}"
BLACK_PURPLE_2="%{102;90;125m%}"
BLACK_PURPLE_3="%{137;114;163m%}"

GRAY_BLACK_1="%{116;120;118m%}"
GRAY_BLACK_2="%{88;94;95m%}"
GRAY_BLACK_3="%{60;68;72m%}"
GRAY_GRAY_1="%{116;120;118m%}"
GRAY_GRAY_2="%{88;94;95m%}"
GRAY_GRAY_3="%{116;120;118m%}"
GRAY_WHITE_1="%{172;172;164m%}"
GRAY_WHITE_2="%{200;198;187m%}"
GRAY_WHITE_3="%{228;224;210m%}"
GRAY_RED_1="%{162;137;134m%}"
GRAY_RED_2="%{180;129;127m%}"
GRAY_RED_3="%{198;121;120m%}"
GRAY_YELLOW_1="%{166;168;131m%}"
GRAY_YELLOW_2="%{188;190;122m%}"
GRAY_YELLOW_3="%{210;212;113m%}"
GRAY_GREEN_1="%{135;163;134m%}"
GRAY_GREEN_2="%{125;180;128m%}"
GRAY_GREEN_3="%{115;197;122m%}"
GRAY_CYAN_1="%{134;159;155m%}"
GRAY_CYAN_2="%{122;172;169m%}"
GRAY_CYAN_3="%{110;185;183m%}"
GRAY_BLUE_1="%{130;149;156m%}"
GRAY_BLUE_2="%{116;152;171m%}"
GRAY_BLUE_3="%{102;155;186m%}"
GRAY_PURPLE_1="%{151;145;156m%}"
GRAY_PURPLE_2="%{158;143;171m%}"
GRAY_PURPLE_3="%{165;141;186m%}"

WHITE_BLACK_1="%{200;198;187m%}"
WHITE_BLACK_2="%{144;146;141m%}"
WHITE_BLACK_3="%{88;94;95m%}"
WHITE_GRAY_1="%{228;224;210m%}"
WHITE_GRAY_2="%{200;198;187m%}"
WHITE_GRAY_3="%{172;172;164m%}"
WHITE_WHITE_1="%{228;224;210m%}"
WHITE_WHITE_2="%{200;198;187m%}"
WHITE_WHITE_3="%{228;224;210m%}"
WHITE_RED_1="%{247;215;203m%}"
WHITE_RED_2="%{237;181;173m%}"
WHITE_RED_3="%{227;147;143m%}"
WHITE_YELLOW_1="%{251;244;200m%}"
WHITE_YELLOW_2="%{245;240;168m%}"
WHITE_YELLOW_3="%{239;236;136m%}"
WHITE_GREEN_1="%{219;241;203m%}"
WHITE_GREEN_2="%{181;232;174m%}"
WHITE_GREEN_3="%{143;223;145m%}"
WHITE_CYAN_1="%{215;235;224m%}"
WHITE_CYAN_2="%{176;223;215m%}"
WHITE_CYAN_3="%{137;211;206m%}"
WHITE_BLUE_1="%{214;225;225m%}"
WHITE_BLUE_2="%{172;203;217m%}"
WHITE_BLUE_3="%{130;181;209m%}"
WHITE_PURPLE_1="%{235;220;223m%}"
WHITE_PURPLE_2="%{214;193;215m%}"
WHITE_PURPLE_3="%{193;166;207m%}"

RED_BLACK_1="%{170;96;97m%}"
RED_BLACK_2="%{124;78;81m%}"
RED_BLACK_3="%{78;60;65m%}"
RED_GRAY_1="%{198;121;120m%}"
RED_GRAY_2="%{180;129;127m%}"
RED_GRAY_3="%{162;137;134m%}"
RED_WHITE_1="%{227;147;143m%}"
RED_WHITE_2="%{237;181;173m%}"
RED_WHITE_3="%{247;215;203m%}"
RED_RED_1="%{198;121;120m%}"
RED_RED_2="%{180;129;127m%}"
RED_RED_3="%{198;121;120m%}"
RED_YELLOW_1="%{221;143;110m%}"
RED_YELLOW_2="%{225;173;108m%}"
RED_YELLOW_3="%{229;203;106m%}"
RED_GREEN_1="%{189;138;114m%}"
RED_GREEN_2="%{161;163;115m%}"
RED_GREEN_3="%{133;188;116m%}"
RED_CYAN_1="%{188;135;134m%}"
RED_CYAN_2="%{158;157;155m%}"
RED_CYAN_3="%{128;179;176m%}"
RED_BLUE_1="%{184;125;135m%}"
RED_BLUE_2="%{152;137;157m%}"
RED_BLUE_3="%{120;149;179m%}"
RED_PURPLE_1="%{205;120;135m%}"
RED_PURPLE_2="%{194;127;157m%}"
RED_PURPLE_3="%{183;134;179m%}"

YELLOW_BLACK_1="%{182;186;91m%}"
YELLOW_BLACK_2="%{132;138;77m%}"
YELLOW_BLACK_3="%{82;90;63m%}"
YELLOW_GRAY_1="%{210;212;113m%}"
YELLOW_GRAY_2="%{188;190;122m%}"
YELLOW_GRAY_3="%{166;168;131m%}"
YELLOW_WHITE_1="%{239;236;136m%}"
YELLOW_WHITE_2="%{245;240;168m%}"
YELLOW_WHITE_3="%{251;244;200m%}"
YELLOW_RED_1="%{229;203;106m%}"
YELLOW_RED_2="%{225;173;108m%}"
YELLOW_RED_3="%{221;143;110m%}"
YELLOW_YELLOW_1="%{210;212;113m%}"
YELLOW_YELLOW_2="%{188;190;122m%}"
YELLOW_YELLOW_3="%{210;212;113m%}"
YELLOW_GREEN_1="%{201;229;107m%}"
YELLOW_GREEN_2="%{169;224;110m%}"
YELLOW_GREEN_3="%{137;219;113m%}"
YELLOW_CYAN_1="%{200;223;127m%}"
YELLOW_CYAN_2="%{166;215;150m%}"
YELLOW_CYAN_3="%{132;207;173m%}"
YELLOW_BLUE_1="%{196;213;128m%}"
YELLOW_BLUE_2="%{160;195;152m%}"
YELLOW_BLUE_3="%{124;177;176m%}"
YELLOW_PURPLE_1="%{217;208;128m%}"
YELLOW_PURPLE_2="%{202;185;152m%}"
YELLOW_PURPLE_3="%{187;162;176m%}"

GREEN_BLACK_1="%{86;171;100m%}"
GREEN_BLACK_2="%{68;128;83m%}"
GREEN_BLACK_3="%{50;85;66m%}"
GREEN_GRAY_1="%{115;197;122m%}"
GREEN_GRAY_2="%{125;180;128m%}"
GREEN_GRAY_3="%{135;163;134m%}"
GREEN_WHITE_1="%{143;223;145m%}"
GREEN_WHITE_2="%{181;232;174m%}"
GREEN_WHITE_3="%{219;241;203m%}"
GREEN_RED_1="%{133;188;116m%}"
GREEN_RED_2="%{161;163;115m%}"
GREEN_RED_3="%{189;138;114m%}"
GREEN_YELLOW_1="%{137;219;113m%}"
GREEN_YELLOW_2="%{169;224;110m%}"
GREEN_YELLOW_3="%{201;229;107m%}"
GREEN_GREEN_1="%{115;197;122m%}"
GREEN_GREEN_2="%{125;180;128m%}"
GREEN_GREEN_3="%{115;197;122m%}"
GREEN_CYAN_1="%{104;211;136m%}"
GREEN_CYAN_2="%{102;207;156m%}"
GREEN_CYAN_3="%{100;203;176m%}"
GREEN_BLUE_1="%{100;201;137m%}"
GREEN_BLUE_2="%{96;187;158m%}"
GREEN_BLUE_3="%{92;173;179m%}"
GREEN_PURPLE_1="%{122;196;137m%}"
GREEN_PURPLE_2="%{139;177;158m%}"
GREEN_PURPLE_3="%{156;158;179m%}"

CYAN_BLACK_1="%{83;159;160m%}"
CYAN_BLACK_2="%{66;120;123m%}"
CYAN_BLACK_3="%{49;81;86m%}"
CYAN_GRAY_1="%{110;185;183m%}"
CYAN_GRAY_2="%{122;172;169m%}"
CYAN_GRAY_3="%{134;159;155m%}"
CYAN_WHITE_1="%{137;211;206m%}"
CYAN_WHITE_2="%{176;223;215m%}"
CYAN_WHITE_3="%{215;235;224m%}"
CYAN_RED_1="%{128;179;176m%}"
CYAN_RED_2="%{158;157;155m%}"
CYAN_RED_3="%{188;135;134m%}"
CYAN_YELLOW_1="%{132;207;173m%}"
CYAN_YELLOW_2="%{166;215;150m%}"
CYAN_YELLOW_3="%{200;223;127m%}"
CYAN_GREEN_1="%{100;203;176m%}"
CYAN_GREEN_2="%{102;207;156m%}"
CYAN_GREEN_3="%{104;211;136m%}"
CYAN_CYAN_1="%{110;185;183m%}"
CYAN_CYAN_2="%{122;172;169m%}"
CYAN_CYAN_3="%{110;185;183m%}"
CYAN_BLUE_1="%{97;189;198m%}"
CYAN_BLUE_2="%{94;179;199m%}"
CYAN_BLUE_3="%{91;169;200m%}"
CYAN_PURPLE_1="%{117;184;197m%}"
CYAN_PURPLE_2="%{136;169;198m%}"
CYAN_PURPLE_3="%{155;154;198m%}"

BLUE_BLACK_1="%{74;129;163m%}"
BLUE_BLACK_2="%{60;100;125m%}"
BLUE_BLACK_3="%{46;71;87m%}"
BLUE_GRAY_1="%{102;155;186m%}"
BLUE_GRAY_2="%{116;152;171m%}"
BLUE_GRAY_3="%{130;149;156m%}"
BLUE_WHITE_1="%{130;181;209m%}"
BLUE_WHITE_2="%{172;203;217m%}"
BLUE_WHITE_3="%{214;225;225m%}"
BLUE_RED_1="%{120;149;179m%}"
BLUE_RED_2="%{152;137;157m%}"
BLUE_RED_3="%{184;125;135m%}"
BLUE_YELLOW_1="%{124;177;176m%}"
BLUE_YELLOW_2="%{160;195;152m%}"
BLUE_YELLOW_3="%{196;213;128m%}"
BLUE_GREEN_1="%{92;173;179m%}"
BLUE_GREEN_2="%{96;187;158m%}"
BLUE_GREEN_3="%{100;201;137m%}"
BLUE_CYAN_1="%{91;169;200m%}"
BLUE_CYAN_2="%{94;179;199m%}"
BLUE_CYAN_3="%{97;189;198m%}"
BLUE_BLUE_1="%{102;155;186m%}"
BLUE_BLUE_2="%{116;152;171m%}"
BLUE_BLUE_3="%{102;155;186m%}"
BLUE_PURPLE_1="%{109;154;200m%}"
BLUE_PURPLE_2="%{130;149;200m%}"
BLUE_PURPLE_3="%{151;144;199m%}"

PURPLE_BLACK_1="%{137;114;163m%}"
PURPLE_BLACK_2="%{102;90;125m%}"
PURPLE_BLACK_3="%{67;66;87m%}"
PURPLE_GRAY_1="%{165;141;186m%}"
PURPLE_GRAY_2="%{158;143;171m%}"
PURPLE_GRAY_3="%{151;145;156m%}"
PURPLE_WHITE_1="%{193;166;207m%}"
PURPLE_WHITE_2="%{214;193;215m%}"
PURPLE_WHITE_3="%{235;220;223m%}"
PURPLE_RED_1="%{183;134;179m%}"
PURPLE_RED_2="%{194;127;157m%}"
PURPLE_RED_3="%{205;120;135m%}"
PURPLE_YELLOW_1="%{187;162;176m%}"
PURPLE_YELLOW_2="%{202;185;152m%}"
PURPLE_YELLOW_3="%{217;208;128m%}"
PURPLE_GREEN_1="%{156;158;179m%}"
PURPLE_GREEN_2="%{139;177;158m%}"
PURPLE_GREEN_3="%{122;196;137m%}"
PURPLE_CYAN_1="%{155;154;198m%}"
PURPLE_CYAN_2="%{136;169;198m%}"
PURPLE_CYAN_3="%{117;184;197m%}"
PURPLE_BLUE_1="%{151;144;199m%}"
PURPLE_BLUE_2="%{130;149;200m%}"
PURPLE_BLUE_3="%{109;154;200m%}"
PURPLE_PURPLE_1="%{165;141;186m%}"
PURPLE_PURPLE_2="%{158;143;171m%}"
PURPLE_PURPLE_3="%{165;141;186m%}"

typeset -aHg JUMBOZSHRIMP_PROMPT_SEGMENTS=(
    prompt_context
    prompt_virtualenv
    prompt_dir
    prompt_git
)

PRIMARY_FG=WHITE
PRIMARY_BG=BLACK

PREV_COLOR=BLACK

SOLID_ANGLE_LEFT="\ue0b2"
SOLID_ANGLE_RIGHT="\ue0b0"
ANGLE_LEFT="\ue0b3"
ANGLE_RIGHT="\ue0b1"
BRANCH="\ue0a0"
DETACHED="\u27a6"
PLUSMINUS="\u00b1"

function draw_transition() {
    local color1 color2 grad1 grad2 grad3
    [[ -n $1 ]] && color1=$1
    [[ -n $2 ]] && color2=$2
    grad1=${color1}_${color2}_1
    grad2=${color1}_${color2}_2
    grad3=${color1}_${color2}_3
    print -n "${BG}${(P)grad1} ${BG}${(P)grad2} ${BG}${(P)grad3} ${CLEAR}"
}

function draw_segment() {
    local fg bg bf
    [[ -n $2 ]] && fg=$2
    [[ -n $3 ]] && bg=$3
    draw_transition $PREV_COLOR $bg
    [[ $4 = "bold" ]] && bf="%B"
    [[ -n $1 ]] && print -n "%{$bf%}${FG}${(P)fg}${BG}${(P)bg} $1 ${CLEAR}%{%b%}"
    PREV_COLOR=$3
}

function draw_end() {
    local grad1 grad2 grad3
    grad1=${PREV_COLOR}_BLACK_1
    grad2=${PREV_COLOR}_BLACK_2
    grad3=${PREV_COLOR}_BLACK_3
    print -n "${FG}${(P)PREV_COLOR}${BG}${(P)grad1}$SOLID_ANGLE_RIGHT${FG}${(P)grad1}${BG}${(P)grad2}$SOLID_ANGLE_RIGHT${FG}${(P)grad2}${BG}${(P)grad3}$SOLID_ANGLE_RIGHT${FG}${(P)grad3}${BG}${BLACK}$SOLID_ANGLE_RIGHT${CLEAR}"
    # print -n "${FG}${(P)PREV_COLOR}$ANGLE_RIGHT$ANGLE_RIGHT$ANGLE_RIGHT${CLEAR}"
    # print -n "${FG}${(P)PREV_COLOR}$ANGLE_RIGHT$ANGLE_RIGHT${CLEAR}"
    # print -n "${FG}${(P)PREV_COLOR}$ANGLE_RIGHT${CLEAR}"
}

function prompt_context() {
    local user=`whoami`
    if [[ "$user" != "$DEFAULT_USER" || -n "$SSH_CONNECTION" ]]; then
        draw_segment "$user@%m" BLACK GRAY
    fi
}

function prompt_virtualenv() {
    if [[ -n $VIRTUAL_ENV ]]; then
        draw_segment "$(basename $VIRTUAL_ENV)" BLACK PURPLE
    fi
}

function prompt_dir() {
    local status_color

    [[ $RETVAL -ne 0 ]] && status_color=RED || status_color=BLUE

    draw_segment "%~" BLACK $status_color
}

function prompt_git() {
    local branch_color sync_color ref

    ref="$vcs_info_msg_0_"

    if [[ -n "$ref" ]]; then
        if [[ -n "$(git status --porcelain --ignore-submodules)" ]]; then
            branch_color=YELLOW
            ref="$ref $PLUSMINUS"
        else
            branch_color=GREEN
        fi

        if [[ "${ref/.../}" = "$ref" ]]; then
            ref="$BRANCH $ref"
        else
            ref="$DETACHED ${ref/.../}"
        fi

        draw_segment "$ref" BLACK $branch_color
    fi
}

function prompt_jumbozshrimp_main() {
    for prompt_segment in "${JUMBOZSHRIMP_PROMPT_SEGMENTS[@]}"; do
        [[ -n $prompt_segment ]] && $prompt_segment
    done

    draw_end
}

function prompt_jumbozshrimp_precmd() {
    RETVAL=$?

    vcs_info

    PROMPT="$(prompt_jumbozshrimp_main) "
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

