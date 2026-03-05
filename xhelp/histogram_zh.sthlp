{smcl}
{* *! version 1.2.5  08jan2018}{...}
{viewerdialog histogram "dialog histogram"}{...}
{vieweralsosee "[R] histogram" "mansection R histogram"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway histogram" "help twoway_histogram_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] kdensity" "help kdensity_zh"}{...}
{vieweralsosee "[R] spikeplot" "help spikeplot_zh"}{...}
{viewerjumpto "Syntax" "histogram_zh##syntax"}{...}
{viewerjumpto "Menu" "histogram_zh##menu"}{...}
{viewerjumpto "Description" "histogram_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "histogram_zh##linkspdf"}{...}
{viewerjumpto "Options for use in the continuous case" "histogram_zh##options_continuous"}{...}
{viewerjumpto "Options for use in the discrete case" "histogram_zh##options_discrete"}{...}
{viewerjumpto "Options for use in the continuous and discrete cases" "histogram_zh##options_both"}{...}
{viewerjumpto "Remarks" "histogram_zh##remarks"}{...}
{viewerjumpto "Reference" "histogram_zh##reference"}
{help histogram:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[R] histogram} {hline 2}}连续和分类变量的直方图
{p_end}
{p2col:}({mansection R histogram:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{opt histogram}
{varname}
{ifin}
[{it:{help histogram##weight:权重}}]
[{cmd:,}
[{it:{help histogram##continuous_opts:连续选项}} {c |}
{it:{help histogram##discrete_opts:离散选项}}] {it:{help histogram##options:选项}}]

{synoptset 34 tabbed}{...}
{marker continuous_opts}{...}
{synopthdr :连续选项}
{synoptline}
{syntab:主要}
{synopt :{opt bin(#)}}设置箱子的数量为 {it:#}{p_end}
{synopt :{opt w:idth(#)}}设置箱子的宽度为 {it:#}{p_end}
{synopt :{opt start(#)}}设置第一个箱子的下限为 {it:#}{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 34 tabbed}{...}
{marker discrete_opts}{...}
{synopthdr :离散选项}
{synoptline}
{syntab:主要}
{synopt :{opt d:iscrete}}指定数据为离散型{p_end}
{synopt :{opt w:idth(#)}}设置箱子的宽度为 {it:#}{p_end}
{synopt :{opt start(#)}}设置理论最小值为 {it:#}{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 34 tabbed}{...}
{marker options}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{synopt :{opt den:sity}}以密度显示；默认选项{p_end}
{synopt :{opt frac:tion}}以比例显示{p_end}
{synopt :{opt freq:uency}}以频率显示{p_end}
{synopt :{opt percent}}以百分比显示{p_end}
{synopt :{it:{help twoway bar:柱状图选项}}}条形的呈现{p_end}
{synopt :{opt binrescale}}在指定 {cmd:by()} 时重新计算箱子大小{p_end}
{synopt :{opt addl:abels}}在条形上添加高度标签{p_end}
{synopt :{opth addlabop:ts(marker_label_options)}}影响标签的呈现{p_end}

{syntab :密度图}
{synopt :{opt norm:al}}在图形中添加正态密度{p_end}
{synopt :{opth normop:ts(line_options)}}影响正态密度的呈现{p_end}
{synopt :{opt kden:sity}}在图形中添加核密度估计{p_end}
{synopt :{opth kdenop:ts(kdensity:kdensity_options)}}影响核密度的呈现{p_end}


{syntab :添加图形}
{synopt :{opth "addplot(addplot_option:plot)"}}向直方图添加其他图形

{syntab :Y轴，X轴，标题，图例，整体，按}
{synopt :{it:twoway_options}}在 
      {manhelpi twoway_options G-3}中记录的任何选项{p_end}
{synoptline}
{p2colreset}{...}
{marker weight}{...}
{p 4 6 2}{cmd:fweight}是允许的；请参见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 直方图}


{marker description}{...}
{title:描述}

{pstd}
{cmd:histogram} 绘制 {varname} 的直方图，假设该变量为连续变量，除非指定 {opt discrete} 选项。

{pstd}
{cmd:hist} 是 {cmd:histogram} 的同义词。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R histogramQuickstart:快速入门}

        {mansection R histogramRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在该帮助文件中。


{marker options_continuous}{...}
{title:连续情况使用的选项}

{dlgtab:主要}

{phang}
{opt bin(#)} 和 {opt width(#)} 是可选的替代项。它们指定数据如何按箱进行聚合：{opt bin()} 通过指定箱的数量（从中可以推导出宽度）；而 {opt width()} 通过指定箱的宽度（从中可以推导出箱的数量）。

{pmore}
如果未指定任何选项，结果与指定 {opt bin(k)} 一致，其中

{phang3}
{it:k} = min{c -(}sqrt({it:N}), 10*ln({it:N})/ln(10){c )-}

{pmore}
    其中 {it:N} 是（加权的）观测数。

{phang}
{opt start(#)} 指定 {varname} 的理论最小值。默认值为 {opt start(m)}，其中 {it:m} 是 {it:varname} 的观测最小值。

{pmore}
当你关心稀疏数据时，请指定 {opt start()}，例如，如果你知道 {it:varname} 可以有值为 0，但又担心 0 可能没有被观察到。

{pmore}
如果指定了 {opt start(#)}，则必须小于或等于 {it:m}，否则将会出现错误。


{marker options_discrete}{...}
{title:离散情况使用的选项}

{dlgtab:主要}

{phang}
{opt discrete} 指定 {varname} 是离散的，并且希望每个唯一值都有自己的箱（直方图的条形）。

{phang}
在离散情况下，很少指定 {opt width(#)}；它设置箱的宽度。默认值为 {opt width(d)}，其中 {it:d} 是 {it:varname} 的唯一值之间的观察到的最小差异。

{pmore} 
如果你担心数据是稀疏的，请指定 {opt width()}。例如，理论上 {it:varname} 可以取值为 1、2、3、...、9，但由于稀疏性，可能仅观察到值 2、4、7 和 8。在这里，默认的宽度计算将产生 {cmd:width(2)}，你会希望指定 {cmd:width(1)}。

{phang}
在离散情况下，也很少指定 {opt start(#)}；它设置 {varname} 的理论最小值。默认值为 {opt start(m)}，其中 {it:m} 是观察到的最小值。

{pmore}
与 {opt width()} 一样，如果你担心数据是稀疏的，请指定 {opt start(#)}。在之前的示例中，你可能还希望指定 {cmd:start(1)}。{opt start()} 仅仅是在图形的左侧添加空白。

{pmore}
{opt start()} 中的值 {it:#} 必须小于或等于 {it:m}，否则将会出现错误。


{marker options_both}{...}
{title:连续和离散情况使用的选项}

{dlgtab:主要}

{phang}
{opt density}、{opt fraction}、{opt frequency} 和 {opt percent} 指定直方图是否按密度单位、分数单位、频率或百分比进行缩放。默认选项为 {opt density}。

{pmore}
{opt density} 将条形的高度缩放，使其面积之和等于 1。

{pmore}
{opt fraction} 将条形的高度缩放，使其高度之和等于 1。

{pmore}
{opt frequency} 将条形的高度缩放，使每个条的高度等于该类别中的观察数。因此，高度之和等于总观察数。

{pmore}
{opt percent} 将条形的高度缩放，使其高度之和等于 100。

{phang}
{it:bar_options} 是 {cmd:graph} {cmd:twoway} {cmd:bar} 允许的任何选项；参见 {manhelp twoway_bar G-2:graph twoway bar}。

{pmore}
最有用的 {it:bar_options}之一是 {opt barwidth(#)}，它指定 {varname} 单位中的条的宽度。默认情况下，{cmd:histogram} 绘制的条形相邻条形刚好接触。如果你希望条形之间留有间隙，请不要指定 {cmd:histogram} 的 {opt width()} 选项 -- 这将改变直方图的计算方式 -- 而是指定 {it:bar_option} {opt barwidth()} 或 {cmd:histogram} 选项 {opt gap}，这两者仅影响条形的渲染方式。

{pmore}
{it:bar_option} {opt horizontal} 不能与 {cmd:addlabels} 选项一起使用。

{phang}
{opt binrescale} 指定当 {cmd:by()} 被指定时，为每个组重新计算箱的大小和绘图区的范围。如果指定了 {cmd:normal}，则每个重叠正态密度图的均值和标准差将在每个组中重新计算。同样，如果指定了 {cmd:kdensity}，则重叠核密度图的缩放将在每个组中重新计算。

{phang}
{opt addlabels} 指定每个条的顶部用密度、分数或频率标记，具体取决于 {opt density}、{opt fraction} 和 {opt frequency} 选项。

{phang}
{opt addlabopts(marker_label_options)} 指定如何在条顶上渲染标签。参见 {manhelpi marker_label_options G-3}。不要指定 {it:marker_label_option} {opt mlabel(varname)}，它指定要使用的变量；这由 {cmd:histogram} 为你指定。

{pmore}
{opt addlabopts()} 将接受比在 {manhelpi marker_label_options G-3} 中记录的更多选项。所有 {cmd:twoway scatter} 允许的选项也可以与 {opt addlabopts()} 一起使用；参见 {manhelp scatter G-2:graph twoway scatter}。一个特别有用的选项是 {opt yvarformat()}；参见 {manhelpi advanced_options G-3}。

{dlgtab:密度图}

{phang}
{opt normal} 指定直方图上覆盖一个适当缩放的正态密度。正态密度的均值和标准差将与数据相同。

{phang}
{opt normopts(line_options)} 指定正态曲线的呈现细节，如所用线条的颜色和样式。参见 {manhelp twoway_line G-2:graph twoway line}。

{phang}
{opt kdensity} 指定直方图上覆盖一个适当缩放的核密度估计。默认情况下，使用 Epanechnikov 核与“最佳”的半宽度生成该估计。此默认设置与 {opt kdensity} 的默认设置相对应；参见 {manhelp kdensity R}。可以使用下面描述的 {opt kdenopts()} 选项控制估计的生成方式。

{phang}
{opt kdenopts(kdensity_options)} 指定生成核密度估计的细节以及生成曲线的呈现细节，如所用线条的颜色和样式。核密度估计在 {helpb twoway kdensity:[G-2] graph twoway kdensity} 中有描述。作为例子，如果你想使用高斯核并具有最佳半宽度生成核密度估计，你可以指定 {cmd:kdenopts(gauss)}，如果你还想要半宽度为 5，那么可以指定 {cmd:kdenopts(gauss width(5))}。

{dlgtab:添加图形}

{phang}
{opt addplot(plot)} 允许将更多的 {opt graph} {opt twoway} 图形添加到图形中；参见 {manhelpi addplot_option G-3}。

{dlgtab:Y轴，X轴，标题，图例，整体，按}

{phang}
{it:twoway_options} 是在 
{manhelpi twoway_options G-3}中记录的任何选项。这包括，最重要的是，图形标题的选项（参见 {manhelpi title_options G-3}），将图形保存到磁盘的选项（参见 {manhelpi saving_option G-3}），以及 {opt by()} 选项，允许你同时绘制不同数据子集的直方图（参见 {manhelpi by_option G-3}）。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注如下标题进行呈现：

	{help histogram##remarks1:连续变量的直方图}
	{help histogram##remarks2:叠加正态和核密度估计}
	{help histogram##remarks3:离散变量的直方图}
	{help histogram##remarks4:与 by() 一起使用}
	{help histogram##remarks5:视频示例}

{pstd}
有关使用图形编辑器编辑直方图的示例，请参见
{help histogram##P2011:Pollock (2011, 29-31)}。


{marker remarks1}{...}
{title:连续变量的直方图}

{pstd}
{cmd:histogram} 假定变量是连续的，因此你只需输入 {cmd:histogram} 后跟变量名：

	{cmd:. sysuse sp500}
	{cmd:. histogram volume}
	  {it:({stata "gr_example sp500: histogram volume":点击运行})}

{pstd}
注意 {it:y} 轴上报告的小值密度。它们是正确的；如果你相加所有条形的面积，你会得到 1。尽管如此，许多人习惯于看到直方图缩放，使得条形高度之和等于 1，

	{cmd:. histogram volume, fraction}
	  {it:({stata "gr_example sp500: histogram volume, fraction":点击运行})}

{pstd}
而其他人则习惯于看到直方图，使条形高度反映观察次数：

	{cmd:. histogram volume, frequency}
	  {it:({stata "gr_example sp500: histogram volume, frequency":点击运行})}

{pstd}
无论你偏好哪种缩放，我们都可以指定其他选项来使图形看起来更令人印象深刻：

	{cmd}. summarize volume

	{txt}    变量 {c |}       观测数      平均值    标准差       最小值        最大值
	{hline 13}{c +}{hline 56}
              volume {c |}{res}       248    12320.68    2585.929       4103    23308.3
{txt}
	{cmd}. histogram volume, freq
		xaxis(1 2)
		ylabel(0(10)60, grid)
		xlabel(12321 "均值"
		      9735 "-1 标准差"
		     14907 "+1 标准差"
		      7149 "-2 标准差"
		     17493 "+2 标准差"
		     20078 "+3 标准差"
		     22664 "+4 标准差."
					, axis(2) grid gmax)
		xtitle("", axis(2))
		subtitle("标准普尔500，2001年1月 - 2001年12月")
		note("来源：Yahoo!Finance 和 Commodity Systems, Inc."){txt}
	  {it:({stata "gr_example2 hist1":点击运行})}

{pstd}
有关 {opt xaxis()} 选项的解释 -- 它创建了上部和下部 {it:x} 轴 -- 详见 {manhelpi axis_choice_options G-3}。有关 {opt ylabel()} 和 {opt xlabel()} 选项的解释，请参见 
{manhelpi axis_label_options G-3}。有关 {cmd:subtitle()} 和 {cmd:note()} 选项的解释，请参见 {manhelpi title_options G-3}。


{marker remarks2}{...}
{title:叠加正态和核密度估计}

{phang}
指定 {opt normal} 将在直方图上叠加正态密度。
只需输入

	{cmd}. histogram volume, normal{txt}

{phang}
但我们将把该选项添加到我们更令人印象深刻的演示中：

	{cmd}. histogram volume, freq normal
		xaxis(1 2)
		ylabel(0(10)60, grid)
		xlabel(12321 "均值"
		      9735 "-1 标准差"
		     14907 "+1 标准差"
		      7149 "-2 标准差"
		     17493 "+2 标准差"
		     20078 "+3 标准差"
		     22664 "+4 标准差."
					, axis(2) grid gmax)
		xtitle("", axis(2))
		subtitle("标准普尔500，2001年1月 - 2001年12月")
		note("来源：Yahoo!Finance 和 Commodity Systems, Inc."){txt}
	  {it:({stata "gr_example2 hist2":点击运行})}

{pstd}
如果我们想叠加核密度估计，我们可以用 {cmd:kdensity} 替换 {cmd:normal}。


{marker remarks3}{...}
{title:离散变量的直方图}

{pstd}
当你希望数据视为离散时，请指定 {cmd:histogram} 的离散选项 -- 当你希望变量的每个唯一值分配自己的箱。 例如，在汽车数据中，{cmd:mpg} 是连续变量，但里程评估值被测量至整数精度。 如果我们输入

	{cmd:. sysuse auto}
	{cmd:. histogram mpg}

{pstd}
{cmd:mpg} 将被视为连续变量，并按基于观察数的默认箱计算，观察数为 74。

{pstd}
添加 {opt discrete} 选项则使每个 21 个唯一值都有一个直方图：

	{cmd:. histogram mpg, discrete}
	  {it:({stata "gr_example auto: histogram mpg, discrete":点击运行})}

{pstd}
与连续案例一样，{it:y} 轴的报告以密度术语显示，如果我们希望以不同方式报告，可以指定 {cmd:fraction} 或 {cmd:frequency} 选项。 下面我们指定 {cmd:frequency}，我们指定 {cmd:addlabels} 以在条形上方添加频率报告，指定 {cmd:ylabel(,grid)} 以添加水平网格线，指定 {cmd:xlabel(12(2)42)} 以标记 {it:x} 轴上的值 12、14，...，42：

	{cmd:. histogram mpg, discrete freq addlabels ylabel(,grid) xlabel(12(2)42)}
	  {it:({stata "gr_example auto: histogram mpg, discrete freq addlabels ylabel(,grid) xlabel(12(2)42)":点击运行})}


{marker remarks4}{...}
{title:与 by() 一起使用}

{pstd}
{cmd:histogram} 可以与 {opt graph} {opt twoway} 的 {opt by()} 一起使用；例如，

	{cmd:. sysuse auto}
	{cmd:. histogram mpg, discrete by(foreign)}
	  {it:({stata "gr_example auto: histogram mpg, discrete by(foreign)":点击运行})}

{pstd}
这里的结果更容易比较，如果以一列的形式呈现图形：

	{cmd:. histogram mpg, discrete by(foreign, col(1))}
	  {it:({stata "gr_example auto: histogram mpg, discrete by(foreign, col(1))":点击运行})}

{pstd}
{cmd:col(1)} 是 {cmd:by()} 的子选项 -- 参见 {manhelpi by_option G-3} -- 还有其他有用的子选项，如 {opt total}，它将添加一个整体总直方图。  {opt total} 是 {opt by()} 的子选项，而不是 {cmd:histogram} 的选项，因此你应输入

	{cmd:. histogram mpg, discrete by(foreign, total)}

{pstd}
而不是 "{cmd:histogram mpg, discrete by(foreign) total}"。

{pstd}
作为另一个例子，Lipset (1993) 重印了来自 {it:New York Times} 的数据，该数据是在 1992 年大选日由来自 300 个投票站的 15,490 名美国总统选民填写的问卷基础上，由选民研究和调查公司收集的。

{phang2}{cmd:. sysuse voter}{p_end}
{phang2}{cmd:. histogram candi [freq=pop], discrete fraction by(inc, total) gap(40) xlabel(2 3 4, valuelabel)}{p_end}
{phang2}{it:({stata "gr_example voter:histogram candi [freq=pop], discrete fraction by(inc, total) barwidth(.6) xlabel(2 3 4, valuelabel)":点击运行})}

{pstd}
我们指定了 {cmd:gap(40)} 以将条形的宽度减少 40%。还注意我们使用了 {opt xlabel() } 的 {opt valuelabel} 子选项，这导致我们的条形被标记为 Clinton、Bush 和 Perot，而不是 2、3 和 4；参见 {manhelpi axis_label_options G-3}。
{p_end}


{marker remarks5}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=nPqNZVToGx8":Stata中的直方图}


{marker reference}{...}
{title:参考文献}

{marker P2011}{...}
{phang}
Pollock, P. H. III.  2011.
{browse "http://www.stata.com/bookstore/scpa.html":{it:政治分析的Stata伴侣}}. 2版.
华盛顿特区: CQ Press.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <histogram.sthlp>}