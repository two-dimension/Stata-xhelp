
{smcl}
{* *! version 1.0.0  16apr2009}{...}
{cmd:help parse}{right:{help prdocumented_zh:之前的文档}}
{hline}
{help parse:English Version}
{hline}
{pstd}
{cmd:parse} 继续有效，但自 Stata 5 起不再是 Stata 的官方部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。

{pstd}
有关命令行解析，请参见 {manhelp syntax P} 和 {help args_zh}。

{pstd}
有关一般宏解析，请参见 {manhelp tokenize P} 和 {manhelp gettoken P}。


{title:标题}


{p2colset 5 14 18 2}{...}
{p2col :{hi:parse} {hline 2}}解析程序参数{p_end}


{title:语法}

{p 8 14 2}
{cmdab:par:se}
{cmd:"}[{it:string}]{cmd:"}
[{cmd:,}
{opt p:arse("pchars")}]


{title:描述}

{pstd}
{cmd:parse} 提供低级解析和对 Stata 内部解析器的完全访问。

	
{title:选项}

{phang}
{opt parse(pchars)} 根据解析字符 {it:pchars} 将 {it:string} 拆分为标记。如果未指定 {opt parse()}，则 {it:string} 将根据标准 Stata 语法进行解析。


{title:高级解析中的局部宏语法}

{pstd}
{cmd:varlist} 可以为空或

{p 8 14 2}
	[{opt opt:ional} | {opt req:uired}] [{opt none}]
        [{opt ex:isting} | {opt new}] [{opt min(#)}] [{opt max(#)}] 


{pstd}
{cmd:if}、{cmd:in}、{cmd:exp} 和 {cmd:using} 可以为空或

{p 8 14 2}
	[{opt opt:ional} | {opt req:uired}] [{opt nop:refix}]


{pstd}
{cmd:weight} 可以为空或

{p 8 14 2}
	[{opt aw:eight}] [{opt fw:eight}] [{opt pw:eight}] [{opt iw:eight}]
        [{opt nop:refix}]

{pstd}
例如，{cmd:local weight "fweight aweight"} 允许使用 {cmd:fweight} 或 {cmd:aweight}，如果用户未作明确指示，则使 {cmd:fweight} 成为默认。此外，如果局部宏 {cmd:weight} 已定义，则局部宏 {cmd:exp} 必须为空。  

{pstd}
{cmd:options} 可以为空或 [element [element ...]]，其中 element 为

{p 8 14 2}
		[{cmdab:no:}]{it:{ul:OP}name}
		    {it:{ul:OP}name}{cmd:(}{cmdab:int:eger} {it:#}{cmd:)}
		    {it:{ul:OP}name}{cmd:(}{cmdab:rea:l} {it:#}{cmd:)}
		    {it:{ul:OP}name}{cmd:(}{cmdab:str:ing)}
		    {cmdab:*:}

{pstd}
且大写字母控制允许的最小简写长度。


{title:另见}

{psee}
 手册:  {help prdocumented_zh:之前的文档}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <parse.sthlp>}