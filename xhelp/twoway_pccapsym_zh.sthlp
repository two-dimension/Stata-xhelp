{smcl}
{* *! version 1.1.8  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway pccapsym" "mansection G-2 graphtwowaypccapsym"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway" "help twoway"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway line" "help line_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway rcapsym" "help twoway_rcapsym_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway pcarrow" "help twoway_pcarrow_zh"}{...}
{vieweralsosee "[G-2] graph twoway pci" "help twoway_pci_zh"}{...}
{vieweralsosee "[G-2] graph twoway pcscatter" "help twoway_pcscatter_zh"}{...}
{vieweralsosee "[G-2] graph twoway pcspike" "help twoway_pcspike_zh"}{...}
{viewerjumpto "Syntax" "twoway_pccapsym_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_pccapsym_zh##menu"}{...}
{viewerjumpto "Description" "twoway_pccapsym_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_pccapsym_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_pccapsym_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_pccapsym_zh##remarks"}
{help twoway_pccapsym:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[G-2] graph twoway pccapsym} {hline 2}}带尖角符号的配对坐标图{p_end}
{p2col:}({mansection G-2 graphtwowaypccapsym:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 60 2}
{cmdab:tw:oway}
{cmd:pccapsym}
{it:y1var} {it:x1var} {it:y2var} {it:x2var}
{ifin}
[{cmd:,}
{it:选项}]

{synoptset 22}{...}
{p2col:{it:选项}}描述{p_end}
{p2line}
INCLUDE help gr_blspike2
INCLUDE help gr_markopt
INCLUDE help gr_headlabopt

INCLUDE help gr_hvpcopt
INCLUDE help gr_axlnk

INCLUDE help gr_twopt
{p2line}
{p 4 6 2}
所有显式选项都是 {it:最右}，除了 {cmd:headlabel}、{cmd:vertical} 和 {cmd:horizontal}，它们是 {it:唯一}的；见 {help 重复选项}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双坐标图（散点、线等）}


{marker description}{...}
{title:描述}

{pstd}
带尖角符号的配对坐标图为数据集中每个观测绘制一条尖角（或线），并在每个末端用标记符号进行标记。 该线从坐标 ({it:y1var},{it:x1var}) 开始，到达坐标 ({it:y2var},{it:x2var})，这两个坐标都有标记。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphtwowaypccapsymQuickstart:快速开始}

        {mansection G-2 graphtwowaypccapsymRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

INCLUDE help gr_blspikef2

{phang}
{it:marker_options}
    指定标记的外观，包括形状、大小、颜色和轮廓；请参见 {manhelpi marker_options G-3}。同一标记用于尖角的两端。

{phang}
{it:marker_label_options}
    指定标记是否以及如何标记；请参见 {manhelpi marker_label_options G-3}。

INCLUDE help gr_headlaboptf

INCLUDE help gr_hvpcoptf

INCLUDE help gr_axlnkf

INCLUDE help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

	{help twoway_pccapsym##basic_use:基本用法 1}
	{help twoway_pccapsym##basic_use2:基本用法 2}


{marker basic_use}{...}
{title:基本用法 1}

{pstd}
我们拥有1968年和1988年关于美国女性按职业划分的收入和总工作年限的纵向数据。

	{cmd:. sysuse nlswide1}

	{cmd:. list occ wage68 ttl_exp68 wage88 ttl_exp88}
{txt}
	     {c TLC}{hline 61}{c TRC}
	     {c |} {res}           职业         wage68  ttl_e~68    wage88  ttl_e~88 {txt}{c |}
	     {c LT}{hline 61}{c RT}
	  1. {c |} {res}专业人员        6.121874   .860618  10.94776  14.11177 {txt}{c |}
	  2. {c |} {res}     管理人员        5.426208  1.354167  11.53928  13.88886 {txt}{c |}
	  3. {c |} {res}        销售        4.836701  .9896552  7.290306  12.62823 {txt}{c |}
	  4. {c |} {res} 文职/不熟练工作  4.088309   .640812  9.612672  11.08019 {txt}{c |}
	  5. {c |} {res}    工匠        4.721373  1.091346  7.839769  12.64364 {txt}{c |}
	     {c LT}{hline 61}{c RT}
	  6. {c |} {res}   操作工        4.364782  .7959284  5.893025  11.99362 {txt}{c |}
	  7. {c |} {res}    运输        1.987857  .5247414  3.200494  8.710394 {txt}{c |}
	  8. {c |} {res}     劳工        3.724821   .775966  5.264415  10.56182 {txt}{c |}
	  9. {c |} {res}        其他         5.58524  .8278245  8.628641  12.78389 {txt}{c |}
	     {c BLC}{hline 61}{c BRC}
{txt}

{pstd}
我们绘制了一条尖角，末端用符号标记，以显示每个观测（每个职业）的1968年到1988年的数值变化：

	{cmd:. twoway pccapsym wage68 ttl_exp68 wage88 ttl_exp88}
	  {it:({stata "gr_example nlswide1: twoway pccapsym wage68 ttl_exp68 wage88 ttl_exp88":点此运行})}
{* graph gtpccapsym1}{...}

{pstd}
有关更好地展示这些数据的信息，请见 
{it:{help twoway_pcspike##advanced_use:高级用法}} 在
{manhelp twoway_pcspike G-2:graph twoway pcspike}；那里的关于组合图的评论同样适用于
{cmd:pccapsym}图。


{marker basic_use2}{...}
{title:基本用法 2}

{pstd}
我们可以通过使用 {cmd:twoway pccapsym} 来绘制网络图的边和节点。

	{cmd:. sysuse network1}

	{cmd:. twoway pccapsym y_c x_c y_l x_l}
	  {it:({stata "gr_example network1: twoway pccapsym y_c x_c y_l x_l":点此运行})}
{* graph gtpccapsym2}{...}

{pstd}
同样，关于更好展示这些数据的信息可以在
{manhelp twoway_pcspike G-2:graph twoway pcspike}
中的 {it:{help twoway_pcspike##advanced_use2:高级用法 2}} 下找到。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_pccapsym.sthlp>}