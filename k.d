python: import k;k.k('2+3')   shakti.com/python/k.so
nodejs: require('k').k('2+3') shakti.com/nodejs/k.node

$k [-n4 -p1024] a.k

t:[[]t:09:30:00.000 09:30:00.001;e:"b";s:`aa`aa;v:2 3;p:2.3 3.4]
x:"t,e,s,v,p\n09:30:00.000,b,aa,2,2.3\n09:30:00.001,b,aa,3,3.4\n"
`csv?`csv t     /also `json?`json t
`lz4?`lz4 x     /also `zstd?`zstd x
\\

verb                    adverb                 noun                    \l a.k
: x         y          f' each                 char " ab"              \t:n x
+ flip      plus    [x]f/ over      c/ join    name ``ab               \u:n x
- minus     minus   [x]f\ scan      c\ split   int  2 3                \v
* first     times   [y]f':eachprior            flt  2 3.4              \w
%           divide     f/:eachright g/:over    date 2021.06.28   .z.d  
& where     min/and    f\:eachleft  g\:scan    time 12:34:56.789 .z.t
| reverse   max/or     
< asc       less       i/o (*enterprise)       class
> desc      more       0: r/w line             list (2;3.4;`c)
= group     equal      1: r/w char             dict [n:`b;i:2]
~ not       match     *2: r/w data             func {[a;b]a+b}
! key       key       *3: k-ipc set            expr :a+b
, enlist    cat       *4: https get            
^ sort   [f]cut        5: ffi/import
# count  [f]take      
_ floor  [f]drop
$ string    parse      $[b;t;f] cond
? unique    find/rand                               
@ type   [f]at         @[x;i;f[;y]] amend      table [[]n:`b`c;i:2 3]
. value  [f]dot        .[x;i;f[;y]] dmend     utable  [[n:`b`c]i:2 3]

count first last min max sum avg var dev [med ..]
select A by B from T where C; update A from T; delete from T where C
sqrt sqr exp log sin cos div mod bar in bin

/comment \trace [:return 'signal if do while]