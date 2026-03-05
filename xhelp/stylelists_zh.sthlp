{smcl}
{* *! version 1.1.6  19oct2017}{...}
{vieweralsosee "[G-4] stylelists" "mansection G-4 stylelists"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway" "help twoway"}{...}
{viewerjumpto "Syntax" "stylelists_zh##syntax"}{...}
{viewerjumpto "Description" "stylelists_zh##description"}
{help stylelists:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[G-4]} {it:stylelists} {hline 2}}样式元素和简写的列表{p_end}
{p2col:}({mansection G-4 stylelists:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
一个 {it:stylelist} 是一组样式元素和简写的通用列表；具体的 {it:stylelists} 示例包括 {it:symbolstylelist}，{it:colorstylelist}，等等。

{pstd}
一个 {it:stylelist} 是

	{it:el} [{it:el} [...]]

{pstd}
其中每个 {it:el} 可以是

{synoptset 25}{...}
{p2col:{it:el}}描述{p_end}
{p2line}
{p2col:{it:as_defined_by_style}}{it:symbolstyle}，{it:colorstyle}，... 允许的内容{p_end}
{p2col:{cmd:"}{it:as defined by style}{cmd:"}}必须用引号引起来的 {it:el} 包含空格{p_end}
{p2col:`"{it:as "defined" by style}"'}复合引号，{it:el} 包含引号{p_end}
{p2col:{cmd:.}}指定为 "默认"{p_end}
{p2col:{cmd:=}}重复前一个 {it:el}{p_end}
{p2col:{cmd:..}}重复前一个 {it:el} 直到结束{p_end}
{p2col:{cmd:...}}与 {cmd:..} 相同{p_end}
{p2line}
{p2colreset}{...}

{p 4 6 2}
如果列表提前结束，就像列表用 {cmd:.} 填充（意味着剩余元素的默认值）。

{p 4 6 2}
如果列表的元素多于所需，额外的元素将被忽略。

{p 4 6 2}
第一个元素中的 {cmd:=} 被视为 {cmd:.}（句号）。

{p 4 6 2}
如果列表允许数字，包括缺失值，如果缺失值不是默认值，并且您想要为一个元素指定缺失值，则必须将句号括在引号中： {cmd:"."}。


    示例：

	. ..., ... {cmd:msymbol(O d p o)} ...
	. ..., ... {cmd:msymbol(O . p)} ...
	. ..., ... {cmd:mcolor(blue . green green)} ...
	. ..., ... {cmd:mcolor(blue . green =)} ...
	. ..., ... {cmd:mcolor(blue blue blue blue)} ...
	. ..., ... {cmd:mcolor(blue = = =)} ...
	. ..., ... {cmd:mcolor(blue ...)} ...


{marker description}{...}
{title:描述}

{pstd}
有时一个选项不仅接受 {it:colorstyle} 而是接受 {it:colorstylelist}，或者不是 {it:symbolstyle} 而是 {it:symbolstylelist}。
{it:colorstyle} 和 {it:symbolstyle} 只是两个示例；还有许多样式。 选项是否允许列表在其语法图中有说明。
例如，您可能会看到

{phang2}
	{cmd:graph matrix} ... [{cmd:,} ... {cmd:mcolor(}{it:colorstyle}{cmd:)} ... ]

{pstd}
在某个地方以及

{phang2}
	{cmd:graph twoway scatter} ... [{cmd:,} ... {cmd:mcolor(}{it:colorstylelist}{cmd:)} ... ]

{pstd}
在另一个地方。在任何一种情况下，要了解 {it:colorstyles}，可以查看 {manhelpi colorstyle G-4}。在这里我们讨论了如何将 {it:colorstyle} 泛化为 {it:colorstylelist} 或将 {it:symbolstyle} 泛化为 {it:symbolstylelist} 等等。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stylelists.sthlp>}