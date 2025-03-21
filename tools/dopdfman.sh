#!/bin/bash -e
#
# (C) 2025, Roberto A. Foglietta <roberto.foglietta@gmail.com> - 3-clause BSD
#

function chrprint() {
    chromium-browser --run-all-compositor-stages-before-draw \
        --headless --disable-gpu --no-pdf-header-footer --print-to-pdf=$2 $1
}

function pdfshrink() {
    local ff pf=$1
    bash tools/pdfshrink.sh $pf
    ff=${pf%.pdf}
    ff+="-shrinked.pdf"
    mv -f $ff $pf
}

function m() {
    bash tools/md2html.sh $1
}

url="https://robang74.github.io/chatbots-for-fun/html"
manfn="p910-k80-installation-manual"


files="
p910-k80-installation-manual-intro
p910-bios-update-and-diagnostics
p910-k80-ubuntu-early-configuration
tesla-k80-with-esprimo-p910
dual-psu-fujitsu-esprimo-p910
dual-psu-esprimo-p910-installation
p910-cooling-system-proposal-for-k80
nvidia-sw-stack-installation-for-k80
grok3-comparison-table-for-education
grok3-comparison-table-value-for-money
"

echo
list=""
rm -f man/man.md
for i in $files; do
    if [ "x$1" == "x-m" ]; then
        m $i.md | grep --color=never .
    fi
    if [ "x$1" == "x-w" ]; then
        echo "Chromium printing $url/$i.html ..."
        chrprint $url/$i.html pdf/$i.pdf
        pdfshrink pdf/$i.pdf | grep --color=never .
        echo
    fi
    if [ "x$1" == "x-m" -o "x$1" == "x-h" ]; then
        bash tools/html2pdf.sh html/$i.html | \
            grep --color=never . | grep -v "pdf folder size"
        echo
    fi
    list="$list pdf/$i.pdf"
    cat $i.md >> man/man.md
done
echo "pdfunite in man/$manfn.pdf ..."
pdfunite $list man/$manfn.pdf 2>&1 | uniq
pdfshrink man/$manfn.pdf
exiftool -Title="Esprimo P910 with Tesla K80 Installation Manual" man/$manfn.pdf
rm -f man/$manfn.pdf_original; echo; du -k man/$manfn.pdf; echo

