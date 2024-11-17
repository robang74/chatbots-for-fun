#!/bin/bash -e
#
# (C) Roberto A. Foglietta <roberto.foglietta@gmail.com> - 3-clause BSD
#


if [ "$2" != "" ]; then
    for i in "$@"; do
        bash $0 "$i"
    done
else ###########################################################################

if [ -d "$1" ]; then
    cd "$1"
    echo
    echo "working path: $1 -> $PWD"
fi

echo
mkdir -p html pdf

for i in *.md; do
    if [ "$i" == "README.md" ]; then
        continue
    fi
    echo "converting $i in html ..."
    markdown $i > html/${i%.md}.html
done

echo
echo "redirecting html links ..."

for i in img/*.png; do
    for j in html/*.html; do
        sed -i "s,\(src=\"\)$i,\\1../${i%.md},g" $j
        sed -i "s,\(href=\"\)$i,\\1../${i%.md},g" $j
    done
done

for i in *.md; do
    for j in html/*.html; do
        sed -i "s,\(href=\"\)$i\">$i,\\1${i%.md}.html\">${i%.md}.html,g" $j
    done
done

fi; exit #######################################################################
#
# PDF creation is ignored
#
################################################################################

echo
for i in *.md; do
    if [ "$i" == "README.md" ]; then
        continue
    fi
    echo "converting $i in pdf ..."
    cp -f $i pdf/$i.tmp
    for k in *.png *.md; do
        sed -i "s,\[.*\]($k),$k,g" pdf/$i.tmp
    done
    md2pdf pdf/$i.tmp pdf/${i%.md}.pdf
    rm -f pdf/$i.tmp
done

echo
echo "all done."
echo
exit



echo
echo "redirecting pdf link ..."

for i in *.png; do
    for j in pdf/*.pdf; do
        echo "reworking $j ..."
        rm -f $j.tmp
        pdftk $j output $j.tmp uncompress
        sed -i "s,\(/URI (file://\).*/$i,\\1../$i,g" $j.tmp
        pdftk $j.tmp output $j compress
        rm -f $j.tmp
    done
done

fi #############################################################################

