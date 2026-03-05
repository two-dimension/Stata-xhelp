{smcl}
{* *! version 1.1.15  18feb2019}{...}
{viewerdialog dotplot "dialog dotplot"}{...}
{vieweralsosee "[R] dotplot" "mansection R dotplot"}{...}
{viewerjumpto "Syntax" "dotplot_zh##syntax"}{...}
{viewerjumpto "Menu" "dotplot_zh##menu"}{...}
{viewerjumpto "Description" "dotplot_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "dotplot_zh##linkspdf"}{...}
{viewerjumpto "Options" "dotplot_zh##options"}{...}
{viewerjumpto "Remarks" "dotplot_zh##remarks"}{...}
{viewerjumpto "Examples" "dotplot_zh##examples"}{...}
{viewerjumpto "Stored results" "dotplot_zh##results"}
{help dotplot:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] dotplot} {hline 2}}比较分布点图{p_end}
{p2col:}({mansection R dotplot:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
变量名称的点图，每个组值对应一列

{p 8 16 2}
{cmd:dotplot} {varname} {ifin} [{cmd:,} {it:options}]


{phang}
变量列表中每个变量的点图，每个变量对应一列

{p 8 16 2}
{cmd:dotplot} {varlist} {ifin} [{cmd:,} {it:options}]


{synoptset 23 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :选项}
{synopt :{opth "over(varlist:groupvar)"}}为每个{it:groupvar}的值显示一个列状点图{p_end}
{synopt :{opt nx(#)}}水平点密度；默认值为{cmd:nx(0)}{p_end}
{synopt :{opt ny(#)}}垂直点密度；默认值为{cmd:ny(35)}{p_end}
{synopt :{opt i:ncr(#)}}标记每个{it:#}组；默认值为{cmd:incr(1)}{p_end}
{synopt :{opt mean}|{opt med:ian}}在均值或中位数处绘制一条水平加号线{p_end}
{synopt :{opt bo:unded}}使用最小值和最大值作为界限{p_end}
{synopt :{opt b:ar}}在每组的肩部绘制水平虚线{p_end}
{synopt :{opt nogr:oup}}使用{it:{help varname_zh:yvar}}的实际值{p_end}
{synopt :{opt ce:nter}}使每列的点居中{p_end}

{syntab :绘图}
包含帮助 gr_markopt2

{syntab :Y 轴, X 轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}文档中除{opt by()}以外的任何选项，见 
     {manhelpi twoway_options G-3} {p_end}
{synoptline}


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 分布图 > 分布点图}


{marker description}{...}
{title:描述}

{pstd}
点图是将值垂直分组（“分箱”，如同直方图）并水平分隔绘制点的散点图。目的是在一个紧凑的图形中显示多个变量或组的所有数据。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R dotplotQuickstart:快速开始}

        {mansection R dotplotRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:选项}

{phang}
{opth "over(varlist:groupvar)"}指定{cmd:dotplot}为每个{it:groupvar}的值显示一个列状点图。
{opt over()}在第二个语法中不可指定。

{phang}
{opt nx(#)}设置水平点密度。较大的{it:#}会增加点密度，减少点间的水平间距。
如果使用两组或更多组或变量，此选项将增加列间的间距。

{phang}
{opt ny(#)}设置垂直点密度（y轴上的“箱”数量）。较大的{it:#}将导致更多箱，并使图形在水平方向上分布更小。
{it:#}应与{opt nx()}结合确定，以获得最符合美观的外观。

{phang}
{opt incr(#)}指定x轴的标签方式。{cmd:incr(1)}为默认值，会标记所有组。{cmd:incr(2)}则每隔一组标记一次。

{phang}
[{opt mean}|{opt median}]在每组的均值或中位数处绘制一条水平加号线。

{phang}
{opt bounded}强制使用变量的最小值和最大值作为最小和最大箱的界限。应用于某个支持不是整个实数线的变量且在其支持端点处密度不趋近于零的情况，例如一个均匀随机变量或一个指数随机变量。

{phang}
{opt bar}在每组的“肩部”绘制水平虚线。肩部被认为是上四分位数和下四分位数，除非指定了{opt mean}；在此情况下将是均值加减标准差。

{phang}
{opt nogroup}使用{it:{help varname_zh:yvar}}的实际值，而不是将其分组（默认）。如果{it:yvar}仅有少数几个值，则此选项可能会有用。

{phang}
{opt center}将每列的点居中于一条隐藏的垂直线上。

{dlgtab:绘图}

{phang}
{it:marker_options}
    影响绘制点的标记的表现形式，包括其形状、大小、颜色和轮廓；见 {manhelpi marker_options G-3}。

{phang}
{it:marker_label_options}
    指定是否以及如何为标记添加标签； 
    见 {manhelpi marker_label_options G-3}。
    如果指定了{varlist}，则不允许使用{it:marker_label_options}。

{dlgtab :Y 轴, X 轴, 标题, 图例, 整体}

{phang} {it:twoway_options} 是 {manhelpi twoway_options G-3} 文档中说明的任何选项，不包括 {opt by()}。这些包括标题图形的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:dotplot} 生成的图形包含箱线图、直方图和散点图的元素。像箱线图一样，它对比较多个变量的分布或单个变量在多个组中的分布最为有用。像直方图一样，该图形提供了密度的粗略估计，并且与散点图相同，每个符号（点）代表一个观察值。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}绘制{cmd:mpg}的点图，分别针对外国和国内汽车{p_end}
{phang2}{cmd:. dotplot mpg, over(foreign)}{p_end}

{pstd}与上相同，但更改点密度，居中点，在中位数处绘制加号线，在上四分位数和下四分位数处绘制虚线{p_end}
{phang2}{cmd:. dotplot mpg, over(foreign) nx(20) ny(10) center median bar}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse dotgr}{p_end}

{pstd}绘制点图，每个变量对应一列{p_end}
{phang2}{cmd:. dotplot g1r1-g1r10}{p_end}

{pstd}与上相同，但添加标题{p_end}
{phang2}{cmd:. dotplot g1r1-g1r10, title("肿瘤体积，立方毫米")}{p_end}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:dotplot} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2:标量}{p_end}
{synopt:{cmd:r(nx)}}水平点密度{p_end}
{synopt:{cmd:r(ny)}}垂直点密度{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dotplot.sthlp>}