{smcl}
{* *! version 1.1.4  19oct2017}{...}
{vieweralsosee "[P] forvalues" "mansection P forvalues"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] continue" "help continue_zh"}{...}
{vieweralsosee "[P] foreach" "help foreach_zh"}{...}
{vieweralsosee "[P] while" "help while_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] if" "help ifcmd_zh"}{...}
{viewerjumpto "Syntax" "forvalues_zh##syntax"}{...}
{viewerjumpto "Description" "forvalues_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "forvalues_zh##linkspdf"}{...}
{viewerjumpto "Examples" "forvalues_zh##examples"}
{help forvalues:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[P] forvalues} {hline 2}}循环遍历连续值{p_end}
{p2col:}({mansection P forvalues:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmdab:forv:alues} {it:lname} {cmd:=} {it:range} {cmd:{c -(}}
		{it:由Stata命令引用的} {cmd:`}{it:lname}{cmd:'}
	{cmd:{c )-}}

    其中 {it:range} 是

{center:{it:#1}{cmd:(}{it:#d}{cmd:)}{it:#2} {space 4} 意味着 {it:#1} 到 {it:#2}，步长为 {it:#d}     }
{center:{it:#1}{cmd:/}{it:#2} {space 7} 意味着 {it:#1} 到 {it:#2}，步长为 1      }
{center:{it:#1} {it:#t} {cmd:to} {it:#2} {space 1} 意味着 {it:#1} 到 {it:#2}，步长为 {it:#t} - {it:#1}}
{center:{it:#1} {it:#t} {cmd::}{space 2}{it:#2} {space 1} 意味着 {it:#1} 到 {it:#2}，步长为 {it:#t} - {it:#1}}

{pstd}
该循环在计算值 {cmd:`}{it:lname}{cmd:'} 小于 {it:#2} 时执行，同时假设 {it:#d} > 0。

{pstd}
在 {cmd:forvalues} 中必须指定大括号，并且

{phang2}
1.  左大括号必须与 {cmd:forvalues} 在同一行上；

{phang2}
2.  左大括号后面不能有任何内容，当然可以有注释；
    第一个执行的命令必须出现在新的一行上；

{phang2}
3.  右大括号必须单独占一行。


{marker description}{...}
{title:描述}

{pstd}
{cmd:forvalues} 反复将局部宏 {it:lname} 设置为 {it:range} 的每一个元素，并执行大括号中的命令。该循环可以执行零次或多次。

{pstd}
{cmd:forvalues} 是以不同数字值执行代码块的最快方法。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P forvaluesRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
生成 100 个均匀的随机变量，命名为 x1, x2, ..., x100。

	{cmd:. forvalues i = 1(1)100 {c -(}}
	  {cmd:2.       generate x`i' = runiform()}
	  {cmd:3. {c )-}}

{pstd}
对于变量 var5, var6, ..., var13 输出大于 10 的观测次数。

	{cmd:. forval num = 5/13 {c -(}}
	  {cmd:2.       count if var`num' > 10}
	  {cmd:3. {c )-}}

{pstd}
为变量 x5, x10, ..., x300 生成单独的汇总命令。

	{cmd:. forvalues k = 5 10 to 300 {c -(}}
	  {cmd:2.       summarize x`k'}
	  {cmd:3. {c )-}}

{pstd}
遍历非整数值的循环，包含多个命令。

	{cmd:. forval x = 31.3 31.6 : 38 {c -(}}
	  {cmd:2.       count if var1 < `x' & var2 < `x'}
	  {cmd:3.       summarize myvar if var1 < `x'}
	  {cmd:4. {c )-}}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <forvalues.sthlp>}