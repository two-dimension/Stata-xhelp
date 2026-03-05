{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[G-4] shadestyle" "mansection G-4 shadestyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] colorstyle" "help colorstyle_zh"}{...}
{vieweralsosee "[G-4] intensitystyle" "help intensitystyle_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "scheme files" "help scheme files"}{...}
{viewerjumpto "Syntax" "shadestyle_zh##syntax"}{...}
{viewerjumpto "Description" "shadestyle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "shadestyle_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "shadestyle_zh##remarks"}
{help shadestyle:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[G-4]} {it:shadestyle} {hline 2}}填充区域外观的选择{p_end}
{p2col:}({mansection G-4 shadestyle:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 20}{...}
{p2col:{it:shadestyle}}描述{p_end}
{p2line}
{p2col:{cmd:foreground}}默认前景色区域{p_end}
{p2col:{cmd:plotregion}}绘图区域{p_end}
{p2col:{cmd:legend}}图例区域{p_end}
{p2col:{cmd:none}}不存在的区域{p_end}

{p2col:{cmd:ci}}表示置信区间的区域{p_end}
{p2col:{cmd:histogram}}直方图条形{p_end}
{p2col:{cmd:sunflowerlb}}浅色向日葵{p_end}
{p2col:{cmd:sunflowerdb}}深色向日葵{p_end}

{p2col:{cmd:p1bar}{hline 1}{cmd:p15bar}}用于第一个到第十五个“条形”图
      {p_end}
{p2col:{cmd:p1box} - {cmd:p15box}}用于第一个到第十五个“框”图{p_end}
{p2col:{cmd:p1area} - {cmd:p15area}}用于第一个到第十五个“区域”图
      {p_end}
{p2col:{cmd:p1pie} - {cmd:p15pie}}用于第一个到第十五个饼图切片{p_end}
{p2line}
{p2colreset}{...}

{pstd}
其他 {it:shadestyle} 可能会可用；输入 

	    {cmd:.} {bf:{stata graph query shadestyle}}

{pstd}
以获取安装在您计算机上的完整 {it:shadestyles} 列表。


{marker description}{...}
{title:描述}

{pstd}
{it:shadestyle} 设置填充区域的 {help colorstyle_zh:颜色} 和 
{help intensitystyle_zh:强度}。

{pstd}
阴影样式仅在方案文件中使用（参见 {help scheme files}），并且不能通过 {help graph_zh} 命令访问。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection G-4 shadestyleRemarksandexamples:备注和示例}

{pstd}
上面的部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注以以下标题呈现：

	{help shadestyle##remarks1:什么是阴影样式？}
	{help shadestyle##remarks2:什么是编号样式？}


{marker remarks1}{...}
{title:什么是阴影样式？}

{pstd}
阴影区域由两个属性定义：

{phang2}
    1.  {it:colorstyle} -- 阴影区域的颜色；{break}
	参见 {manhelpi colorstyle G-4}

{phang2}
    2.  {it:intensitystyle} -- 颜色的强度； {break}
	参见 {manhelpi intensitystyle G-4}

{pstd}
{it:shadestyle} 同时指定这两个属性。  

{pstd}
强度属性并不是绝对必要的，因为任何强度都可以通过更改 RGB 值来达到；见 
{manhelpi colorstyle G-4}。不过，强度可以用于影响某些方案文件中许多不同颜色的强度。


{marker remarks2}{...}
{title:什么是编号样式？}

{phang}
     {cmd:p1bar}{hline 1}{cmd:p15bar} 是用于填充条形图的默认样式，包括 {helpb twoway bar} 图和
     {help graph bar:条形图}。{cmd:p1bar} 用于第一组条形，{cmd:p2bar} 用于第二组，依此类推。

{phang}
     {cmd:p1box}{hline 1}{cmd:p15box} 是用于填充 {help graph box:框图} 的默认样式。{cmd:p1box} 用于第一组框，{cmd:p2box} 用于第二组，依此类推。

{phang}
     {cmd:p1area}{hline 1}{cmd:p15area} 是用于填充区域图的默认样式，包括 {helpb twoway area} 图和
     {helpb twoway rarea}。{cmd:p1area} 用于第一个填充区域，{cmd:p2area} 用于第二个，依此类推。

{phang}
     {cmd:p1pie}{hline 1}{cmd:p15pie} 是用于填充饼图切片的默认样式，包括 {help graph_pie_zh:饼图}。
     {cmd:p1pie} 用于第一个切片，{cmd:p2pie} 用于第二个，依此类推。

{pstd}
        编号样式（如 {cmd:p1bar}、 {cmd:p1box} 或 {cmd:p1area}）所定义的外观取决于 
        选定的 {help schemes_zh:方案}。所谓的“外观”是指 
        {it:{help colorstyle_zh}} 和 {it:{help intensitystyle_zh}}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <shadestyle.sthlp>}