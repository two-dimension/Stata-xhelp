{smcl}
{* *! version 1.1.7  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway scatteri" "mansection G-2 graphtwowayscatteri"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway scatter" "help scatter_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 19 Immediate commands" "help immed_zh"}{...}
{viewerjumpto "Syntax" "twoway_scatteri_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_scatteri_zh##menu"}{...}
{viewerjumpto "Description" "twoway_scatteri_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_scatteri_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_scatteri_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_scatteri_zh##remarks"}
{help twoway_scatteri:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[G-2] graph twoway scatteri} {hline 2}}立即参数绘制散点图{p_end}
{p2col:}({mansection G-2 graphtwowayscatteri:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 24 2}
{cmdab:tw:oway}
{cmd:scatteri}
{it:immediate_values}
[{cmd:,}
{help twoway_scatteri##scatteri_options:{it:选项}}]

{pstd}
其中 {it:immediate_values} 是一个或多个

	{it:#_y} {it:#_x} [{cmd:(}{it:#_clockposstyle}{cmd:)}] [{cmd:"}{it:文本标签}{cmd:"}]

{pstd}
有关 {it:#_clockposstyle} 的描述，请参见 {manhelpi clockposstyle G-4}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双向图（散点、线等）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:scatteri} 是 {help scatter_zh:双向散点图} 的立即版本；请参见 {findalias frimmediate} 和 {help immed_zh}。 {cmd:scatteri} 旨在供程序员使用，但在交互操作时也很有用。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection G-2 graphtwowayscatteri快速入门:快速开始}

        {mansection G-2 graphtwowayscatteri备注和示例:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}{marker scatteri_options}
{it:选项} 的定义与 {manhelp scatter G-2:graph twoway scatter} 中的一致，具有以下修改：

{pmore}
    如果在任何立即参数中指定了 {cmd:"}{it:文本标签}{cmd:"}，则假定使用选项 {help marker_label_options_zh:mlabel()}。

{pmore}
    如果在任何立即参数中指定了 {cmd:(}{it:#_clockposstyle}{cmd:)}，则假定使用选项 {help marker_label_options_zh:mlabvposition()}。


{marker remarks}{...}
{title:备注}

{pstd}
立即命令是从作为参数键入的数字中获取数据的命令。 输入

	{cmd:. twoway scatteri 1 1  2 2,} {it:任意选项}

{pstd}
产生与输入

	{cmd:. clear}

	{cmd:. input y x}
	     {txt}        y          x
	  1{cmd}. 1 1
	{txt}  2{cmd}. 2 2
	{txt}  3{cmd}. end
	{txt}
	{cmd:. twoway scatter y x,} {it:任意选项}

{pstd}
{cmd:twoway} {cmd:scatteri} 不会修改内存中的数据。

{pstd}
{cmd:scatteri} 旨在供程序员使用，但也可以互动使用。在 {manhelpi added_text_option G-3} 中，我们演示了使用选项 {cmd:text()} 向图形添加文本：

	{cmd}. twoway qfitci  mpg weight, stdf ||
		 scatter mpg weight, ms(O)
		 text(41 2040 "VW Diesel", place(e))
		 text(28 3260 "Plymouth Arrow", place(e))
		 text(35 2050 "Datsun 210 and Subaru", place(e)){txt}
	  {it:({stata `"gr_example auto: twoway qfitci mpg weight, stdf || scatter mpg weight, ms(O) text(41 2040 "VW Diesel", place(e)) text(28 3260 "Plymouth Arrow", place(e)) text(35 2050 "Datsun 210 and Subaru", place(e))"':click to run})}
{* 绘制 atofig1，但不要在手册版本中重复}{...}

{pstd}
以下我们使用 {cmd:scatteri} 获得类似的结果：

	{cmd}. twoway qfitci  mpg weight, stdf ||
		 scatter mpg weight, ms(O) ||
		 scatteri 41 2040 (3) "VW Diesel"
			  28 3260 (3) "Plymouth Arrow"
			  35 2050 (3) "Datsun 210 and Subaru"
			  , msymbol(i){txt}
	  {it:({stata `"gr_example auto: twoway qfitci  mpg weight, stdf || scatter mpg weight, ms(O) || scatteri 41 2040 (3) "VW Diesel" 28 3260 (3) "Plymouth Arrow" 35 2050 (3) "Datsun 210 and Subaru" , ms(i)"':click to run})}
{* 绘制 gtscatteri1}{...}

{pstd}
我们将 {cmd:text(}...{cmd:, place(e))} 翻译为 {cmd:(3)}，3点钟是 {cmd:e}ast {it:clockposstyle} 符号的表示法。由于默认情况下标签位于3点钟位置，我们可以完全省略 {cmd:(3)}：

	{cmd}. twoway qfitci  mpg weight, stdf ||
		 scatter mpg weight, ms(O) ||
		 scatteri 41 2040 "VW Diesel"
			  28 3260 "Plymouth Arrow"
			  35 2050 "Datsun 210 and Subaru"
			  , msymbol(i){txt}

{pstd}
我们指定了 {cmd:msymbol(i)} 选项以抑制标记符号的显示。

{pin}
{it:技术说明:}{break}
程序员：
请注意 {cmd:scatter} 的 {it:高级选项} {cmd:recast()}; 详见 {manhelpi advanced_options G-3}。
它可以有效使用，例如使用 {cmd:scatteri} 添加区域、条形、尖刺和下划线。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_scatteri.sthlp>}