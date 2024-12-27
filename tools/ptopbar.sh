#!/bin/bash -e
#
# (C) 2024, Roberto A. Foglietta <roberto.foglietta@gmail.com> - 3-clause BSD
#
################################################################################

gitusr="robang74"
gitprj="${PWD##*/}"
weburl="https://${gitusr}.github.io"
gtlink="${weburl//./-}.translate.goog/${gitprj}"


LINE_SHADE="darkwarm"
TEXT_SHADE="darktext"
LINE_MARK="&#9783;&nbsp;<b>&Ropf;</b>"
LINE_DASH="&nbsp;&mdash;&nbsp;"
LANG_DASH="&middot;"

REVISION_STRING=""
PUBLISH_UNIVDATE=""
PUBLISH_SOURCE=""
PUBLISH_LINK=""

declare -A PROJ_LINKS GOTO_LINKS

PROJ_LINKS[1,1]="${weburl}/chatbots-for-fun"
PROJ_LINKS[1,2]="<tt><b>C4F</b></tt>"
PROJ_LINKS[2,1]="${weburl}/roberto-a-foglietta"
PROJ_LINKS[2,2]="<tt><b>RAF</b></tt>"
PROJ_LINKS[3,1]="${weburl}/chatgpt-answered-prompts"
PROJ_LINKS[3,2]="<tt><b>Q&A</b></tt>"

declare -i i n=2
for i in 1 2 3; do
    echo ${PROJ_LINKS[$i,1]} | grep -q $gitprj && continue
    GOTO_LINKS[$n,1]=${PROJ_LINKS[$i,1]}
    GOTO_LINKS[$n,2]=${PROJ_LINKS[$i,2]}
    let n++
done
GOTO_LINKS[1,1]="../index.html"
GOTO_LINKS[1,2]=".&#x27F0;."

function pprint_transl_from_to() { #############################################

echo "${gtlink}/${1}?_x_tr_sl=${2}&_x_tr_tl=${3}&_x_tr_hl=${3}-${4}&_x_tr_pto=wapp"

} ##############################################################################

function print_topbar() { ######################################################

declare -A LANG_LINKS

LINE_SHADE="${1}${2}"
TEXT_SHADE="${1}text"
PUBLISH_UNIVDATE="${3:-$(date +%F)}"

ORIGIN_CODE=""
PUBLISH_SOURCE="${4:-}"
if [ -n "$PUBLISH_SOURCE" ]; then
    PUBLISH_LINK="${5:-}"
    ORIGIN_CODE=" ${LINE_DASH} origin:&nbsp; <a class='${LINE_SHADE}'"\
" href='${PUBLISH_LINK}'>${PUBLISH_SOURCE}</a>"
fi

TRNSL_STRN=""
if [ -n "${6:-}" ]; then
    for LG in IT EN DE FR ES; do
        lg=${LG,,}
        if [ "$7" != "$lg" ]; then
            TRNSL_STRN+="<b id='lang-${LG}'><tt><a class='${LINE_SHADE}' "
            TRNSL_STRN+="href='$(pprint_transl_from_to "$6" $7 $lg $LG)'>"
            TRNSL_STRN+="${LG}</a></tt> ${LANG_DASH} </b>"
        fi
    done
fi
TRNSL_STRN="${TRNSL_STRN%</tt>*}</tt></b>"

TOPBAR_STRING="<br/><div class='topbar ${LINE_SHADE} ${TEXT_SHADE}'>&nbsp;"\
"${LINE_MARK} ${LINE_DASH} published:&nbsp; <b>${PUBLISH_UNIVDATE}</b>"\
"${REVISION_STRING}${ORIGIN_CODE} ${LINE_DASH} translate:&nbsp; ${TRNSL_STRN}"

if [ "${6:-}" != "index.html" ]; then
    TOPBAR_STRING+=" ${LINE_DASH} goto:&nbsp;"\
" <a class='${LINE_SHADE}' href='${GOTO_LINKS[1,1]}'>${GOTO_LINKS[1,2]}</a>"\
" ${LANG_DASH}"\
" <a class='${LINE_SHADE}' href='${GOTO_LINKS[2,1]}'>${GOTO_LINKS[2,2]}</a>"\
" ${LANG_DASH}"\
" <a class='${LINE_SHADE}' href='${GOTO_LINKS[3,1]}'>${GOTO_LINKS[3,2]}</a>"
fi

echo "${TOPBAR_STRING}&nbsp;</div>"

} ##############################################################################

# print_topbar "dark" "warm" "$date" "Facebook" "https://facebook.com" "index.html" "it"
# print_topbar "dark" "warm" "$date" "Facebook" "https://fbook.it" "html/test.html" "it"

file="$1"
test -r "$file" || exit 1

declare -i revnun=$(git log --format=format:'%h' $1 | wc -l)
if [ $revnun -gt 0 ]; then
    REVISION_STRING=" ${LINE_DASH} revision: <b>${revnun}</b>"
fi 2>/dev/null

set -- $(sed -ne "s,<.* created=[\"']\([^\"']*\).*,\\1,p" $file | tr ':' ' ')
if [ "$file" == "README.md" ]; then
    file="index.html"
else
    file="html/${file%.md}"
fi

#echo "date: $1, lang: $2, file: $file" >&2
print_topbar "dark" "warm" "$1" "" "" "$file" "${2,,}"

