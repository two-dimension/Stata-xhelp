{smcl}
{* *! version 1.1.11  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway pci" "mansection G-2 graphtwowaypci"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway scatteri" "help twoway_scatteri_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway pcarrow" "help twoway_pcarrow_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway" "help twoway"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 19 Immediate commands" "help immed_zh"}{...}
{viewerjumpto "Syntax" "twoway_pci_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_pci_zh##menu"}{...}
{viewerjumpto "Description" "twoway_pci_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_pci_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_pci_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_pci_zh##remarks"}
{help twoway_pci:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[G-2] graph twoway pci} {hline 2}}双变量配对坐标图
     具有即时参数{p_end}
{p2col:}({mansection G-2 graphtwowaypci:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 24 2}
{cmdab:tw:oway}
{cmd:pci}
{it:即时值}
[{cmd:,}
{help twoway_pci##options:{it:选项}}]

{pstd}
其中 {it:即时值} 是一个或多个

	{it:#_y1} {it:#_x1} {it:#_y2} {it:#_x2} [{cmd:(}{it:#_clockposstyle}{cmd:)}] [{cmd:"}{it:标签文本}{cmd:"}]

{pstd}
有关 {it:#_clockposstyle} 的描述，请参见 {manhelpi clockposstyle G-4}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双变量图（散点图、线图等）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:pci} 是 {helpb twoway pcspike} 的即时版本；
请参见 {findalias frimmediate} 和 {help immed_zh}。
{cmd:pci} 旨在用于程序员，但在交互式操作中也很有用。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphtwowaypciQuickstart:快速开始}

        {mansection G-2 graphtwowaypciRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{it:选项} 定义于
{manhelp twoway_pcspike G-2:图形双变量 pcspike}，
以下是相关修改：

{pmore}
    如果指定了 {cmd:"}{it:标签文本}{cmd:"} 作为任何即时参数之一，假定使用选项 {help marker_label_options_zh:mlabel()}。

{pmore}
    如果在任何即时参数中指定了 {cmd:(}{it:#_clockposstyle}{cmd:)}，则假定使用选项 {help marker_label_options_zh:mlabvposition()}。

{pmore}
    如果使用 {cmd:recast()} 选项将尖峰更改为配对坐标图，该图像将标记点与 {it:marker_options} 结合使用，请参见
    {manhelp twoway_pccapsym G-2:图形双变量 pccapsym}。

{marker remarks}{...}
{title:备注}

{pstd}
即时命令是从输入为参数的数字中获取数据的命令。

{pstd}
{cmd:twoway} {cmd:pci} 不会修改内存中的数据。

{pstd}
{cmd:pci} 旨在用于程序员，但也可以交互使用。我们可以将 {cmd:pci} 图与其他 {cmd:twoway} 图结合，以生成快速图表。

{cmd}{...}
	  . twoway function  y = -x^2, range(-2 2) || 
   	        pci 0 1 0 -1			   ||
	        pcarrowi 1.2 .5 0 0
{txt}{...}
	  {it:({stata `"twoway function  y = -x^2, range(-2 2) || pci 0 1 0 -1 || pcarrowi 1.2 .5 0. 0"':click to run})}
{* graph gtpcarrowi1}{...}

{pstd}
我们可以通过以下方式改进注释：

{cmd}{...}
	  . twoway function  y = -x^2, range(-2 2)  || 
	  	pci 0 1 0 -1 "切线", recast(pccapsym) msymbol(i) || 
		pcarrowi 1.2 .5 0.05 0 "最大值在 x=0",
		legend(off) title("y = -x{c -(}上标:2{c )-} 的特征")
{txt}{...}
	  {it:({stata `"twoway function  y = -x^2, range(-2 2) || pci 0 1 0 -1 "切线", recast(pccapsym) msymbol(i) || pcarrowi 1.2 .5 0.05 0 "最大值在 x=0", legend(off) title("y = -x{superscript:2}")"':click to run})}
{* graph gtpcarrowi2}{...}

{pstd}
一个稍微更古怪的例子是

{cmd}{...}
	  . twoway pci 2 0 2 6  4 0 4 6  0 2 6 2  0 4 6 4 ||
	  	scatteri 5 1  3 3, msize(ehuge) ms(X)  ||
		scatteri 5 5  1 5, msize(ehuge) ms(Oh) legend(off)
{txt}{...}
	  {it:({stata `"twoway pci 2 0 2 6  4 0 4 6  0 2 6 2  0 4 6 4 || scatteri 5 1  3 3 , msize(ehuge) ms(X) || scatteri 5 5  1 5, msize(ehuge) ms(Oh) legend(off)"':click to run})}

{pstd}
{it:技术说明:}{break}
程序员：
请仔细注意 {cmd:twoway} 的 {it:advanced_option} {cmd:recast()}；参见
{manhelpi advanced_options G-3}。
它可以有效地与其他内容结合使用，例如使用 {cmd:pci} 添加标记标签。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_pci.sthlp>}