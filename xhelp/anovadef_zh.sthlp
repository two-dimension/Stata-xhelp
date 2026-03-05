{smcl}
{* *! version 1.0.4  09feb2011}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] anova" "help anova_zh"}{...}
{vieweralsosee "[P] anova_terms" "help anova_terms_zh"}{...}
{vieweralsosee "[MV] manova" "help manova_zh"}{...}
{viewerjumpto "Syntax" "anovadef_zh##syntax"}{...}
{viewerjumpto "Description" "anovadef_zh##description"}{...}
{viewerjumpto "Options" "anovadef_zh##options"}{...}
{viewerjumpto "Remarks" "anovadef_zh##remarks"}
{help anovadef:English Version}
{hline}{...}
{title:标题}

{p 4 22 2}
{hi:[P] anovadef} {hline 2} anova 和 manova 项定义
编程命令


{marker syntax}{...}
{title:语法}

	{cmd:anovadef} [{cmd:,} {cmd:alt} | {cmdab:showord:er}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:anovadef} 返回 {hi:r()} 中的系数标签，这些系数来自最后一次的 {help anova_zh} 或 {help manova_zh}。它以与 {hi:e(b)} 和 {hi:e(V)} 矩阵中呈现的顺序相同的方式对返回的值进行编号，这些矩阵来自 {cmd:anova} 或 {cmd:manova}。这很有帮助，因为 {hi:e(b)} 或 {hi:e(V)} 中系数的顺序不一定与在 {cmd:anova} 或 {cmd:manova} 命令中指定的顺序相同，并且当 {cmd:anova} 或 {cmd:manova} 在 {help version_zh} 低于 11 时，矩阵的行和列名称没有实际意义。

{pstd}
对于 {cmd:manova}，返回的是一个方程的标签。这个相同的标签适用于每个方程。方程名称已附加到 {hi:e(b)} 和 {hi:e(V)} 矩阵，因此 {cmd:anovadef} 不会返回它们。


{marker options}{...}
{title:选项}

{phang}
{cmd:alt} 指定返回标签信息的另一种方式；请参见下面的备注。

{phang}
{cmd:showorder} 指定 {cmd:anovadef} 应该显示设计矩阵列定义，而不是静默执行，并且不在 {cmd:r()} 中返回结果。{cmd:showorder} 不能与 {cmd:alt} 一起指定。


{marker remarks}{...}
{title:备注}

{pstd}
在以下 {help anova_zh} 之后

{phang2}{cmd:. version 10: anova wei len rep*for len*for for rep*len rep rep*len*for*gea,} {cmd:cont(gea len)}

{pstd}
不带 {cmd:alt} 选项的 {cmd:anovadef}

	{cmd:. anovadef}

{pstd}
会生成名为 {hi:r(tid}{it:#}{hi:)} 的结果，其中 {it:#} 从 1 到 {hi:e(b)} 中的元素数量。{hi:tid} 代表“项 id”。

{pstd}
以下是使用上述示例生成的一些 {hi:r()} 项：

{p 8 19 2}{hi:r(tid1)}{space 5}: "1"{p_end}
{p 8 19 2}{hi:r(tid2)}{space 5}: "length"{p_end}
{p 8 19 2}{hi:r(tid3)}{space 5}: "(foreign==0)"{p_end}
{p 8 19 2}{hi:r(tid4)}{space 5}: "(foreign==1)"{p_end}
{p 8 19 2}{hi:r(tid5)}{space 5}: "(rep78==1)"{p_end}
{p 8 19 2}{hi:r(tid6)}{space 5}: "(rep78==2)"{p_end}
{p 8 19 2}{hi:r(tid7)}{space 5}: "(rep78==3)"{p_end}
{p 8 19 2}{hi:r(tid8)}{space 5}: "(rep78==4)"{p_end}
{p 8 19 2}{hi:r(tid9)}{space 5}: "(rep78==5)"{p_end}
{p 8 19 2}{hi:r(tid10)}{space 4}: "(rep78==1)*(foreign==0)"{p_end}
{p 8 19 2}{hi:r(tid11)}{space 4}: "(rep78==2)*(foreign==0)"{p_end}
{p 8 19 2}{hi:r(tid12)}{space 4}: "(rep78==3)*(foreign==0)"{p_end}
	...
{p 8 19 2}{hi:r(tid29)}{space 4}: "(rep78==4)*length*(foreign==0)*gear_ratio"{p_end}
{p 8 19 2}{hi:r(tid30)}{space 4}: "(rep78==4)*length*(foreign==1)*gear_ratio"{p_end}
{p 8 19 2}{hi:r(tid31)}{space 4}: "(rep78==5)*length*(foreign==0)*gear_ratio"{p_end}
{p 8 19 2}{hi:r(tid32)}{space 4}: "(rep78==5)*length*(foreign==1)*gear_ratio"

{pstd}
{hi:r(tid1)} 对应于常数，简单为 "1"。这就是 {cmd:anovadef} 所指示的常数。

{pstd}
带有 {cmd:alt} 选项的 {cmd:anovadef}

	{cmd:. anovadef, alt}

{pstd}
生成名为 {hi:r(tn}{it:#}{hi:)} 和 {hi:r(tl}{it:#}{hi:)} 的结果，其中 {it:#} 从 1 到 {hi:e(b)} 中的元素数量。{hi:tn} 代表“项名称”，而 {hi:tl} 代表“项水平”。

{pstd}
以下是使用上述示例生成的一些 {hi:r()} 项：

{p 8 19 2}{hi:r(tn1)}{space 2}: "1"{p_end}
{p 8 19 2}{hi:r(tl1)}{space 2}: "c"{p_end}
{p 8 19 2}{hi:r(tn2)}{space 2}: "length"{p_end}
{p 8 19 2}{hi:r(tl2)}{space 2}: "c"{p_end}
{p 8 19 2}{hi:r(tn3)}{space 2}: "foreign"{p_end}
{p 8 19 2}{hi:r(tl3)}{space 2}: "0"{p_end}
{p 8 19 2}{hi:r(tn4)}{space 2}: "foreign"{p_end}
{p 8 19 2}{hi:r(tl4)}{space 2}: "1"{p_end}
{p 8 19 2}{hi:r(tn5)}{space 2}: "rep78"{p_end}
{p 8 19 2}{hi:r(tl5)}{space 2}: "1"{p_end}
{p 8 19 2}{hi:r(tn6)}{space 2}: "rep78"{p_end}
{p 8 19 2}{hi:r(tl6)}{space 2}: "2"{p_end}
{p 8 19 2}{hi:r(tn7)}{space 2}: "rep78"{p_end}
{p 8 19 2}{hi:r(tl7)}{space 2}: "3"{p_end}
{p 8 19 2}{hi:r(tn8)}{space 2}: "rep78"{p_end}
{p 8 19 2}{hi:r(tl8)}{space 2}: "4"{p_end}
{p 8 19 2}{hi:r(tn9)}{space 2}: "rep78"{p_end}
{p 8 19 2}{hi:r(tl9)}{space 2}: "5"{p_end}
{p 8 19 2}{hi:r(tn10)} : "rep78 foreign"{p_end}
{p 8 19 2}{hi:r(tl10)} : "1 0"{p_end}
{p 8 19 2}{hi:r(tn11)} : "rep78 foreign"{p_end}
{p 8 19 2}{hi:r(tl11)} : "2 0"{p_end}
{p 8 19 2}{hi:r(tn12)} : "rep78 foreign"{p_end}
{p 8 19 2}{hi:r(tl12)} : "3 0"{p_end}
	...
{p 8 19 2}{hi:r(tn29)} : "rep78 length foreign gear_ratio"{p_end}
{p 8 19 2}{hi:r(tl29)} : "4 c 0 c"{p_end}
{p 8 19 2}{hi:r(tn30)} : "rep78 length foreign gear_ratio"{p_end}
{p 8 19 2}{hi:r(tl30)} : "4 c 1 c"{p_end}
{p 8 19 2}{hi:r(tn31)} : "rep78 length foreign gear_ratio"{p_end}
{p 8 19 2}{hi:r(tl31)} : "5 c 0 c"{p_end}
{p 8 19 2}{hi:r(tn32)} : "rep78 length foreign gear_ratio"{p_end}
{p 8 19 2}{hi:r(tl32)} : "5 c 1 c"

{pstd}
{hi:"c"} 表示对应的项是一个连续变量。
数字表示它是一个分类变量。


{pstd}
{cmd:anovadef} 带有 {cmd:showorder} 选项显示以下输出。

{cmd}    . anovadef, showorder

     设计矩阵中列的顺序
	  1: _cons
	  2: length
	  3: (foreign==0)
	  4: (foreign==1)
	  5: (rep78==1)
	  6: (rep78==2)
	  7: (rep78==3)
	  8: (rep78==4)
	  9: (rep78==5)
	 10: (rep78==1)*(foreign==0)
	 11: (rep78==2)*(foreign==0)
	 12: (rep78==3)*(foreign==0)
	 13: (rep78==3)*(foreign==1)
	 14: (rep78==4)*(foreign==0)
	 15: (rep78==4)*(foreign==1)
	 16: (rep78==5)*(foreign==0)
	 17: (rep78==5)*(foreign==1)
	 18: (rep78==1)*length
	 19: (rep78==2)*length
	 20: (rep78==3)*length
	 21: (rep78==4)*length
	 22: (rep78==5)*length
	 23: length*(foreign==0)
	 24: length*(foreign==1)
	 25: (rep78==1)*length*(foreign==0)*gear_ratio
	 26: (rep78==2)*length*(foreign==0)*gear_ratio
	 27: (rep78==3)*length*(foreign==0)*gear_ratio
	 28: (rep78==3)*length*(foreign==1)*gear_ratio
	 29: (rep78==4)*length*(foreign==0)*gear_ratio
	 30: (rep78==4)*length*(foreign==1)*gear_ratio
	 31: (rep78==5)*length*(foreign==0)*gear_ratio
	 32: (rep78==5)*length*(foreign==1)*gear_ratio{txt}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <anovadef.sthlp>}