{smcl}
{* *! version 1.0.0  14may2019}{...}
{vieweralsosee "[G-4] size" "mansection G-4 size"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] linewidthstyle" "help linewidthstyle_zh"}{...}
{vieweralsosee "[G-4] marginstyle" "help marginstyle_zh"}{...}
{vieweralsosee "[G-4] markersizestyle" "help markersizestyle_zh"}{...}
{vieweralsosee "[G-4] textsizestyle" "help textsizestyle_zh"}{...}
{viewerjumpto "Syntax" "size_zh##syntax"}{...}
{viewerjumpto "Description" "size_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "size_zh##linkspdf"}
{help size:English Version}
{hline}{...}
{p2colset 1 15 25 2}{...}
{p2col:{bf:[G-4]} {it:size} {hline 2}}对象大小的选择{p_end}
{p2col:}({mansection G-4 size:查看完整的 PDF 手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{synoptset 20}{...}
{p2col:{it:size}}描述{p_end}
{p2line}
{synopt :{it:#}{cmd:pt}}以打印点指定大小{p_end}
{synopt :{it:#}{cmd:in}}以英寸指定大小{p_end}
{synopt :{it:#}{cmd:cm}}以厘米指定大小{p_end}
{synopt :{it:#}{cmd:rs}}以相对大小指定大小， 其中
大小 100 = 图形的宽度和高度的最小值；{it:#} 必须是 {ul:>} 0{p_end}

{synopt :{it:#}}指定大小；单位将根据指定的方案和图形类型而定¹

{synopt :{cmd:*}{it:#}}通过乘法指定大小变化；
{cmd:*1} 表示没有变化， {cmd:*2} 表示大两倍， {cmd:*.5} 表示一半；
{it:#} 必须是 {ul:>} 0，具体取决于上下文{p_end}
{p2line}
{p 4 6 2}
在某些情况下允许负大小，例如间隙；在其他情况下，例如符号的大小，大小必须是非负的，负大小（如果指定）将被忽略。

{p 4 6 2}
¹ 从 Stata 16 开始，所有官方 {help schemes_zh} 使用相对大小作为 {it:#} 的单位， 除了森林图使用的样式（请参见
{help meta_forestplot_zh:[META] meta forestplot}），这些样式默认为打印点。


{pstd}
示例：

{p2col:{it:示例}}描述{p_end}
{p2line}
{synopt :{cmd:msize(4pt)}}将标记直径设置为 4 点{p_end}
{synopt :{cmd:msize(.1in)}}将标记直径设置为 0.1 英寸{p_end}
{synopt :{cmd:msize(.2cm)}}将标记直径设置为 0.2 厘米{p_end}
{synopt :{cmd:msize(1.5)}}将标记直径设置为 {it:g} 的 1.5%{p_end}
{synopt :{cmd:msize(*1.5)}}将标记大小设置为默认大小的 1.5 倍{p_end}
{synopt :{cmd:msize(*.5)}}将标记大小设置为默认大小的一半{p_end}

{synopt :{cmd:lwidth(1pt)}}将线的粗细设置为 1 点{p_end}
{synopt :{cmd:size(12pt)}}将文本大小设置为 12 点{p_end}
{synopt :{cmd:mlwidth(.3cm)}}将轮廓的粗细设置为 0.3 厘米{p_end}
{synopt :{cmd:labgap(.5in)}}将刻度间距与标签的间距设置为 0.5 英寸{p_end}
{synopt :{cmd:xsca(titlegap(2))}}将间距设置为 {it:g} 的 2%{p_end}
{synopt :{cmd:xsca(titlegap(*-.5))}}将间距设置为默认值的 -0.5 倍{p_end}
{p2line}
{p 4 6 2}
其中 {it:g} = min(图形的宽度，图形的高度){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{it:size} 指定文本、标记、边距、线的粗细、行间距、间隙等的大小，单位可以是打印点、英寸、厘米和相对大小。您可以在所有大小上指定单位，除了那些明确相对图形中其他项目的大小。

{pstd}
要以特定单位指定大小，请在大小后添加单位后缀 -- {cmd:pt} 表示打印点， {cmd:in} 表示英寸， {cmd:cm} 表示厘米， {cmd:rs} 表示相对大小 -- 例如， {cmd:12pt}。

{pstd}
相对大小指定相对于绘制的图形（或子图形）的大小。因此，随着图形大小的变化，对象的大小也会变化。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-4 sizeRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <size.sthlp>}