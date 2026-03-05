{smcl}
{* *! version 1.1.8  19oct2017}{...}
{vieweralsosee "[G-3] scale_option" "mansection G-3 scale_option"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph" "help graph_zh"}{...}
{viewerjumpto "Syntax" "scale_option_zh##syntax"}{...}
{viewerjumpto "Description" "scale_option_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "scale_option_zh##linkspdf"}{...}
{viewerjumpto "Option" "scale_option_zh##option"}{...}
{viewerjumpto "Remarks" "scale_option_zh##remarks"}
{help scale_option:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[G-3]} {it:scale_option} {hline 2}}调整文本、标记和线宽的选项{p_end}
{p2col:}({mansection G-3 scale_option:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 20}{...}
{p2col:{it:scale_option}}描述{p_end}
{p2line}
{p2col:{cmd:scale(}{it:#}{cmd:)}}指定缩放比例; 默认值是 {cmd:scale(1)}{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}{cmd:scale()} 是 {it:唯一的}; 见 {help repeated options}.


{marker description}{...}
{title:描述}

{pstd}
选项 {cmd:scale()} 使图形上的所有文本、标记和线宽变大或变小。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-3 scale_optionQuickstart:快速入门}

        {mansection G-3 scale_optionRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:scale(}{it:#}{cmd:)}
    指定一个影响图形上所有文本、标记和线宽尺寸的倍数。{cmd:scale(1)} 是默认值。

{pmore}
    要将图形上所有文本、标记和线宽的大小增加 20%，请指定 {cmd:scale(1.2)}。要将图形上所有文本、标记和线宽的大小减少 20%，请指定 {cmd:scale(.8)}。


{marker remarks}{...}
{title:备注}

{pstd}
在 {it:{help marker_label_options##remarks3:高级用法}} 中的 {manhelpi marker_label_options G-3}，我们展示了以下图形，

	{cmd}. twoway (scatter lexp gnppc, mlabel(country) mlabv(pos))
		 (line hat gnppc, sort)
		 , xsca(log) xlabel(.5 5 10 15 20 25 30, grid)
		   legend(off)
		   title("人均寿命与国民生产总值的关系")
		   subtitle("北美、 中美和南美")
		   note("数据来源:  世界银行, 1998")
		   ytitle("出生时预期寿命（年）"){txt}
	  {it:({stata "gr_example2 markerlabel3":点击运行})}{txt}
{* graph markerlabel3}{...}

{pstd}
这是相同图形，所有文本、标记和线宽的大小增加了 10%：

	{cmd}. twoway (scatter lexp gnppc, mlabel(country) mlabv(pos))
		 (line hat gnppc, sort)
		 , xsca(log) xlabel(.5 5 10 15 20 25 30, grid)
		   legend(off)
		   title("人均寿命与国民生产总值的关系")
		   subtitle("北美、 中美和南美")
		   note("数据来源:  世界银行, 1998")
		   ytitle("出生时预期寿命（年）")
		   scale(1.1){txt}{right:<-- {it:新}  }
	  {it:({stata "gr_example2 markerlabel4":点击运行})}{txt}
{* graph markerlabel4}{...}

{pstd}
我们所做的就是在原命令中添加选项 {cmd:scale(1.1)}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scale_option.sthlp>}