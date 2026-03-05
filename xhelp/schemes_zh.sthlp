{smcl}
{* *! version 1.1.13  15oct2018}{...}
{vieweralsosee "[G-4] 方案简介" "mansection G-4 Schemesintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] 设置方案" "help set_scheme_zh"}{...}
{vieweralsosee "[G-3] 方案选项" "help scheme_option_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] 经济学家方案" "help scheme_economist_zh"}{...}
{vieweralsosee "[G-4] 方案 s1" "help scheme_s1_zh"}{...}
{vieweralsosee "[G-4] 方案 s2" "help scheme_s2_zh"}{...}
{vieweralsosee "[G-4] 方案 sj" "help scheme_sj_zh"}{...}
{vieweralsosee "方案文件" "help scheme files"}{...}
{viewerjumpto "语法" "schemes_intro##syntax"}{...}
{viewerjumpto "描述" "schemes_intro##description"}{...}
{viewerjumpto "PDF文档链接" "schemes_zh##linkspdf"}{...}
{viewerjumpto "备注" "schemes_intro##remarks"}
{help schemes:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[G-4] 方案简介} {hline 2}}方案介绍{p_end}
{p2col:}({mansection G-4 Schemesintro:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:set}
{cmd:scheme}
{it:schemename}
[{cmd:,} {cmdab:perm:anently}]

{p 8 16 2}
{cmdab:gr:aph}
...
[{cmd:,}
...
{cmd:scheme(}{it:schemename}{cmd:)}
...]

	{it:schemename}{col 21}前景{col 34}背景{col 46}描述
	{hline 71}
	{bf:{help scheme s2:s2color}}{...}
{col 21}颜色{...}
{col 34}白色{...}
{col 46}{bf:出厂设置}
{...}
	{bf:{help scheme s2:s2mono}}{...}
{col 21}单色{...}
{col 34}白色{...}
{col 46}{cmd:s2color} 的单色
{...}
	{bf:{help scheme s2:s2gcolor}}{...}
{col 21}颜色{...}
{col 34}白色{...}
{col 46}在Stata手册中使用
	{bf:{help scheme s2:s2manual}}{...}
{col 21}单色{...}
{col 34}白色{...}
{col 46}{cmd:s2gcolor} 的单色
	{bf:{help scheme s2:s2gmanual}}{...}
{col 21}单色{...}
{col 34}白色{...}
{col 46}以前在[G] 手册中使用


	{bf:{help scheme s1:s1rcolor}}{...}
{col 21}颜色{...}
{col 34}黑色{...}
{col 46}黑色背景上的简单外观
{...}
	{bf:{help scheme s1:s1color}}{...}
{col 21}颜色{...}
{col 34}白色{...}
{col 46}简单外观
{...}
	{bf:{help scheme s1:s1mono}}{...}
{col 21}单色{...}
{col 34}白色{...}
{col 46}单色的简单外观
{...}
	{bf:{help scheme s1:s1manual}}{...}
{col 21}单色{...}
{col 34}白色{...}
{col 46}{cmd:s1mono} 但更小

	{help scheme economist:{bf:经济学家}}{...}
{col 21}颜色{...}
{col 34}白色{...}
{col 46}{it:经济学人} 杂志
	{help scheme sj:{bf:sj}}{...}
{col 21}单色{...}
{col 34}白色{...}
{col 46}{it:Stata Journal}
	{hline 71}

{pin}
其他 {it:schemenames} 可能可用；输入

	    {cmd:.} {bf:{stata graph query, schemes}}

{pin}
以获得已安装在您计算机上的完整方案列表。


{marker description}{...}
{title:描述}

{pstd}
方案指定图形的整体外观。

{pstd}
{cmd:set} {cmd:scheme} 设置默认方案；有关此命令的更多信息，请参见
{manhelp set_scheme G-2:set scheme}。

{pstd}
选项 {cmd:scheme()} 指定与此特定 {cmd:graph} 命令一起使用的图形方案，而不更改默认值。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-4 SchemesintroRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注分别列在以下标题下：

	{help schemes##remarks1:方案的作用}
	{help schemes##remarks2:了解其他方案}
	{help schemes##remarks3:设置默认方案}
	{help schemes##remarks4:方案在显示时应用}
	{help schemes##remarks5:背景颜色}
	{help schemes##remarks6:前景颜色}
	{help schemes##remarks7:获取新方案}
	{help schemes##remarks8:方案示例}

{pstd}
请参见 {help scheme files} 讨论如何创建您自己的方案。


{marker remarks1}{...}
{title:方案的作用}

{pstd}
当你输入，例如，

	{cmd:. scatter yvar xvar}

{pstd}
结果与您输入

{phang2}
	{cmd:. scatter yvar xvar, scheme(}{it:your_default_scheme}{cmd:)}

{pstd}
的效果是相同的。如果您没有使用 {cmd:set scheme} 命令来更改默认方案，则 {it:your_default_scheme} 为 {cmd:s2color}。

{pstd}
方案指定图形的整体外观，我们所指的几乎包括您能想象到的一切。它决定了诸如 {it:y} 轴是在左侧还是右侧，轴上默认标记的数值多少，以及所使用的颜色。实际上，手册中几乎每一个关于某些事物外观的叙述，或者事物之间外观关系的描述，都不能被过于字面地理解。事物的外观实际上是由方案控制的：

{p 8 11 2}
o{space 2}在 {manhelpi symbolstyle G-4} 中，我们指出标记——表示绘图中点位置的墨水——的默认大小为 {cmd:msize(medium)}，而小符号的大小为 {cmd:msize(small)}。这通常是正确的，但标记的大小实际上是由方案设定的，方案可能会指定不同的默认大小。

{p 8 11 2}
o{space 2}在 {manhelpi axis_choice_options G-3} 中，我们指出当有一个 {it:y 轴} 时，该轴出现在左侧，而当有两个时，第二个会出现在右侧。实际上，轴出现的位置由方案控制，并且大多数方案的工作方式如所述。然而，名为 {cmd:economist} 的另一种方案则以不同的方式显示。

{p 8 11 2}
o{space 2}在 {manhelpi title_options G-3} 中，我们说明了标题、副标题等的位置，并提供了图示以避免混淆。但标题、副标题等的出现位置实际上是由方案控制的，而我们所描述的对于名为 {cmd:s2color} 的方案是正确的。

{pstd}
列表还在继续。如果与结果的外观有关的事情，都是由方案控制的。

{pstd}
要理解方案能带来多大的不同，您应输入

	{cmd:. scatter yvar xvar, scheme(economist)}

{pstd}
{cmd:scheme(economist)} 指定了一种与 {it:{browse "https://www.economist.com":The Economist}} 杂志相似的外观（https://www.economist.com），我们认为该杂志的图表值得模仿。与 {cmd:c2color} 方案相比，{cmd:economist} 方案将 {it:y} 轴移动到右侧，使标题左对齐，默认将网格线打开，设置了背景颜色，并将注释移动到右上角，期望其为一个数字。


{marker remarks2}{...}
{title:了解其他方案}

{pstd}
语法图中提供了方案列表，但请不要依赖列表是最新的。相反，请输入

	{cmd:.} {bf:{stata graph query, schemes}}

{pstd}
以获得已安装在您计算机上的完整方案列表。

{pstd}
尝试使用每个方案绘制一些图形：

{phang2}
	{cmd:. graph} ... {cmd:,} ... {cmd:scheme(}{it:schemename}{cmd:)}


{marker remarks3}{...}
{title:设置默认方案}

{pstd}
如果您想将默认方案设置为例如 {cmd:economist}，请输入

	{cmd:. set scheme economist}

{pstd}
{cmd:economist} 方案现在将是您在本会话中的默认方案，但下次使用 Stata 时，您将恢复使用旧的默认方案。如果您输入

	{cmd:. set scheme economist, permanently}

{pstd}
{cmd:economist} 将在本会话及未来的会话中成为您的默认方案。

{pstd}
如果您想将方案改回 {cmd:s2color}——即 Stata 初始出厂设置中的默认方案——请输入

	{cmd:. set scheme default, permanently}

{pstd}
请参见 {manhelp set_scheme G-2:set scheme}。


{marker remarks4}{...}
{title:方案在显示时应用}

{pstd}
假设您输入

	{cmd:. graph mpg weight, saving(mygraph)}

{pstd}
以创建并保存文件 {cmd:mygraph.gph}（请参见 
{manhelpi saving_option G-3}）。如果稍后您通过输入

	{cmd:. graph use mygraph}

{pstd}
重新显示图形，则该图形将如您原先绘制的那样重新出现。它将使用最初绘制时所用的相同方案进行显示，而无论您当前的 {cmd:set scheme} 设置如何。如果您输入

	{cmd:. graph use mygraph, scheme(economist)}

{pstd}
该图形将使用 {cmd:economist} 方案进行显示。它将是相同的图形，但外观不同。您可以先前更改图形的绘制方案，在原始的 {cmd:graph} 命令中，也可以在之后更改。


{marker remarks5}{...}
{title:背景颜色}

{pstd}
在条目的开头我们将背景颜色描述为白色或黑色，虽然实际上我们的意思是浅色或深色，因为某些方案设置了背景色调。我们意味着“白色”背景方案适合打印。打印机（无论是机械的还是人工的）都更倾向于避免深色背景，因为它们需要大量墨水，且相应存在渗透问题。另一方面，深色背景在显示器上看起来不错。

{pstd}
无论如何，您可以使用 {it:region_options}
{cmd:graphregion(fcolor())},
{cmd:graphregion(ifcolor())},
{cmd:plotregion(fcolor())} 和
{cmd:plotregion(ifcolor())} 更改方案的背景颜色；请参见
{manhelpi region_options G-3}。
在覆盖背景颜色时，对于自然有白色背景的方案选择浅色，对于自然有黑色背景的区域选择深色。

{pstd}
自然有黑色背景的方案默认以单色打印。如果您希望覆盖此设置，请参见 {manhelp set_printcolor G-2: set printcolor}。

{pstd}
如果您在白纸上打印图形，我们建议您选择具有自然白色背景的方案。


{marker remarks6}{...}
{title:前景颜色}

{pstd}
在本条目开头的表中，我们将前景分为颜色或单色。这是指线条、标记、填充等是否以颜色或单色呈现。无论您选择哪个方案，您都可以指定如 {cmd:mcolor()} 和 {cmd:lcolor()} 等选项，以控制图形上每个项目的颜色。

{pstd}
仅仅因为我们将前景归类为单色，并不意味着您无法在选项中指定颜色。


{marker remarks7}{...}
{title:获取新方案}

{pstd}
您的 Stata 副本可能已经有本帮助文件中未记录的方案。要确认，请输入

	{cmd:.} {bf:{stata graph query, schemes}}

{pstd}
此外，随着Stata的更新，会添加新方案并更新现有方案，因此如果您连接到互联网，请输入

	{cmd:.} {bf:{stata update query}}

{pstd}
并按照任何给出的说明进行操作；请参见 {manhelp update R}。

{pstd}
最后，其他用户可能已经创建了一些您可能感兴趣的方案。要在互联网上搜索，请输入

	{cmd:.} {bf:{search scheme:search scheme}}
	  {it:(将在查看器中显示结果；}
	  {it:使用返回按钮返回到此帮助文件）}

{pstd}
从那里，您将能够点击安装任何您感兴趣的方案；请参见 {manhelp search R}。

{pstd}
一旦方案安装完成，可以通过验证它是否出现在下面显示的列表中来确认：

	{cmd:.} {bf:{stata graph query, schemes}}

{pstd}
您可以使用 {cmd:scheme()} 选项

{phang2}
	{cmd:. graph} ...{cmd:,} ... {cmd:scheme(}{it:newscheme}{cmd:)}

{pstd}
或临时将其设置为默认：

	{cmd:. set scheme} {it:newscheme}

{pstd}
或永久设置：

	{cmd:. set scheme} {it:newscheme}{cmd:, permanently}


{marker remarks8}{...}
{title:方案示例}

{pstd}
请参见
{mansection G-4 SchemesintroRemarksandexamplesExamplesofschemes:{it:方案示例}}
在 {it:备注和示例} 的 {bf:[G-4] 方案简介} 中具有各种方案的图形。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <schemes.sthlp>}