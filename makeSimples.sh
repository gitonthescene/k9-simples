#!/bin/bash

sed -e 's/@/@@/g' \
    -e 's/}/@}/g' \
    -e 's/{/@{/g' \
    -e 's/ /@ /g' \
    -e 's/^/@t{/; s/$/}@*/' \
    -e '30,40 s/dev/@ref{dev}/g' \
    -e '30,40 s/med/@ref{med}/g' \
    -e '30,40 s/mode/@ref{mode}/g' \
    -e '1,20 s/\\l/@ref{load,\\l}/g' \
    -e '1,20 s/\\t/@ref{timing,\\t}/g' \
    -e '1,20 s/\\v/@ref{variables,\\v}/g' \
    -e '1,20 s/\\f}/@ref{files,\\f}}/g' \
    -e '1,20 s/\\cd/@ref{cd,\\cd}/g' \
    -e 's/flip/@ref{flip}/g' \
    -e 's/plus/@ref{plus}/g' \
    -e 's/negate/@ref{negate}/g' \
    -e 's/minus/@ref{minus}/g' \
    -e '1,20 s/first/@ref{first}/g' \
    -e 's/times/@ref{times}/g' \
    -e 's/divide/@ref{divide}/g' \
    -e '1,20 s/where/@ref{where}/' \
    -e 's/min\/and/@ref{min\/and}/g' \
    -e 's/reverse/@ref{reverse}/g' \
    -e 's/max\/or/@ref{max\/or}/g' \
    -e 's/asc/@ref{asc}/g' \
    -e 's/less/@ref{less}/g' \
    -e 's/desc/@ref{desc}/g' \
    -e 's/more/@ref{more}/g' \
    -e 's/group/@ref{group}/g' \
    -e 's/equal/@ref{equal}/g' \
    -e 's/not/@ref{not}/g' \
    -e 's/match/@ref{match}/g' \
    -e 's/enum/@ref{enum}/g' \
    -e '1,20 s/key/@ref{key}/g' \
    -e 's/enlist/@ref{enlist}/g' \
    -e 's/cat/@ref{cat}/g' \
    -e 's/sort/@ref{sort}/g' \
    -e 's/cut/@ref{cut}/g' \
    -e '1,25 s/count/@ref{count}/g' \
    -e 's/take/@ref{take}/g' \
    -e 's/floor/@ref{floor}/g' \
    -e 's/drop/@ref{drop}/g' \
    -e 's/string/@ref{string}/g' \
    -e 's/parse/@ref{parse}/g' \
    -e 's/unique/@ref{unique}/g' \
    -e 's/find\/rand/@ref{find\/rand}/g' \
    -e '20,100 s/type/@ref{type}/g' \
    -e 's/[f]at/[f]@ref{at}/g' \
    -e 's/value/@ref{value}/g' \
    -e '1,26 s/dot/@ref{dot}/g' \
    -e '1,10 s/join/@ref{join}/g' \
    -e '1,5 s/scan/@ref{scan}/g' \
    -e '1,5 s/over/@ref{over}/g' \
    -e '6,15 s/scan/@ref{cscan,scan}/g' \
    -e '6,15 s/over/@ref{cover,over}/g' \
    -e 's/split/@ref{split}/g' \
    -e 's/each@/@ref{each}@/g' \
    -e 's/eachprior/@ref{eachprior}/g' \
    -e 's/+binXX/@ref{bin2,+bin}/g' \
    -e 's/eachright/@ref{eachright}/g' \
    -e 's/eachleft/@ref{eachleft}/g' \
    -e '30,40 s/select/@ref{select}/g' \
    -e '30,40 s/delete/@ref{delete}/g' \
    -e '30,40 s/A/@ref{A}/g' \
    -e '30,40 s/by@ B/@ref{by B}/g' \
    -e '30,40 s/where@ C/@ref{where C}/g' \
    -e '30,40 s/update/@ref{update}/g' \
    -e 's/insert/@ref{insert}/g' \
    -e 's/upsert/@ref{upsert}/g' \
    -e 's/union/@ref{union}/g' \
    -e 's/leftjoin/@ref{leftjoin}/g' \
    -e 's/verb/@ref{Verb,verb}/' \
    -e 's/adverb/@ref{Adverb,adverb}/g' \
    -e '1,20 s/noun/@ref{Noun,noun}/g' \
    -e 's/i\/o/@ref{I\/O,i\/o}/g' \
    -e 's/utable/@ref{utable}/g' \
    -e 's/ntable/@ref{ntable}/g' \
    -e 's/@ table/@ @ref{Tables,table}/g' \
    -e 's/DNU/@ref{Temporal Functions,.z.d}/' \
    -e 's/@ list/@ @ref{List,list}/g' \
    -e 's/func/@ref{User Functions,func}/g' \
    -e 's/expr/@ref{Expression,expr}/g' \
    -e 's/dict/@ref{Dictionary,dict}/g' \
    -e 's/cond/@ref{cond}/g' \
    -e 's/amend/@ref{amend}/g' \
    -e 's/dmend/@ref{dmend}/g' \
    -e 's/Control/@ref{cond,Control}/g' \
    -e 's/if@ else/@ref{cond,if else}/g' \
    -e '1,20 s/date/@ref{date}/g' \
    -e '16,16 s/time/@ref{time}/g' \
    -e 's/bool/@ref{bool}/g' \
    -e '7,20 s/int/@ref{int}/g' \
    -e 's/flt/@ref{flt}/g' \
    -e '1,10 s/char/@ref{char}/g' \
    -e '7,20 s/name/@ref{name}/g' \
    -e 's/uuid/@ref{uuid}/g' \
    -e 's/System/@ref{System}/g' \
    -e 's/csv/@ref{csv}/g' \
    -e 's/lz4/@ref{compress,lz4}/g' \
    -e 's/zstd/@ref{compress,zstd}/g' \
    -e 's/json/@ref{json}/g' \
    -e 's/r\/w@ line/@ref{r line,r}\/@ref{w line,w}@ line/g' \
    -e 's/r\/w@ char/@ref{r char,r}\/@ref{w char,w}@ char/g' \
    -e 's/r\/w@ data/@ref{r data,r}\/@ref{w data,w}@ data/g' \
    -e 's/k-ipc@ set/@ref{k-ipc} @ref{3set,set}/g' \
    -e 's/https@ get/@ref{https}@ @ref{4get,get}/g' \
    -e 's/ffi/@ref{ffi}/g' \
    -e 's/python/@ref{python}/g' \
    -e 's/nodejs/@ref{nodejs}/g' \
    -e '20,40 s/ key/ @ref{key}/g' \
    -e '20,40 s/unkey/@ref{unkey}/g' \
    -e '20,40 s/meta/@ref{meta}/g' \
    -e '20,40 s/@ in@ /@ @ref{in}@ /' \
    -e '20,40 s/bin/@ref{bin}/g' \
    -e '20,40 s/within/ @ref{within}/g' \
    -e '30,40 s/exp/@ref{exp}/g' \
    -e '20,40 s/log/@ref{log}/g' \
    -e '20,40 s/sin/@ref{sin}/g' \
    -e '20,40 s/cos/@ref{cos}/g' \
    -e '20,40 s/sqr@ /@ref{sqr}@ /g' \
    -e '20,40 s/sqrt/@ref{sqrt}/g' \
    -e '20,40 s/div/@ref{div}/g' \
    -e '29,40 s/mod/@ref{mod}/g' \
    -e '20,40 s/bar/@ref{bar}/g' \
    -e '20,40 s/top/@ref{topX,top}/g' \
    -e '20,40 s/freq/@ref{freq}/g' \
    -e '20,40 s/msum/@ref{msum}/g' \
    -e '20,40 s/mavg/@ref{mavg}/g' \
    -e '20,40 s/sums/@ref{sums}/g' \
    -e '20,40 s/deltas/@ref{deltas}/g' \
    -e '20,40 s/randXXX/@ref{randXXX}/g' \
    -e '20,40 s/has/@ref{has}/g' \
    -e '28,35 s/count/@ref{Hcount,count} /g' \
    -e '28,35 s/first/@ref{Hfirst,first}/g' \
    -e '28,35 s/last/@ref{Hlast,last}/g' \
    -e '28,35 s/min/@ref{Hmin,min}/g' \
    -e '28,35 s/max/@ref{Hmax,max}/g' \
    -e '28,35 s/sum/@ref{Hsum,sum}/g' \
    -e '28,35 s/dot/@ref{Hdot,dot}/g' \
    -e '12,15 s/.z.d/@ref{.z.d}/g' \
    -e '12,15 s/.z.t/@ref{.z.t}/g' \
    -e '20,40 s/avg/@ref{avg}/g' \
    -e '20,40 s/var/@ref{var}/g' \
    -e '20,30 s/prm/@ref{prm}/g' \
    -e '20,30 s/cmb/@ref{cmb}/g' k.d > k.d2

texi2any --fill-column=202 --paragraph-indent=none k.manual.texi
texi2any --pdf k.manual.texi
texi2any --css-include=style.css --html k.manual.texi
texi2any --css-include=style.css --html --no-split k.manual.texi -o k9Simples.html


sed -i '' -e 's/Top (Shakti (k9) tutorial)/Shakti (k9) tutorial/g' k9/index.html
