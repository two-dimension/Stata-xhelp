{smcl}
{* *! version 1.1.3  19oct2017}{...}
{vieweralsosee "[P] if" "mansection P if"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] continue" "help continue_zh"}{...}
{vieweralsosee "[P] foreach" "help foreach_zh"}{...}
{vieweralsosee "[P] forvalues" "help forvalues_zh"}{...}
{vieweralsosee "[P] while" "help while_zh"}{...}
{viewerjumpto "Syntax" "ifcmd_zh##syntax"}{...}
{viewerjumpto "Description" "ifcmd_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "ifcmd_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "ifcmd_zh##remarks"}
{help ifcmd:English Version}
{hline}{...}
{p2colset 1 11 13 2}{...}
{p2col:{bf:[P] if} {hline 2}}如果编程命令{p_end}
{p2col:}({mansection P if:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmd:if} {it:exp} {cmd:{c -(}}{...}
{col 42}或{col 52}{cmd:if} {it:exp} {it:single_command}
		{it:multiple_commands}
	{cmd:{c )-}}

{pstd}
在这两种情况下，后面可以跟

	{cmd:else} {cmd:{c -(}}{...}
{col 42}或{col 52}{cmd:else} {it:single_command}
		{it:multiple_commands}
	{cmd:{c )-}}

{pstd}
如果在 {cmd:if} 或 {cmd:else} 后放置大括号，

{phang2}
1.  开始大括号必须与 {cmd:if} 或 {cmd:else} 在同一行上；

{phang2}
2.  开始大括号之后不能有其他内容，当然，注释除外；第一个要执行的命令必须在新的一行上；

{phang2}
3.  结束大括号必须单独成行。


{marker description}{...}
{title:描述}

{pstd}
{cmd:if} 命令（不要与 {cmd:if} 限定词混淆；见 {help if_zh}）评估 {it:exp}。如果结果为真（非零），则执行大括号中的命令。如果结果为假（零），则忽略这些语句，执行 {cmd:else} 后的语句（或被大括号包围的语句）。

{pstd}
有关表达式的解释，请参见 {help exp_zh}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P ifRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

	{help ifcmd##remarks1:典型用法：示例 1}
	{help ifcmd##remarks2:典型用法：示例 2}
	{help ifcmd##remarks3:典型用法：示例 3}
	{help ifcmd##remarks4:避免使用带有 ++ 和 -- 宏扩展的单行 if 和 else}


{marker remarks1}{...}
{title:典型用法：示例 1}

    {cmd:program} {it:...}
	    {cmd:syntax varlist [, Report ]}
	    {it:...}
	    {cmd:if "`report'" != "" {c -(}}
		    {it:(进行可选报告的逻辑)}
	    {cmd:{c )-}}
	    {it:...}
    {cmd:end}


{marker remarks2}{...}
{title:典型用法：示例 2}

    {cmd:program} {it:...}
	    {cmd:syntax varlist [, Adjust(string) ]}
	    {it:...}
	    {cmd:if "`adjust'" != "" {c -(}}
		    {cmd:if "`adjust'" == "means" {c -(}}
			    {it:...}
		    {cmd:{c )-}}
		    {cmd:else if "`adjust'" == "medians" {c -(}}
			    {it:...}
		    {cmd:{c )-}}
		    {cmd:else {c -(}}
			    {cmd:display as err /*}
			    {cmd:*/ "指定 adjust(means) 或 adjust(medians)"}
			    {cmd:exit 198}
		    {cmd:{c )-}}
	    {cmd:{c )-}}
	    {it:...}
    {cmd:end}


{marker remarks3}{...}
{title:典型用法：示例 3}

    {cmd:program} {it:...}
            {cmd:syntax} {it:...} {cmd:[,} {it:...} {cmd:n(integer 1)} {it:...} {cmd:]}
	    {it:...}
            {cmd:if `n'==1 {c -(}
                local word "one"
            {c )-}
            else if `n'==2 {c -(}
                local word "two"
            {c )-}
            else if `n'==3 {c -(}
                local word "three"
            {c )-}
            else {c -(}
                local word "big"
            {c )-}{txt}
	    {it:...}
    {cmd:end}


{marker remarks4}{...}
{title:避免使用带有 ++ 和 -- 宏扩展的单行 if 和 else}

{pstd}
当操作包含 {cmd:`++'} 或 {cmd:`--'} 宏扩展运算符时，不要使用 {cmd:if} 和 {cmd:else} 的单行形式 -- 不要省略大括号。例如，不要这样编码

	{cmd:if (}...{cmd:)} {it:somecommand} {cmd:`++i'}

{p 4 3 2}
应改为：

	{cmd:if (}...{cmd:)} {cmd:{c -(}}
		{it:somecommand} {cmd:`++i'}
	{cmd:{c )-}}

{pstd}
在第一个示例中，无论条件为真还是假， {cmd:i} 都会递增，因为宏扩展在行被解释之前发生。在第二个示例中，如果条件为假，括号内的行将不会进行宏扩展，因此 {cmd:i} 不会被递增。

{pstd}
同样适用于 {cmd:else} 语句；不要编码

	{cmd:else} {it:somecommand} {cmd:`++i'}

{pstd}
应改为：

	{cmd:else {c -(}}
		{it:somecommand} {cmd:`++i'}
	{cmd:{c )-}}

{title:技术说明}

    刚才所说的内容同样适用于具有副作用的类程序的宏引发执行。考虑

	    {cmd:if (}...{cmd:)} {it:somecommand} {cmd:`.clspgm.getnext'}

{pmore}
    类成员程序 {cmd:.getnext} 将会无论条件是否成立而执行。在这种情况下，编码

	    {cmd:if (}...{cmd:) {c -(}}
		    {it:somecommand} {cmd:`.clspgm.getnext'}
	    {cmd:{c )-}}

{pmore}
    理解这个问题只会在宏替换导致类程序被调用时出现。编写如下代码是没有问题的{p_end}

	    {cmd:if (}...{cmd:)} {cmd:`.clspgm.getnext'}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ifcmd.sthlp>}