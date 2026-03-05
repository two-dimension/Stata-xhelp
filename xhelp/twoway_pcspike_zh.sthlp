{smcl}
{* *! version 1.1.8  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway pcspike" "mansection G-2 graphtwowaypcspike"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway" "help twoway"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway line" "help line_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway rspike" "help twoway_rspike_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway pcarrow" "help twoway_pcarrow_zh"}{...}
{vieweralsosee "[G-2] graph twoway pccapsym" "help twoway_pccapsym_zh"}{...}
{vieweralsosee "[G-2] graph twoway pci" "help twoway_pci_zh"}{...}
{vieweralsosee "[G-2] graph twoway pcscatter" "help twoway_pcscatter_zh"}{...}
{viewerjumpto "Syntax" "twoway_pcspike_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_pcspike_zh##menu"}{...}
{viewerjumpto "Description" "twoway_pcspike_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_pcspike_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_pcspike_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_pcspike_zh##remarks"}
{help twoway_pcspike:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[G-2] graph twoway pcspike} {hline 2}}配对坐标图带尖峰{p_end}
{p2col:}({mansection G-2 graphtwowaypcspike:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{* index twoway pcspike tt}{...}
{* index paired-coordinate plots, pcspike}{...}

{marker syntax}{...}
{title:语法}

{p 8 60 2}
{cmdab:tw:oway}
{cmd:pcspike}
{it:y1var} {it:x1var} {it:y2var} {it:x2var}
{ifin}
[{cmd:,}
{it:选项}]


{synoptset 22}{...}
{p2col:{it:选项}}描述{p_end}
{p2line}
包含 help gr_blspike2

包含 help gr_hvpcopt
包含 help gr_axlnk

包含 help gr_twopt
{p2line}
{p 4 6 2}
所有显式选项都是 {it:最右侧}，除了 {cmd:vertical}
和 {cmd:horizontal}，它们是 {it:唯一}的；见 {help repeated options}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双变量图（散点图、线图等）}


{marker description}{...}
{title:描述}

{pstd}
配对坐标尖峰图为数据集中每个观测值绘制一条尖峰（或线）。该线从坐标 ({it:y1var},{it:x1var}) 开始，并在坐标 ({it:y2var},{it:x2var}) 结束。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-2 graphtwowaypcspikeQuickstart:快速开始}

        {mansection G-2 graphtwowaypcspikeRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

包含 help gr_blspikef2

包含 help gr_hvpcoptf

包含 help gr_axlnkf

包含 help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
备注在以下标题下呈现：

	{help twoway_pcspike##basic_use:基本用法}
	{help twoway_pcspike##advanced_use:高级用法}
	{help twoway_pcspike##advanced_use2:高级用法 2}

{marker basic_use}{...}
{title:基本用法}

{pstd}
我们有1968年和1988年关于美国女性按职业划分的收入和总经验的纵向数据。

	{cmd:. sysuse nlswide1}

	{cmd:. list occ wage68 ttl_exp68 wage88 ttl_exp88}
{txt}
	     {c TLC}{hline 61}{c TRC}
	     {c |} {res}           occ         wage68  ttl_e~68    wage88  ttl_e~88 {txt}{c |}
	     {c LT}{hline 61}{c RT}
	  1. {c |} {res}专业人员        6.121874   .860618  10.94776  14.11177 {txt}{c |}
	  2. {c |} {res}     管理者        5.426208  1.354167  11.53928  13.88886 {txt}{c |}
	  3. {c |} {res}        销售        4.836701  .9896552  7.290306  12.62823 {txt}{c |}
	  4. {c |} 文书/非技术工种  4.088309   .640812  9.612672  11.08019 {txt}{c |}
	  5. {c |}    工匠        4.721373  1.091346  7.839769  12.64364 {txt}{c |}
	     {c LT}{hline 61}{c RT}
	  6. {c |}   操作工        4.364782  .7959284  5.893025  11.99362 {txt}{c |}
	  7. {c |}    运输        1.987857  .5247414  3.200494  8.710394 {txt}{c |}
	  8. {c |}     劳动者        3.724821   .775966  5.264415  10.56182 {txt}{c |}
	  9. {c |}        其他         5.58524  .8278245  8.628641  12.78389 {txt}{c |}
	     {c BLC}{hline 61}{c BRC}
{txt}

{pstd}
我们绘制了一条尖峰，显示每个观测值（每个职业）从1968年值到1988年值的变化：

	{cmd:. twoway pcspike wage68 ttl_exp68 wage88 ttl_exp88}
	  {it:({stata "gr_example nlswide1: twoway pcspike wage68 ttl_exp68 wage88 ttl_exp88":点击运行})}
{* graph gtpcspike1}{...}


{marker advanced_use}{...}
{title:高级用法}

{pstd}
{cmd:twoway} {cmd:pcspike} 可以有效地与其他 {helpb twoway} 绘图类型结合使用。这里我们添加了标记和带标签的标记，以及标题等，来改善图形：

{cmd}{...}
	. twoway pcspike wage68 ttl_exp68 wage88 ttl_exp88	||
		 scatter wage68 ttl_exp68, msym(O)		||
		 scatter wage88 ttl_exp88, msym(O) pstyle(p4)
		 mlabel(occ) xscale(range(17))
		 title("美国女性经验和收入的变化")
		 subtitle("按职业 -- 1968 到 1988")
		 ytitle(收入) xtitle(总经验)
		 note("来源：国家年轻女性纵向调查")
		 legend(order(2 "1968" 3 "1988"))
{txt}{...}
	  {it:({stata "gr_example2 twopcspike1":点击运行})}
{* graph gtpcspike2}{...}


{marker advanced_use2}{...}
{title:高级用法 2}

{pstd}
与其他绘图类型相比，通过 {cmd:twoway pcspike} 绘制网络图的边缘通常更加容易。

	{cmd:. sysuse network1}

	{cmd:. twoway pcspike y_c x_c y_l x_l}
	  {it:({stata "gr_example network1: twoway pcspike y_c x_c y_l x_l":点击运行})}
{* graph gtpcspike3}{...}

{pstd}
与我们的第一个示例一样，通过将 {cmd:twoway pcspike} 与其他绘图类型结合使用，可以使图形更美观。

{cmd}{...}
	. sysuse network1a

	. twoway pcspike y_c x_c y_l x_l, pstyle(p3)		    ||
		 pcspike y_c x_c y_r x_r, pstyle(p4)		    ||
		 scatter y_l x_l, pstyle(p3) msize(vlarge) msym(O)
				  mlabel(lab_l) mlabpos(9)	    ||
		 scatter y_c x_c, pstyle(p5) msize(vlarge) msym(O)  ||
		 scatter y_r x_r, pstyle(p4) msize(vlarge) msym(O)
				  mlabel(lab_r) mlabpos(3)
	       yscale(off) xscale(off) ylabels(, nogrid) legend(off)
	       plotregion(margin(30 15 3 3))
{txt}{...}
	  {it:({stata "gr_example2 twopcspike2":点击运行})}
{* graph gtpcspike4}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_pcspike.sthlp>}