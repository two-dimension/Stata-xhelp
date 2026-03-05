{smcl}
{* *! version 1.1.5  04apr2018}{...}
{findalias asfrnumlist}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 11 语言语法" "help language_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] numlist" "help nlist_zh"}{...}
{vieweralsosee "[P] 语法" "help syntax_zh"}{...}
{viewerjumpto "备注" "numlist_zh##remarks"}{...}
{viewerjumpto "示例" "numlist_zh##examples"}
{help numlist:English Version}
{hline}{...}
{title:标题}

{pstd}
{findalias frnumlist} {hline 2} 数字列表


{marker remarks}{...}
{title:备注}

{pstd}
请参见 {help nlist_zh} 以获取 {cmd:numlist} 编程命令的信息。

{pstd}
{it:numlist} 是一个数字列表，数字之间用空格或逗号分隔。为了减少输入量，有一些简写约定。例如：

{p 8 32 2}{cmd:2} {space 19} 仅一个数字{p_end}
{p 8 32 2}{cmd:1 2 3} {space 15} 三个数字{p_end}
{p 8 32 2}{cmd:3 2 1} {space 15} 三个数字的反向顺序{p_end}
{p 8 32 2}{cmd:.5 1 1.5} {space 12} 三个不同的数字{p_end}
{p 8 32 2}{cmd:1 3 -2.17 5.12} {space 6} 四个混乱顺序的数字

{p 8 32 2}{cmd:1/3} {space 17} 三个数字：1, 2, 3{p_end}
{p 8 32 2}{cmd:3/1} {space 17} 反向顺序的同三个数字{p_end}
{p 8 32 2}{cmd:5/8} {space 17} 四个数字：5, 6, 7, 8{p_end}
{p 8 32 2}{cmd:-8/-5} {space 15} 四个数字：-8, -7, -6, -5{p_end}
{p 8 32 2}{cmd:-5/-8} {space 15} 四个数字：-5, -6, -7, -8{p_end}
{p 8 32 2}{cmd:-1/2} {space 16} 四个数字：-1, 0, 1, 2

{p 8 32 2}{cmd:1 2 to 4} {space 12} 四个数字：1, 2, 3, 4{p_end}
{p 8 32 2}{cmd:4 3 to 1} {space 12} 四个数字：4, 3, 2, 1{p_end}
{p 8 32 2}{cmd:10 15 to 30} {space 9} 五个数字：10, 15, 20, 25, 30

{p 8 32 2}{cmd:1 2:4} {space 15} 同 {cmd:1 2 to 4}{p_end}
{p 8 32 2}{cmd:4 3:1} {space 15} 同 {cmd:4 3 to 1}{p_end}
{p 8 32 2}{cmd:10 15:30} {space 12} 同 {cmd:10 15 to 30}

{p 8 32 2}{cmd:1(1)3} {space 15} 三个数字：1, 2, 3{p_end}
{p 8 32 2}{cmd:1(2)9} {space 15} 五个数字：1, 3, 5, 7, 9{p_end}
{p 8 32 2}{cmd:1(2)10} {space 14} 同样的五个数字：1, 3, 5, 7, 9{p_end}
{p 8 32 2}{cmd:9(-2)1} {space 14} 五个数字：9, 7, 5, 3, 和 1{p_end}
{p 8 32 2}{cmd:-1(.5)2.5} {space 11} 数字：-1, -.5, 0, .5, 1, 1.5, 2, 2.5

{p 8 32 2}{cmd:1[1]3} {space 15} 同 {cmd:1(1)3}{p_end}
{p 8 32 2}{cmd:1[2]9} {space 15} 同 {cmd:1(2)9}{p_end}
{p 8 32 2}{cmd:1[2]10} {space 14} 同 {cmd:1(2)10}{p_end}
{p 8 32 2}{cmd:9[-2]1} {space 14} 同 {cmd:9(-2)1}{p_end}
{p 8 32 2}{cmd:-1[.5]2.5} {space 11} 同 {cmd:-1(.5)2.5

{p 8 32 2}{cmd:1 2 3/5 8(2)12} {space 6} 八个数字：1, 2, 3, 4, 5, 8, 10, 12{p_end}
{p 8 32 2}{cmd:1,2,3/5,8(2)12} {space 6} 同样的八个数字{p_end}
{p 8 32 2}{cmd:1 2 3/5 8 10 to 12} {space 2} 同样的八个数字{p_end}
{p 8 32 2}{cmd:1,2,3/5,8,10 to 12} {space 2} 同样的八个数字{p_end}
{p 8 32 2}{cmd:1 2 3/5 8 10:12} {space 5} 同样的八个数字

{pstd}
建议：请不要使用逗号来分隔条目——要使用空格，因为逗号并不总是被允许。您可以在选项的括号内的 {it:numlist} 中使用逗号，但在其他情况下不可以使用逗号。


{marker examples}{...}
{title:示例}

{phang}{cmd:. sysuse uslifeexp}{p_end}
{phang}{cmd:. line le_wm year, ylabel(0 20(10)80)}

{phang}{cmd:. sysuse auto}{p_end}
{phang}{cmd:. centile price, centile(5 50 95)}{p_end}
{phang}{cmd:. forvalues i = 10(-2)1 {c -(}}{p_end}
{phang}{cmd:{space 2}2. display `i'}{p_end}
{phang}{cmd:{space 2}3. {c )-}}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <numlist.sthlp>}