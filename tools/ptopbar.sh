#!/bin/bash -e
#
# (C) 2024, Roberto A. Foglietta <roberto.foglietta@gmail.com> - 3-clause BSD
#
################################################################################

gitusr="robang74"
gitprj="${PWD##*/}"
gtlink="https://${gitusr}-github-io.translate.goog/${gitprj}"

LINE_SHADE="darkwarm"
TEXT_SHADE="darktext"
LINE_MARK="&#9783;&nbsp;<b>&Ropf;</b>"
LINE_DASH="&nbsp;&mdash;&nbsp;"
LANG_DASH="&middot;"

PUBLISH_UNIVDATE=""
PUBLISH_SOURCE=""
PUBLISH_LINK=""

GOTO_LINK="../index.html"
GOTO_TEXT="home"

IT_LANG_LINK=""
EN_LANG_LINK=""
DE_LANG_LINK=""
FR_LANG_LINK=""
ES_LANG_LINK=""

function pprint_transl_from_to() { #############################################

echo "${gtlink}/${1}?_x_tr_sl=${2}&_x_tr_tl=${3}&_x_tr_hl=${3}-${4}&_x_tr_pto=wapp"

} ##############################################################################

function print_topbar() { ######################################################

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

if [ -n "${6:-}" ]; then
    test "$7" != "it" && \
        IT_LANG_LINK="$(pprint_transl_from_to "$6" $7 it IT)"
    test "$7" != "en" && \
        EN_LANG_LINK="$(pprint_transl_from_to "$6" $7 en EN)"
    test "$7" != "de" && \
        DE_LANG_LINK="$(pprint_transl_from_to "$6" $7 de DE)"
    test "$7" != "fr" && \
        FR_LANG_LINK="$(pprint_transl_from_to "$6" $7 fr FR)"
    test "$7" != "es" && \
        ES_LANG_LINK="$(pprint_transl_from_to "$6" $7 es ES)"
fi

TOPBAR_STRING="<br/><div class='topbar ${LINE_SHADE} ${TEXT_SHADE}'>&nbsp;"\
"${LINE_MARK} ${LINE_DASH} published:&nbsp; <b>${PUBLISH_UNIVDATE}</b>"\
"${ORIGIN_CODE} ${LINE_DASH} translate:&nbsp; "
TOPBAR_STRING+=$(for LG in IT EN DE FR ES; do
    if ! eval test -n \"\${${LG}_LANG_LINK}\"; then continue; fi
    printf '<b id="lang-%s"><tt><a class="${LINE_SHADE}" href="${%s_LANG_LINK}">'\
'%s</a></tt> ${LANG_DASH} </b>' $LG $LG $LG; done | tr \" \')
if [ "${6:-}" != "index.html" ]; then
    TOPBAR_STRING+=" ${LINE_DASH} goto:&nbsp; <a class='${LINE_SHADE}' href='"\
"${GOTO_LINK}'>${GOTO_TEXT}</a>"
fi
TOPBAR_STRING+="&nbsp;</div>"
eval echo \"$TOPBAR_STRING\" | sed \
    -e "s, *${LANG_DASH} *\([^;]*${LINE_DASH} *goto\),\\1," \
    -e "s, *${LANG_DASH} *\([^;]*&nbsp;</div>\)\$,\\1,"

} ##############################################################################

# print_topbar "dark" "warm" "$date" "Facebook" "https://facebook.com" "index.html" "it"
# print_topbar "dark" "warm" "$date" "Facebook" "https://fbook.it" "html/test.html" "it"

file="$1"
test -r "$file" || exit 1
set -- $(sed -ne "s,<.* created=[\"']\([^\"']*\).*,\\1,p" $file | tr ':' ' ')
if [ "$file" == "README.md" ]; then
    file="index.html"
else
    file="html/${file%.md}"
fi
#echo "date: $1, lang: $2, file: $file" >&2
print_topbar "dark" "warm" "$1" "" "" "$file" "${2,,}"

