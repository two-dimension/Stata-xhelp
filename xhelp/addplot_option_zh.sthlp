{smcl}
{* *! version 1.1.8  19oct2017}{...}
{vieweralsosee "[G-3] addplot_option" "mansection G-3 addplot_option"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway" "help twoway"}{...}
{viewerjumpto "Syntax" "addplot_option_zh##syntax"}{...}
{viewerjumpto "Description" "addplot_option_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "addplot_option_zh##linkspdf"}{...}
{viewerjumpto "Option" "addplot_option_zh##option"}{...}
{viewerjumpto "Remarks" "addplot_option_zh##remarks"}
{help addplot_option:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[G-3]} {it:addplot_option} {hline 2}}用于在命令中添加附加二元图的选项{p_end}
{p2col:}({mansection G-3 addplot_option:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{it:command}
...
[{cmd:,}
...
{cmd:addplot(}{it:plot} ... [{cmd:||} 
     {it:plot} ... [...]] [{cmd:,} {cmd:below}]{cmd:)}
...]

{phang}
其中 {it:plot} 可以是
{helpb graph twoway} 的任何子命令，
例如
{help scatter_zh}、
{help line_zh}，或 {helpb twoway histogram:histogram}。

{marker description}{...}
{title:描述}

{pstd}
某些绘制图形的命令（但不以 {cmd:graph} 开头）在其他参考手册中有详细说明。许多这些命令允许使用 {cmd:addplot()} 选项。该选项允许它们将结果叠加在 {cmd:graph} {cmd:twoway} 图上；请参见
{manhelp graph_twoway G-2:graph twoway}。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 addplot_optionRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:addplot(}{it:plots} [{cmd:,} {cmd:below}]{cmd:)}
    指定要添加到 {cmd:graph} {cmd:twoway} 命令的其余 {cmd:graph} {cmd:twoway} 子命令，这些子命令由 {it:command} 发出。

{phang2}
	{cmd:below}
                是 {cmd:addplot()} 选项的一个子选项，指定添加的图形应在命令绘制的图形之前绘制。这样，添加的图形将出现在命令绘制的图形下方。默认情况下，添加的图形在命令的图形之后绘制，因此它们出现在命令图形的上方。 {cmd:below} 仅影响在与命令的图形相同的 x 和 y 轴上绘制的添加图形。

{marker remarks}{...}
{title:备注}

{pstd}
备注分为以下几个部分：

	{help addplot_option##remarks1:允许使用 addplot() 选项的命令}
	{help addplot_option##remarks2:二元图命令的优点}
	{help addplot_option##remarks3:在二元图外部实现的图形命令的优点}
	{help addplot_option##remarks4:addplot() 选项的使用}


{marker remarks1}{...}
{title:允许使用 addplot() 选项的命令}

{pstd}
{cmd:graph} 命令从不允许使用 {cmd:addplot()} 选项。 
{cmd:addplot()} 选项是由在 {cmd:graph} {cmd:twoway} 的基础上实现的非 {cmd:graph} 命令所允许的。

{pstd}
例如，{cmd:histogram} 命令 -- 见 {manhelp histogram R} -- 允许使用 {cmd:addplot()}。而 {cmd:graph} {cmd:twoway}
{cmd:histogram} -- 见 {manhelp twoway_histogram G-2:graph twoway histogram} --
则不允许。

{marker remarks2}{...}
{title:二元图命令的优点}

{pstd}
{cmd:graph} {cmd:twoway} 命令的优点是它们可以重叠在一起。 例如，您可以输入

{phang2}
	{cmd:. graph twoway scatter} {it:yvar} {it:xvar} {cmd:||}
		{cmd:lfit} {it:yvar} {it:xvar}

{pstd}
生成的单独图形，{cmd:scatter} 和 {cmd:lfit}，会被合并。
每个图形所涉及的变量甚至不需要相同：

{phang2}
	{cmd:. graph twoway scatter} {it:yvar} {it:xvar} {cmd:||}
		{cmd:lfit} {it:y2var} {it:x2var}


{marker remarks3}{...}
{title:在二元图外部实现的图形命令的优点}

{pstd}
在 {cmd:graph} {cmd:twoway} 之外实现的图形命令可以具有更简单的语法。 例如，{cmd:histogram} 命令
具有一个选项 {cmd:normal}，可以在直方图上叠加一个正态曲线：

	{cmd:. histogram} {it:myvar}{cmd:, normal}

{pstd}
这比输入

	{cmd:. summarize} {it:myvar}
	{cmd:. graph twoway histogram} {it:myvar} {cmd:||}
	    {cmd:function} {cmd:normden(x,`r(mean)',`r(sd)'),} {cmd:range(}{it:myvar}{cmd:)}

{pstd}
更容易，这就是以 {cmd:graph} {cmd:twoway} 方式生成相同图形的方式。

{pstd}
因此，{cmd:graph} 与非 {cmd:graph} 命令之间的权衡在于灵活性与易用性之间。

{marker remarks4}{...}
{title:addplot() 选项的使用}

{pstd}
{cmd:addplot()} 选项试图为非 {cmd:graph} 图形命令恢复灵活性。 实际上，这些命令是在 {cmd:graph} {cmd:twoway} 的基础上实现的。 例如，当您输入

	{cmd:. histogram} ...

{pstd}
或者您输入

	{cmd:. sts graph} ...

{pstd}
结果是这些命令构建了一个复杂的
{cmd:graph} {cmd:twoway} 命令

	{cmd:-> graph twoway} {it:something_complicated}

{pstd}
然后为您运行。 当您指定 {cmd:addplot()} 选项时，例如输入

	{cmd:. histogram} ...{cmd:, addplot(}{it:your_contribution}{cmd:)}

{pstd}
或者

	{cmd:. sts graph, addplot(}{it:your_contribution}{cmd:)}

{pstd}
得到的结果是命令构建

{phang2}
	{cmd:-> graph twoway} {it:something_complicated} {cmd:||}
		{it:your_contribution}

{pstd}
假设您有生存数据并希望直观比较 Kaplan-Meier（即经验生存函数）与假设生存时间为指数分布时预测的函数。只需输入

	{cmd:. sysuse cancer, clear}

	{cmd:. quietly stset studytime, fail(died) noshow}

	{cmd:. sts graph}
	  {it:({stata "gr_example2 plotop1":点击运行})}
{* graph plotop1}{...}

{pstd}
将获得经验估计的图形。
要获得指数估计，您可以输入

	{cmd:. quietly streg, distribution(exponential)}

	{cmd:. predict S, surv}

	{cmd:. graph twoway line S _t, sort}
	  {it:({stata "gr_example2 plotop2":点击运行})}
{* graph plotop2}{...}

{pstd}
要将这两个图形放在一起，您可以输入

	{cmd:. sts graph, addplot(line S _t, sort)}
	  {it:({stata "gr_example2 plotop3":点击运行})}
{* graph plotop3}{...}

{pstd}
结果就像您输入

	{cmd:. sts graph || line S _t, sort}

{pstd}
如果仅仅允许那样就好了。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <addplot_option.sthlp>}