{smcl}
{* *! version 1.1.8  21mar2018}{...}
{viewerdialog constraint "dialog constraint"}{...}
{vieweralsosee "[R] constraint" "mansection R constraint"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] cnsreg" "help cnsreg_zh"}{...}
{vieweralsosee "[P] makecns" "help makecns_zh"}{...}
{viewerjumpto "语法" "constraint_zh##syntax"}{...}
{viewerjumpto "菜单" "constraint_zh##menu"}{...}
{viewerjumpto "描述" "constraint_zh##description"}{...}
{viewerjumpto "PDF文档链接" "constraint_zh##linkspdf"}{...}
{viewerjumpto "示例" "constraint_zh##examples"}
{help constraint:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[R] constraint} {hline 2}}定义和列出约束{p_end}
{p2col:}({mansection R constraint:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}定义约束

{p 8 25 2}
{opt cons:traint} [{opt de:fine}] {it:#}
      [{it:{help exp_zh}} {cmd:=} {it:{help exp_zh}} |
       {it:{help test##coeflist:coeflist}}]


{phang}列出约束

{p 8 25 2}
{opt cons:traint} {opt d:ir}  [{it:{help numlist_zh}}{c |}{cmd:_all}] {p_end}

{p 8 25 2}
{opt cons:traint} {opt l:ist} [{it:{help numlist_zh}}{c |}{cmd:_all}] {p_end}


{phang}删除约束

{p 8 25 2}{opt cons:traint} {cmd:drop} {c -(}{it:{help numlist_zh}}{c |}{cmd:_all}{c )-} {p_end}


{phang}程序员命令

{p 8 25 2}{opt cons:traint} {cmd:get} {it:#} {p_end}

{p 8 25 2}{opt cons:traint} {cmd:free} {p_end}


{phang}
其中 {it:coeflist} 如 {manhelp test R} 中定义，且 {it:#} 限制在 1 到 1,999 的范围内，包含这两个值。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 其他 > 管理约束}


{marker description}{...}
{title:描述}

{pstd}
{cmd:constraint} 定义、列出和删除线性约束。约束用于允许约束估计的模型。

{pstd}
约束由 {cmd:constraint} 命令定义。可以通过 {cmd:constraint list} 或 {cmd:constraint dir} 列出当前定义的约束；两者的功能相同。可以通过 {cmd:constraint drop} 删除现有的约束。

{pstd}
{cmd:constraint get} 和 {cmd:constraint free} 是程序员命令。{cmd:constraint get} 将指定约束的内容返回至宏 {cmd:r(contents)} 并在标量 {cmd:r(defined)} 中返回 0 或 1——若约束已定义，则返回 1。{cmd:constraint free} 返回一个空闲（未使用）约束的编号至宏 {cmd:r(free)}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R constraintQuickstart:快速入门}

        {mansection R constraintRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
用于 {help cnsreg_zh}（仅有一个方程）：

{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. constraint 1 price = weight}{p_end}
{phang2}{cmd:. cnsreg mpg price weight, constraints(1)}

{pstd}
用于 {help mlogit_zh}（有多个方程）：

{phang2}{cmd:. webuse sysdsn1}{p_end}
{phang2}{cmd:. constraint 2 [Uninsure]2.site = 0}{p_end}
{phang2}{cmd:. mlogit insure age male i.site, constraints(2)}{p_end}

{phang2}{cmd:. constraint 10 [Indemnity]: 2.site 3.site}{p_end}
{phang2}{cmd:. constraint 11 [Indemnity=Prepaid]: 3.site}{p_end}
{phang2}{cmd:. mlogit insure age male i.site, constraints(10/11) baseoutcome(3)}

{pstd}
在所有情况下：

{phang2}{cmd:. constraint drop 1, 10-11}{p_end}
{phang2}{cmd:. constraint drop _all}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <constraint.sthlp>}