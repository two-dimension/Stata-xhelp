{smcl}
{* *! version 1.0.9  11feb2011}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] textstyle" "help textstyle_zh"}{...}
{vieweralsosee "[G-4] clockposstyle" "help clockposstyle_zh"}{...}
{vieweralsosee "[G-4] textsizestyle" "help textsizestyle_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] markerlabelstyle" "help markerlabelstyle_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "scheme files" "help scheme files"}{...}
{viewerjumpto "Syntax" "labelstyle_zh##syntax"}{...}
{viewerjumpto "Description" "labelstyle_zh##description"}{...}
{viewerjumpto "Remarks" "labelstyle_zh##remarks"}
{help labelstyle:English Version}
{hline}{...}
{title:标题}

{p2colset 5 25 27 2}{...}
{p2col :{hi:[G-4]} {it:labelstyle} {hline 2}}标记标签整体外观的选择（方案文件版本）{p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

	{it:labelstyle}{col 34}描述
	{hline 69}
	{cmd:p1}{hline 1}{cmd:p15}{...}
{col 34}用于第一个{hline 1}第十五个二元图
	{cmd:p1box}{hline 1}{cmd:p15box}{...}
{col 34}用于第一个{hline 1}第十五个“箱线”图
	{hline 69}

{pin}
其他 {it:labelstyles} 可能是可用的。键入

	    {cmd:.} {bf:{stata graph query labelstyle}}

{pin}
以获取安装在您计算机上的 {it:labelstyles} 的完整列表。


{marker description}{...}
{title:描述}

{pstd}
{it:labelstyle} 是 {it:{help markerlabelstyle_zh}} 的同义词，并设置标记标签的 {it:{help textstyle_zh}} 和 {help clockposstyle_zh:位置}。此条目提供了比 {it:{help markerlabelstyle_zh}} 中找到的更正式的定义，更适合于创建 {help scheme files} 的用户。



{marker remarks}{...}
{title:备注}

{pstd}
备注分为以下标题：

	{help labelstyle##remarks1:什么是 labelstyle?}
	{help labelstyle##remarks1:什么是编号样式?}


{marker remarks1}{...}
{title:什么是 labelstyle?}

{pstd}
标记标签的外观由三个属性定义：

{phang2}
    1.  {it:textstyle} -- 标签文本的外观，包括大小、颜色等；{break} 请参见 {manhelpi textstyle G-4}。

{phang2}
    2.  {it:clockposstyle} -- 标签相对于标记的位置； {break}
	请参见 {manhelpi clockposstyle G-4}。

{phang2}
    3.  {it:textsizestyle} -- 标记与标签之间的间隙； {break}
	请参见 {manhelpi textsizestyle G-4}。

{pstd}
{it:labelstyle} 指定所有这些属性。  


{marker remarks2}{...}
{title:什么是编号样式?}

{phang}
     {cmd:p1}{hline 1}{cmd:p15} 是用于标记 {@helpb graph twoway:二元图} 上标记的默认样式。 {cmd:p1} 用于第一组标记标签， {cmd:p2} 用于第二组，以此类推。

{phang}
     {cmd:p1box}{hline 1}{cmd:p15box} 是用于标记 {@help graph_box:箱线图} 外部值的默认样式。 {cmd:p1box} 用于第一组外部值， {cmd:p2box} 用于第二组，以此类推。

{pstd}
        由编号样式（如 {cmd:p1}、{cmd:p2}、{cmd:p1box} 等）定义的“外观”由所选的 {help schemes_zh:方案} 决定。通过“外观”，我们指的是 {help textstyle_zh}、{help clockposstyle_zh} 和 {help textsizestyle_zh}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <labelstyle.sthlp>}