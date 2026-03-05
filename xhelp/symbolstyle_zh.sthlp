{smcl}
{* *! version 1.2.3  19oct2017}{...}
{vieweralsosee "[G-4] symbolstyle" "mansection G-4 symbolstyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] marker_options" "help marker_options_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] colorstyle" "help colorstyle_zh"}{...}
{vieweralsosee "[G-4] linepatternstyle" "help linepatternstyle_zh"}{...}
{vieweralsosee "[G-4] linestyle" "help linestyle_zh"}{...}
{vieweralsosee "[G-4] linewidthstyle" "help linewidthstyle_zh"}{...}
{vieweralsosee "[G-4] markersizestyle" "help markersizestyle_zh"}{...}
{vieweralsosee "[G-4] markerstyle" "help markerstyle_zh"}{...}
{viewerjumpto "Syntax" "symbolstyle_zh##syntax"}{...}
{viewerjumpto "Description" "symbolstyle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "symbolstyle_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "symbolstyle_zh##remarks"}
{help symbolstyle:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[G-4]} {it:symbolstyle} {hline 2}}标记形状的选择{p_end}
{p2col:}({mansection G-4 symbolstyle:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

			同义词
	{it:symbolstyle}     （如果有）     描述
	{hline 55}
	{cmd:circle}             {cmd:O}         实心
	{cmd:diamond}            {cmd:D}         实心
	{cmd:triangle}           {cmd:T}         实心
	{cmd:square}             {cmd:S}         实心
	{cmd:plus}               {cmd:+}
	{cmd:X}                  {cmd:X}
	{cmd:arrowf}             {cmd:A}         填充的箭头
	{cmd:arrow}              {cmd:a}
	{cmd:pipe}               {cmd:|}
	{cmd:V}                  {cmd:V}

	{cmd:smcircle}           {cmd:o}         实心
	{cmd:smdiamond}          {cmd:d}         实心
	{cmd:smsquare}           {cmd:s}         实心
	{cmd:smtriangle}         {cmd:t}         实心
	{cmd:smplus}
        {cmd:smx}                {cmd:x}
	{cmd:smv}                {cmd:v}

	{cmd:circle_hollow}      {cmd:Oh}        空心
	{cmd:diamond_hollow}     {cmd:Dh}        空心
	{cmd:triangle_hollow}    {cmd:Th}        空心
	{cmd:square_hollow}      {cmd:Sh}        空心

	{cmd:smcircle_hollow}    {cmd:oh}        空心
	{cmd:smdiamond_hollow}   {cmd:dh}        空心
	{cmd:smtriangle_hollow}  {cmd:th}        空心
	{cmd:smsquare_hollow}    {cmd:sh}        空心

	{cmd:point}              {cmd:p}         一个小点
	{cmd:none}               {cmd:i}         一个不可见的符号
	{hline 55}

{pin}
要显示以上每个符号的符号调色板，输入

{phang3}
	    {cmd:.} {bf:{stata palette symbolpalette}}
			[{cmd:,} {cmdab:sch:eme:(}{it:schemename}{cmd:)}]

{pmore}
	其他 {it:symbolstyles} 可能可用；输入

	    {cmd:.} {bf:{stata graph query symbolstyle}}

{pmore}
以获取安装在计算机上的{it:symbolstyles} 的完整列表。


{marker description}{...}
{title:描述}

{pstd}
标记是用来在图表上标记点的位置的墨水；有关更多信息，请参见 {manhelpi marker_options G-3}。
{it:symbolstyle} 指定标记的形状。

{pstd}
您可以在许多 {cmd:graph} 命令允许的 {cmd:msymbol()} 选项中指定 {it:symbolstyle}：

{phang2}
	{cmd:. graph twoway} ...{cmd:, msymbol(}{it:symbolstyle}{cmd:)} ...

{pstd}
有时您会看到允许的 {it:symbolstylelist}。

{phang2}
	{cmd:. scatter} ...{cmd:, msymbol(}{it:symbolstylelist}{cmd:)} ...

{pstd}
{it:symbolstylelist} 是由空格分隔的 {it:symbolstyles} 的序列。允许使用简写以便于指定列表；请参阅 {manhelpi stylelists G-4}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-4 symbolstyleRemarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注以以下标题呈现：

	{help symbolstyle##remarks1:典型使用}
	{help symbolstyle##remarks2:填充和空心符号}
	{help symbolstyle##remarks3:符号的大小}


{marker remarks1}{...}
{title:典型使用}

{pstd}
{cmd:msymbol(}{it:symbolstyle}{cmd:)} 是最常指定的选项之一。例如，您可能对

	. scatter mpg weight if foreign ||
	  scatter mpg weight if !foreign

{pstd}
的默认渲染不满意，并更喜欢

	. scatter mpg weight if foreign, msymbol(oh) ||
	  scatter mpg weight if !foreign, msymbol(x)

{pstd}
当您在同一图中绘制多个 {it:y} 变量时，您可以在 {cmd:msymbol()} 选项中指定一系列 {it:symbolstyles}：

	{cmd:. scatter mpg1 mpg2 weight, msymbol(oh x)}

{pstd}
结果与输入{cmd}

	. scatter mpg1 weight, msymbol(oh) ||
	  scatter mpg2 weight, msymbol(x){txt}

{pstd}
相同。此外，在上述内容中，我们指定了符号样式的同义词。无论您输入

	{cmd}. scatter mpg1 weight, msymbol(oh) ||
	  scatter mpg2 weight, msymbol(x){txt}

{pstd}
还是

	{cmd}. scatter mpg1 weight, msymbol(smcircle_hollow) ||
	  scatter mpg2 weight, msymbol(smx){txt}

{pstd}
没有区别。


{marker remarks2}{...}
{title:填充和空心符号}

{pstd}
{it:symbolstyle} 指定符号的 {it:shape}，在这个意义上，{cmd:circle} 和 {cmd:hcircle} -- 以及 {cmd:diamond} 和 {cmd:hdiamond} 等 -- 之间没有必要，因为每个符号都是相同形状的不同渲染。选项 {cmd:mfcolor(}{it:colorstyle}{cmd:)}（请参阅 {manhelpi marker_options G-3}）指定了符号内部的填充方式。{cmd:hcircle()}、{cmd:hdiamond} 等包含在内以便于使用，相当于指定

	{cmd:msymbol(Oh)}:  {cmd:msymbol(O) mfcolor(none)}

	{cmd:msymbol(dh)}:  {cmd:msymbol(d) mfcolor(none)}

	等等。

{pstd}
使用 {cmd:mfcolor()} 用不同颜色填充符号的内部，有时会产生有效的新符号。例如，如果您将 {cmd:msymbol(O)} 的内部用同样颜色的较浅色填充，则会得到一个令人愉悦的结果。例如，您可以尝试

	{cmd:msymbol(O) mlcolor(yellow) mfcolor(.5*yellow)}

{pstd}
或

	{cmd:msymbol(O) mlcolor(gs5) mfcolor(gs12)}

{pstd}
如下所示：

{phang2}
	{cmd:. scatter mpg weight, msymbol(O) mlcolor(gs5) mfcolor(gs14)}
{p_end}
	  {it:({stata "gr_example auto: scatter mpg weight, msymbol(O) mlcolor(gs5) mfcolor(gs14)":点击运行})}
{* graph symstyle1}{...}


{marker remarks3}{...}
{title:符号的大小}

{pstd}
正如 {cmd:msymbol(O)} 和 {cmd:msymbol(Oh)} 仅在 {cmd:mfcolor()} 上有所不同，{cmd:msymbol(O)} 和 {cmd:msymbol(o)} -- 符号 {cmd:circle} 和 {cmd:smcircle} -- 仅在 {cmd:msize()} 上有所不同。特别是，

	{cmd:msymbol(O)}:  {cmd:msymbol(O) msize(medium)}

	{cmd:msymbol(o)}:  {cmd:msymbol(O) msize(small)}

{pstd}
对此所有其他大符号和小符号对也同样适用。

{pstd}
{cmd:msize()} 被解释为与图形区域的大小相对（参见 {manhelpi region_options G-3}），因此在

	{cmd:. scatter mpg weight}

{pstd}
和

	{cmd:. scatter mpg weight, by(foreign total)}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <symbolstyle.sthlp>}