#!/bin/bash -e
#
# (C) 2024, Roberto A. Foglietta <roberto.foglietta@gmail.com> - 3-clause BSD
#

li_A="<li style='list-style-type: none;'><b>"
li_B=".<span style='visibility: hidden;'>_</span></b>"

ul_A="<ul class='dqt'><li class='dqt'><blockquote class='dqt'>"
ul_B="</blockquote></li></ul>"

function md2htmlfunc() {
    local i str=$(basename ${2%.html}) idx="" dir=""
    test "$str" == "index" && dir="html/"
    test "$str" == "index" && idx="idx"
    #echo "str:$str idx:$idx dir:$dir" >&2
    echo -n "<!DOCTYPE html>
<html>
    <head>
        <title>${str//-/ }</title>
        <meta charset='UTF-8'>
        <link rel='stylesheet' href='${dir}default.css'>
        <link rel='stylesheet' href='${dir}custom.css'>
    </head>
    <body>
" >$2
    if [ -n "$idx" ]; then
        sed -e "s, - (\[...raw...\]([^)]*\.md)) , - ," $1
    else
        cat $1
    fi >>$2
    sed -e "s,@,\&commat;,g" -e "s,°,\&deg;,g" \
-e "s,m\*rda,m\&astr;rda,g" -e "s,sh\*t,sh\&astr;t,g" \
-e "s,c\*zzo,c\&astr;zzo,g" -e "s,d\*ck,d\&astr;ck,g" \
-e 's,^ *!\[\([^]]*\)\](\([^)]*\)) *$,<div align="center"><img src="\2"><br/>\1</div>,' \
-e 's,!\[\([^]]*\)\](\([^)]*\)),<img src="\2" alt="\1">,g' \
-e "s,^# \(.*\),<H1>\\1</H1>," \
-e "s,^## \(.*\),<H2>\\1</H2>," \
-e "s,^### \(.*\),<H3>\\1</H3>," \
-e "s,^#### \(.*\),<H4>\\1</H4>," \
-e "s,^##### \(.*\),<H5>\\1</H5>," \
-e "s,\(<div id=.firstdiv.\) .*>,\\1>," \
-e "s,^ *[-+\*] *> *\(.*\),${ul_A}\\1${ul_B}," \
-e "s,^> \(.*\),<blockquote>\\1</blockquote>," \
-e "s,^\( *\)[-+\*] \(.*\),\\1<li>\\2</li>," \
-e "s,^\( *\)\([0-9]*\)\. \(.*\),\\1${li_A}\\2${li_B}\\3</li>," \
-e 's,\(\[*\)\[\([^]]*\)\](\([^)]*\)),\1<a href="\3">\2<\/a>,g' \
-e "s,\\\<\(.*\)\\\>,\&lt;\\1\&gt;,g" \
-e "s,^ *$,<p/>," -e "s,^---.*,<hr>," -i $2

    tf=$2.tmp
    cat $2 | tr '\n' '@' >$tf
    while true; do
        str=$(sed -ne 's,\*\*,<b>,' -e 's,\*\*,</b>,p' $tf);
        if [ -n "$str" ]; then
            sed -e 's,\*\*,<b>,' -e 's,\*\*,</b>,' -i $tf
        else
            break
        fi
    done
    while true; do
        str=$(sed -ne 's,\*,<i>,' -e 's,\*,</i>,p' $tf);
        if [ -n "$str" ]; then
            sed -e 's,\*,<i>,' -e 's,\*,</i>,' -i $tf
        else
            break
        fi
    done
    while true; do
        str=$(sed -ne 's,`,<tt>,' -e 's,`,</tt>,p' $tf);
        if [ -n "$str" ]; then
            sed -e 's,`,<tt>,' -e 's,`,</tt>,' -i $tf
        else
            break
        fi
    done
    sed -e 's,</blockquote>\(@*\)<blockquote>,<br/>,g' \
        -e 's,<blockquote>\(@*\)</blockquote>,<br/>,g' -i $tf
    cat $tf | tr '@' '\n' >$2
    rm  $tf

    echo "
    </body>
</html>" >> $2

    if [ -z "$idx" ]; then
        sed -e "s,\( src=.\)\([^ ]*\.png\),\\1../\\2,g"  \
            -e "s,\( src=.\)\([^ ]*\.jpg\),\\1../\\2,g"  \
            -e "s,\( href=.\)\([^ ]*\.md\),\\1../\\2,g"  \
            -e "s,\( href=.\)\([^ ]*\.pdf\),\\1../\\2,g" \
            -e "s,\( href=.\)\.\./\(http.://\),\\1\\2,g" \
            -e "s,\( href=.\)\.\./\([^ ]*\)\.md,\\1\\2.html,g" \
            -e "s,\( href=.\)italian/\([^ ]*.html\),\\1../italian/html/\\2,g" \
            -e "s,\( href=.\)html/,\\1,g" -i $2
    elif pwd | grep -q "chatbots-for-fun"; then
        sed -e "s,\( href=.\)\([^ ]*\)\.md,\\1html/\\2.html,g" \
            -e "s,\( href=.\)html/\(http[^ ]*\)\.html,\\1\\2.md," -i $2
    fi
    sed -e "s/<a [^>]*href=.http[^>]*/& target='_blank'/g" -i $2

    for i in 3 2 1; do
        let b=i*3 a=b-2 c=i+1; a=${a/1/2}; #echo "$i $a $b $c" >&2
        sed -e "s/ \{$a,$b\}<li\([ >]\)/<li class='li${c}in'\\1/" -i $2
    done
}

if [ "$2" != "" ]; then
    for i in "$@"; do
        bash $0 "$i"
    done
else ###########################################################################

zip=0
if [ -d "$1" ]; then
    cd "$1"
    echo
    echo "working path: $1 -> $PWD"
    shift
elif [ "x$1" == "x-z" ]; then
    zip=1
    shift
fi

echo
mkdir -p html
test -n "$1" || rm -f html/[0-9]*.html

list=""
index=0
for i in ${@:-*.md}; do
    if [ "$i" == "template.md" ]; then
        continue
    elif [ "$i" == "README.md" ]; then
        index=1
        continue
    fi
    echo "converting $i in html ..."
    md2htmlfunc "$i" "html/${i%.md}.html"
    list="$list html/${i%.md}.html"
done

echo
echo "redirecting html links ..."
for j in $list; do
    for i in img/*.png img/*.jpg *.png *.jpg; do
        sed -e "s,\(href=.\)$i>$i,\\1../$i>$i,g" \
            -e "s,\(src=.\)$i>$i,\\1../$i>$i,g" -i $j
    done
    for i in *.md; do
        sed -e "s,\(href=.\)$i\">$i,\\1${i%.md}.html\">${i%.md}.html,g" -i $j
    done
done

if [ $index -eq 1 ]; then
    i="README.md"
    echo "converting $i in index.html ..."
    md2htmlfunc "$i" index.html
    list="$list index.html"
fi

echo
echo "converting md tables ..."
source tools/tabl2html.sh $list 2>/dev/null

zipfle="archivio-html.zip"
if [ "$zip" == "1" ]; then
    rm -f $zipfle
    zip -r $zipfle img/ html/*.html html/*.css index.html -x $0
    zip -j $zipfle zip/README.md
    du -sk $zipfle
    echo
fi

fi; exit #######################################################################
#
# PDF creation is ignored
#
################################################################################

mkdir -p pdf

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

