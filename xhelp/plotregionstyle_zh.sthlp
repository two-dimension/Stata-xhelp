{smcl}
{* *! version 1.1.7  19oct2017}{...}
{vieweralsosee "[G-4] plotregionstyle" "mansection G-4 plotregionstyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] areastyle" "help areastyle_zh"}{...}
{vieweralsosee "[G-4] marginstyle" "help marginstyle_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "scheme files" "help scheme files"}{...}
{viewerjumpto "Syntax" "plotregionstyle_zh##syntax"}{...}
{viewerjumpto "Description" "plotregionstyle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "plotregionstyle_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "plotregionstyle_zh##remarks"}
{help plotregionstyle:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[G-4]} {it:plotregionstyle} {hline 2}}绘图区域整体外观的选择{p_end}
{p2col:}({mansection G-4 plotregionstyle:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 25}{...}
{p2col:{it:plotregionstyle}}描述{p_end}
{p2line}
{p2col:{cmd:twoway}}用于{helpb graph twoway}的默认值{p_end}
{p2col:{cmd:transparent}}用于重叠绘图区域的{helpb graph twoway}{p_end}
{p2col:{cmd:bargraph}}用于{helpb graph bar}的默认值{p_end}
{p2col:{cmd:hbargraph}}用于{helpb graph hbar}的默认值{p_end}
{p2col:{cmd:boxgraph}}用于{helpb graph box}的默认值{p_end}
{p2col:{cmd:hboxgraph}}用于{helpb graph hbox}的默认值{p_end}
{p2col:{cmd:dotgraph}}用于{helpb graph dot}的默认值{p_end}
{p2col:{cmd:piegraph}}用于{helpb graph pie}的默认值{p_end}

{p2col:{cmd:matrixgraph}}用于{helpb graph matrix}的默认值{p_end}
{p2col:{cmd:matrix}}{helpb graph matrix}内部区域{p_end}
{p2col:{cmd:matrix_label}}{helpb graph matrix}对角线标签{p_end}

{p2col:{cmd:combinegraph}}用于{helpb graph combine}的默认值{p_end}
{p2col:{cmd:combineregion}}{helpb graph combine}内部区域{p_end}
{p2col:{cmd:bygraph}}用于{help by_option_zh:by graphs}的默认值{p_end}

{p2col:{cmd:legend_key_region}}图例的关键和标签区域{p_end}
{p2line}
{p2colreset}{...}

{pstd}
其他的 {it:plotregionstyle} 可能是可用的；输入

	    {cmd:.} {bf:{stata graph query plotregionstyle}}

{pstd}
以获取您计算机上安装的所有 {it:plotregionstyles} 的列表。


{marker description}{...}
{title:描述}

{pstd}
一个 {it:plotregionstyle} 控制绘图区域的整体外观。

{pstd}
绘图区域样式仅在方案文件中使用（见 {help scheme files}），并且不能通过 {help graph_zh} 命令访问。要了解影响绘图样式的 {cmd:graph} 选项，请参见 {manhelpi region_options G-3}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-4 plotregionstyleRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
绘图区域的外观由四组属性定义：

{phang2}
    1.  {it:marginstyle} -- 绘图区域的内部边距；{break}
	见 {manhelpi marginstyle G-4}

{phang2}
    2.  整体 {it:areastyle} -- 绘图区域总面积的外观；见 {manhelpi areastyle G-4}

{phang2}
    3.  内部 {it:areastyle} -- 边距内的区域外观；{break}
	见 {manhelpi areastyle G-4}

{phang2}
    4.  定位 -- 当区域所在的空间大于绘图区域本身时，绘图区域的水平和垂直定位

{pstd}
一个 {it:plotregionstyle} 指定所有这些属性。  
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <plotregionstyle.sthlp>}