{smcl}
{* *! version 1.1.12  28aug2018}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway histogram" "mansection G-2 graphtwowayhistogram"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] histogram" "help histogram_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway kdensity" "help twoway_kdensity_zh"}{...}
{viewerjumpto "语法" "twoway_histogram_zh##syntax"}{...}
{viewerjumpto "菜单" "twoway_histogram_zh##menu"}{...}
{viewerjumpto "描述" "twoway_histogram_zh##description"}{...}
{viewerjumpto "PDF文档链接" "twoway_histogram_zh##linkspdf"}{...}
{viewerjumpto "离散情况下使用的选项" "twoway_histogram_zh##options_discrete"}{...}
{viewerjumpto "连续情况下使用的选项" "twoway_histogram_zh##options_continuous"}{...}
{viewerjumpto "两种情况使用的选项" "twoway_histogram_zh##options_both"}{...}
{viewerjumpto "备注" "twoway_histogram_zh##remarks"}{...}
{viewerjumpto "参考文献" "twoway_histogram_zh##references"}
{help twoway_histogram:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[G-2] graph twoway histogram} {hline 2}}直方图绘制{p_end}
{p2col:}({mansection G-2 graphtwowayhistogram:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmdab:tw:oway}
{cmdab:hist:ogram}
{varname}
{ifin}
[{it:{help twoway histogram##weight:weight}}]
[{cmd:,}
[{it:discrete_options}|{it:continuous_options}]
{it:common_options}]

{synoptset 25}{...}
{p2col:{it:discrete_options}}描述{p_end}
{p2line}
{p2col:{cmdab:disc:rete}}指定数据为离散型{p_end}
{p2col:{cmdab:w:idth:(}{it:#}{cmd:)}}以{varname}单位表示的区间宽度{p_end}
{p2col:{cmd:start(}{it:#}{cmd:)}}理论最小值{p_end}
{p2line}

{p2col:{it:continuous_options}}描述{p_end}
{p2line}
{p2col:{cmd:bin(}{it:#}{cmd:)}}{it:#}个区间{p_end}
{p2col:{cmdab:w:idth:(}{it:#}{cmd:)}}以{varname}单位表示的区间宽度{p_end}
{p2col:{cmd:start(}{it:#}{cmd:)}}第一个区间的下限{p_end}
{p2line}

{p2col:{it:common_options}}描述{p_end}
{p2line}
{p2col:{cmdab:den:sity}}作为密度绘制；默认值{p_end}
{p2col:{cmdab:frac:tion}}作为比例绘制{p_end}
{p2col:{cmdab:freq:uency}}作为频数绘制{p_end}
{p2col:{cmdab:percent}}作为百分比绘制{p_end}

{p2col:{cmdab:vert:ical}}垂直条；默认值{p_end}
{p2col:{cmdab:hor:izontal}}水平条{p_end}
{p2col:{cmd:gap(}{it:#}{cmd:)}}减小条宽度，0{ul:<}{it:#}<100{p_end}

INCLUDE help gr_baropt

INCLUDE help gr_axlnk

INCLUDE help gr_twopt
{p2line}
{p2colreset}{...}

{marker weight}{...}
{phang}
{cmd:fweight}允许使用；见{help weight_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双向图（散点，线等）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:twoway} {cmd:histogram} 绘制{varname}的直方图。
另见{manhelp histogram R}，它是一个更易于使用的替代方案。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphtwowayhistogramQuickstart:快速开始}

        {mansection G-2 graphtwowayhistogramRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options_discrete}{...}
{title:离散情况下使用的选项}

{phang}
{cmd:discrete}
    指定{varname}为离散型，并为每个独特值
    的{it:varname}分配自己的区间（直方图条）。

{phang}
{cmd:width(}{it:#}{cmd:)}
    在离散情况下很少指定；它指定区间的宽度。默认值为
    {cmd:width(}{it:d}{cmd:)}, 其中{it:d}是{varname}独特值之间的观察最小差异。

{pmore}
    如果你担心数据稀疏，请指定{cmd:width()}。例如，{it:varname}理论上可能取值1, 2, 3, ..., 9，但由于稀疏，可能只观察到值2, 4, 7和8。在这种情况下，默认宽度计算将产生
    {cmd:width(2)}, 而你可能希望指定{cmd:width(1)}。

{phang}
{cmd:start(}{it:#}{cmd:)}
    在离散情况下也很少指定；它指定{varname}的理论最小值。默认为
    {cmd:start(}{it:m}{cmd:)}, 其中{it:m}是观察到的最小值。

{pmore}
    如果你担心稀疏性，指定{cmd:start()}。在之前的例子中，你还希望指定{cmd:start(1)}。 {cmd:start()} 仅在图形左侧添加空白。

{pmore}
    {cmd:start()} （如果指定）必须小于或等于{it:m}，否则将发出错误。


{marker options_continuous}{...}
{title:连续情况下使用的选项}

{phang}
{cmd:bin(}{it:#}{cmd:)}
和
{cmd:width(}{it:#}{cmd:)}
    是指定如何将数据聚合到区间的替代方案。{cmd:bin()}指定区间数量（可据此推导宽度），而{cmd:width()}指定区间宽度（可据此推导区间数量）。

{pmore}
    如果未指定这两种选项，则结果与指定{cmd:bin(}{it:k}{cmd:)}相同，其中

{phang3}
{it:k} = min(sqrt({it:N}), 10*ln({it:N})/ln(10))

{pmore}
    其中{it:N}是{varname}的非缺失观察数量。

{phang}
{cmd:start(}{it:#}{cmd:)}
    指定{varname}的理论最小值。默认为
    {cmd:start(}{it:m}{cmd:)}, 其中{it:m}是{it:varname}的观察最小值。

{pmore}
    当你担心数据稀疏时，请指定{cmd:start()}。例如，你可能知道{it:varname}可以降到0，但你担心0可能未被观察。

{pmore}
    {cmd:start()}（如果指定）必须小于或等于{it:m}，否则将发出错误。


{marker options_both}{...}
{title:两种情况使用的选项}

{phang}
{cmd:density},
{cmd:fraction},
{cmd:frequency}，和
{cmd:percent}
    是指定直方图是否按密度、比例、频数单位或百分比进行缩放的替代方案。{cmd:density}是默认值。

{pmore}
    {cmd:density} 将条的高度缩放为其面积之和等于1。

{pmore}
    {cmd:fraction} 将条的高度缩放为其高度之和等于1。

{pmore}
    {cmd:frequency} 将条的高度缩放为每个条在类别中的观察数量，因此高度之和等于{varname}的非缺失观察总数。

{pmore}
    {cmd:percent} 将条的高度缩放为其高度之和等于100。

{phang}
{cmd:vertical}
和
{cmd:horizontal}
    指定条是要竖直绘制（默认值）还是水平绘制。

{phang}
{cmd:gap(}{it:#}{cmd:)}
    指定条宽度减小{it:#}%。{cmd:gap(0)}是默认值；{cmd:histogram}设置宽度，使相邻条刚好接触。如果你希望条之间有间隔，可以指定，例如{cmd:gap(5)}。

{pmore}
    另见{manhelp twoway_rbar G-2:graph twoway rbar}了解设置条的显示宽度的其他方法。实际上，直方图是通过
    {cmd:twoway rbar}绘制的，限制条件是0必须包含在条内；{cmd:twoway histogram}将接受{cmd:twoway rbar}允许的任何选项。

{* 填充区域，调暗和调亮}{...}
{* 索引颜色，调暗和调亮}{...}
{* 索引 color() tt 选项}{...}
{* 索引颜色强度调整}{...}
{* 索引强度，颜色，调整}{...}
INCLUDE help gr_baroptf

INCLUDE help gr_axlnkf

INCLUDE help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
备注在以下标题下呈现：

        {help twoway histogram##remarks1:graph twoway histogram与histogram的关系}
        {help twoway histogram##remarks2:典型用法}
        {help twoway histogram##remarks3:与by()一起使用}
        {help twoway histogram##remarks4:历史}


{marker remarks1}{...}
{title:graph twoway histogram与histogram的关系}

{pstd}
{cmd:graph} {cmd:twoway} {cmd:histogram} -- 在此文档中记录 -- 和
{cmd:histogram} -- 在{manhelp histogram R}中记录 -- 是几乎相同的命令。{cmd:histogram} 有以下优点：

{phang2}
    1.  它允许叠加一个正态密度或一个密度的核估计；

{phang2}
    2.  如果叠加了密度估计，它会缩放密度以反映条的缩放。

{pstd}
{cmd:histogram} 是依赖于 {cmd:graph}
{cmd:twoway} {cmd:histogram} 实现的。


{marker remarks2}{...}
{title:典型用法}

{pstd}
当你不另行指定时，{cmd:graph} {cmd:twoway} {cmd:histogram}
假定变量为连续型：

	{cmd:. sysuse lifeexp}

	{cmd:. twoway histogram le}
	  {it:({stata "gr_example lifeexp: tw histogram le":click to run})}
{* graph gthist1}{...}

{pstd}
即使是连续变量，你也可以指定{cmd:discrete}选项来查看个体值：

	{cmd:. twoway histogram le, discrete}
	  {it:({stata "gr_example lifeexp: tw histogram le, discrete":click to run})}
{* graph gthist2}{...}


{marker remarks3}{...}
{title:与by()一起使用}

{pstd}
{cmd:graph} {cmd:twoway} {cmd:histogram} 可以与{cmd:by()}一起使用：

	{cmd:. sysuse lifeexp, clear}

	{cmd:. twoway histogram le, discrete by(region, total)}
	  {it:({stata "gr_example lifeexp: tw histogram le, discrete by(region, total)":click to run})}
{* graph gthist3}{...}

{pstd}
在这里，指定{cmd:frequency}是展示分布和对总贡献的良好方法：

{phang2}
	{cmd:. twoway histogram le, discrete freq by(region, total)}
{p_end}
	  {it:({stata "gr_example lifeexp: tw histogram le, discrete freq by(region, total)":click to run})}
{* graph gthist4}{...}

{pstd}
条的高度反映国家的数量。在这里——以及在所有上述例子中——我们应更好地获取各国的人口数据，然后输入

{phang2}
	{cmd:. twoway histogram le [fw=pop], discrete freq by(region, total)}

{pstd}
因此条高度反映了总人口。


{* 索引历史}{...}
{* 索引Beniger和Robyn}{...}
{* 索引Guerry, A. M.}{...}
{* 索引Pearson, Karl}{...}
{marker remarks4}{...}
{title:历史}

{pstd}
根据{help twoway histogram##BR1978:Beniger和Robyn (1978, 4)}，
尽管A. M. Guerry在{help twoway histogram##G1833:1833}中发表了直方图，但“直方图”一词首次由Karl Pearson在{help twoway histogram##P1895:1895}中使用。


{marker references}{...}
{title:参考文献}

{marker BR1978}{...}
{phang}
Beniger, J. R., 和 D. L. Robyn. 1978 年 《统计中的定量图形：简短历史》。 {it:美国统计学家} 32: 1-11.

{marker G1833}{...}
{phang}
Guerry, A.-M. 1833 年. {it:法国道德统计论}. 巴黎: Crochard.

{marker P1895}{...}
{phang}
Pearson, K. 1895 年. 《对进化数学理论的贡献 -- II。 同质材料中的偏斜变异》。 {it:伦敦皇家学会哲学交易，A系列} 186: 343-414.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_histogram.sthlp>}