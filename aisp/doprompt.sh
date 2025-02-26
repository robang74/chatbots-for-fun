#!/bin/bash -e

function mainfunc() {
    local x vers
    if echo "${1:-}" | grep -qie "^AleX$"; then
        type="peer-review"
    elif echo "${1:-}" | grep -qie "^SoNia$"; then
        type="brain-storm"
    else
        type=${1:-peer-review}
    fi
    x="\n---\n"
    vers=$(cat aisp/$type/ver.txt)
    printf "%s %s\n\n" "$(cat aisp/$type/tle.txt)" $vers
    printf "%s\n$x\n"  "$(cat aisp/$type/aim.txt)"
    printf "%s\n\n\n"  "$(cat aisp/doc-dealing/rts.txt)"
    printf "%s\n\n\n"  "$(cat aisp/doc-dealing/ops.txt)"
    printf "%s\n\n\n"  "$(cat aisp/doc-dealing/rag.txt)"
    cat aisp/$type/prf.txt 2>/dev/null && printf "\n\n\n"
    cat aisp/$type/chr.txt
}

if [ "x${1:-}" == "x-a" ]; then
    mainfunc alex  2>/dev/null
    mainfunc sonia >&2
elif [ "x${1:-}" == "x-u" ]; then
    mainfunc alex | tee data/alex-peer-review-with-rag-v3.txt 2>/dev/null
    mainfunc sonia | tee data/sonia-argumentative-w-rag-v3.txt >&2
else
    mainfunc "${1:-}"
fi

