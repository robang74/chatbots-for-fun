#!/bin/bash -e
#
# (C) 2025, Roberto A. Foglietta <roberto.foglietta@gmail.com> - 3-clause BSD
#
################################################################################

function cpu_temp_test_func() {
    echo
    declare -i tm=4 mt=10 nt=1
    for j in $(seq 1 $nt); do
        dd if=/dev/zero bs=1M | pigz -11 -p4 - >/dev/null &
        for i in $(seq 1 $[tm*mt]); do sensors | grep Package;
            sleep 1; done & sleep $[(tm-1)*mt]; killall pigz;
        sleep $[(mt*3)/2]; echo
    done
}

rundt=$(date +"%F %X")
str=$(echo -n $rundt | tr -c [0-9] -)
logfn="cpu-temp-test-$str.log"
dtafn="cpu-temp-test-$str.dta"

if [ "$(whoami)" != "root" ]; then
    sudo bash $0 "$@"
else
    declare -i st=0 xt=0 et=0 flst=1000 flxt=1000 flet=1000 fhst=0 fhxt=0 fhet=0
    for i in $(seq 1 10); do
        cpu_temp_test_func | tee $logfn

        str=$(grep . $logfn | cut -d\+ -f2 | cut -d. -f1)
        st=$(echo "$str" | head -n1)
        xt=$(echo "$str" | sort -n | tail -n1)
        et=$(echo "$str" | tail -n1)

        test $st -lt $flst && flst=$st
        test $xt -lt $flxt && flxt=$xt
        test $et -lt $flet && flet=$et
        
        test $st -gt $fhst && fhst=$st
        test $xt -gt $fhxt && fhxt=$xt
        test $et -gt $fhet && fhet=$et

        echo "start: +$st°C, max: +$xt°C, end: +$et°C" | tee -a $dtafn
    done
    echo
    echo "----------------------------------------------------------" 
    echo
    cat $dtafn
    echo
    echo "----------------------------------------------------------" 
    echo
    echo "start: [+$flst, +$fhst]; max: [+$flxt, +$fhxt]; end: [+$flet, +$fhet]; (°C)"
    echo
fi

