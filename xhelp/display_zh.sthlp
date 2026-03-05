{smcl}
{* *! version 1.1.13  22mar2018}{...}
{viewerdialog display "dialog display"}{...}
{vieweralsosee "[P] display" "mansection P display"}{...}
{vieweralsosee "[R] display" "mansection R display"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] capture" "help capture_zh"}{...}
{vieweralsosee "[D] list" "help list_zh"}{...}
{vieweralsosee "[D] outfile" "help outfile_zh"}{...}
{vieweralsosee "[P] quietly" "help quietly_zh"}{...}
{vieweralsosee "[P] return" "help return_zh"}{...}
{vieweralsosee "[P] smcl" "help smcl_zh"}{...}
{viewerjumpto "Syntax" "display_zh##syntax"}{...}
{viewerjumpto "Menu" "display_zh##menu"}{...}
{viewerjumpto "Description" "display_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "display_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "display_zh##remarks"}{...}
{viewerjumpto "Examples" "display_zh##examples"}
{help display:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[P] display} {hline 2}}显示字符串和标量表达式的值{p_end}
{p2col:}({mansection P display:查看完整PDF手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{p 8 16 2}{cmdab:di:splay} [{it:display_directive} [{it:display_directive} [{it:...}]]]

{pstd}其中 {it:display_directive} 是

	{cmd:"}{it:双引号字符串}{cmd:"}
{p 8 16 2}{cmd:`"}{it:复合双引号字符串}{cmd:"'}{p_end}
	[{help format_zh:{bf:%}{it:fmt}}] [{cmd:=}]{it:{help exp_zh}}
{p 8 16 2}{cmd:as} {c -(} {cmd:text} | {cmd:txt} | {cmdab:res:ult}
			| {cmdab:err:or} | {cmdab:inp:ut} {c )-}{p_end}
	{cmd:in smcl}
	{cmd:_asis}
	{cmdab:_s:kip:(}{it:#}{cmd:)}
	{cmdab:_col:umn:(}{it:#}{cmd:)}
	{cmdab:_n:ewline}[{cmd:(}{it:#}{cmd:)}]
	{cmdab:_c:ontinue}
	{cmdab:_d:up:(}{it:#}{cmd:)}
	{cmdab:_r:equest:(}{it:macname}{cmd:)}
	{cmd:_char(}{it:#}{cmd:)}
	{cmd:,}
	{cmd:,,}

{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 其他工具 > 计算器}

{marker description}{...}
{title:描述}

{pstd}
{cmd:display} 显示字符串和标量表达式的值。
{cmd:display} 从您编写的程序中生成输出。

{pstd}
在交互式环境中，{cmd:display} 可以用作计算器的替代品；请参见 {manlink R display}。您可以输入类似 {cmd:display 2+2} 的内容。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P displayRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。

{marker remarks}{...}
{title:备注}

{pstd}
{cmd:display} 的 {it:display_directive} 在 do 文件和程序中用于生成格式化输出。指令包含：

{synoptset 32}
{synopt:{cmd:"}{it:双引号字符串}{cmd:"}}显示字符串而不包含引号{p_end}

{synopt:{cmd:`"}{it:复合双引号字符串}{cmd:"'}}显示字符串而不包含外部引号；允许嵌入引号{p_end}

{synopt:[{cmd:%}{it:fmt}] [{cmd:=}] {cmd:exp}}允许结果格式化；参见 {bf:{mansection U 12.5FormatsControllinghowdataaredisplayed:[U] 12.5 格式: 控制数据如何显示}}{p_end}

{synopt:{cmd:as} {it:style}}设置后续指令的样式（"颜色"）；每个 {cmd:display} 可以有多个 {cmd:as} {it:style}{p_end}

{synopt:{cmd:in smcl}}从 {cmd:_asis} 模式切换到 {cmd:smcl} 模式{p_end}

{synopt:{cmd:_asis}}从 {cmd:smcl} 模式切换到 {cmd:_asis} 模式{p_end}

{synopt:{cmd:_skip(}{it:#}{cmd:)}}跳过 {it:#} 列{p_end}

{synopt:{cmd:_column(}{it:#}{cmd:)}}跳转到第 {it:#} 列{p_end}

{synopt:{cmd:_newline}}换行{p_end}

{synopt:{cmd:_newline(}{it:#}{cmd:)}}跳过 {it:#} 行{p_end}

{synopt:{cmd:_continue}}在 {cmd:display} 命令结束时禁止自动换行{p_end}

{synopt:{cmd:_dup(}{it:#}{cmd:)}}将下一个指令重复 {it:#} 次{p_end}

{synopt:{cmd:_request(}{it:macname}{cmd:)}}从控制台接受输入并放入宏 {it:macname}{p_end}

{synopt:{cmd:_char(}{it:#}{cmd:)}}显示 ASCII 和扩展 ASCII 代码 {it:#} 的字符，其中 {it:#} > 127 的值被视为 Latin1 编码字符并转换为相应的 UTF-8 字符{p_end}

{synopt:{cmd:,}}在两个指令之间显示一个空格{p_end}

{synopt:{cmd:,,}}在两个指令之间不放置空格{p_end}
{p2colreset}{...}

{marker examples}{...}
{title:示例}

{pstd}作为计算器使用：

{phang2}{cmd:. display 2 + 2}

{pstd}在 do 文件和程序中可能的用法：

{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. summarize mpg}{p_end}
{phang2}{cmd:. display as text "mpg 的平均值 = " as result r(mean)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <display.sthlp>}