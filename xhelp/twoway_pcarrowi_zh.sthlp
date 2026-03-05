{smcl}
{* *! version 1.1.9  20aug2018}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway pcarrowi" "mansection G-2 graphtwowaypcarrowi"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway scatteri" "help twoway_scatteri_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway pcarrow" "help twoway_pcarrow_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway" "help twoway"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 19 Immediate commands" "help immed_zh"}{...}
{viewerjumpto "Syntax" "twoway_pcarrowi_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_pcarrowi_zh##menu"}{...}
{viewerjumpto "Description" "twoway_pcarrowi_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_pcarrowi_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_pcarrowi_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_pcarrowi_zh##remarks"}
{help twoway_pcarrowi:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[G-2] graph twoway pcarrowi} {hline 2}}带立即参数的双向箭头{p_end}
{p2col:}({mansection G-2 graphtwowaypcarrowi:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 24 2}
{cmdab:tw:oway}
{cmd:pcarrowi}
{it:立即值}
[{cmd:,}
{help twoway_pcarrowi##options:{it:选项}}]

{pstd}
其中 {it:立即值} 是一个或多个

	{it:#_y1} {it:#_x1} {it:#_y2} {it:#_x2} [{cmd:(}{it:#_clockposstyle}{cmd:)}] [{cmd:"}{it:标签文本}{cmd:"}]

{pstd}
请参阅 {manhelpi clockposstyle G-4} 获取 {it:#_clockposstyle} 的描述。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双向图形（散点图、折线图等）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:pcarrowi} 是 {helpb twoway pcarrow} 的即刻版本；请参阅 {findalias frimmediate} 和 {help immed_zh}。
{cmd:pcarrowi} 旨在供程序员使用，但在交互式使用中也很有用。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphtwowaypcarrowiQuickstart:快速开始}

        {mansection G-2 graphtwowaypcarrowiRemarksandexamples:备注和示例}

{pstd}
上述章节没有包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{it:选项} 的定义在 {manhelp twoway_pcarrow G-2:图形双向箭头} 中，以下是更改：

{pmore}
    如果 {cmd:"}{it:标签文本}{cmd:"} 在任何立即参数中被指定，则假定使用选项 {cmd:mlabel()}。

{pmore}
    如果 {cmd:(}{it:#_clockposstyle}{cmd:)} 在任何立即参数中被指定，则假定使用选项 {cmd:mlabvposition()}。


{marker remarks}{...}
{title:备注}

{pstd}
立即命令是指从作为参数输入的数字获取数据的命令。输入

	{cmd:. twoway pcarrowi 1.1 1.2 1.3 1.4  2.1 2.2 2.3 2.4,} {it:任何选项}

{pstd}
生成与输入

	{cmd:. clear}

	{cmd:. input y1 x1 y2 x2}
	     {txt}        y1         x1         y2         x2
	  1{cmd}. 1.1 1.2 1.3 1.4
	{txt}  2{cmd}. 2.1 2.2 2.3 2.4
	{txt}  3{cmd}. end
	{txt}
	{cmd:. twoway pcarrowi y x,} {it:任何选项}

{pstd}
{cmd:twoway} {cmd:pcarrowi} 不会修改内存中的数据。

{pstd}
{cmd:pcarrowi} 旨在供程序员使用，但也可以用于交互操作。
在 {it:{help twoway pcarrow##basic_use:基本用法}} 中，我们从输入的数据中绘制了一些简单的时钟指针。我们可以使用 {cmd:pcarrowi} 绘制相同的图形。

	{cmd:. twoway pcarrowi 0  0  0  1  0  0  1  0}
	  {it:({stata `"twoway pcarrowi 0  0  0  1  0  0  1  0"':点击运行})}
{* graph gtpcarrowi1}{...}

{pstd}
我们还可以绘制带注释的第二个示例，

{cmd}{...}
	. twoway pcarrowi 0  0  0  1  (3) "3点钟" 
	  		  0  0  1  0 (12) "12点钟",
			  aspect(1) headlabel plotregion(margin(vlarge))
{txt}{...}
	  {it:({stata `"twoway pcarrowi 0  0  0  1  (3) "3点钟" 0  0  1  0 (12) "12点钟", aspect(1) headlabel plotregion(margin(vlarge))"':点击运行})}
{* graph gtpcarrowi2}{...}

{pstd}
作为另一个示例，在 {manhelpi added_text_options G-3} 中，我们演示了使用选项 {cmd:text()} 向图形添加文本：

	{cmd}. twoway qfitci  mpg weight, stdf ||
		 scatter mpg weight, ms(O)
		 text(41 2040 "大众柴油车", place(e))
		 text(28 3260 "普利茅斯箭头", place(e))
		 text(35 2050 "日产210和斯巴鲁", place(e)){txt}
	  {it:({stata `"gr_example auto: twoway qfitci mpg weight, stdf || scatter mpg weight, ms(O) text(41 2040 "大众柴油车", place(e)) text(28 3260 "普利茅斯箭头", place(e)) text(35 2050 "日产210和斯巴鲁", place(e))"':点击运行})}
{* graph atofig1, but do not repeat in manual version}{...}

{pstd}
下面我们使用 {cmd:pcarrowi} 来获得相似的结果：

	{cmd}. twoway qfitci  mpg weight, stdf ||
		 scatter mpg weight, ms(O) ||
		 pcarrowi 41 2200 41 2060 (3) "大众柴油车"
			  31 3460 28 3280 (3) "普利茅斯箭头"
			  35 2250 35 2070 (3) "日产210和斯巴鲁",
			  legend(order(1 2 3))
{* graph gtpcarrowi3}{...}
	  {it:({stata "gr_example2 pcarrowi1":点击运行})}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_pcarrowi.sthlp>}