{smcl}
{* *! version 1.1.4  23oct2017}{...}
{viewerdialog mdsconfig "dialog mdsconfig"}{...}
{viewerdialog mdsshepard "dialog mdsshepard"}{...}
{vieweralsosee "[MV] mds 后处理估计图" "mansection MV mdspostestimationplots"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] mds" "help mds_zh"}{...}
{vieweralsosee "[MV] mds 后处理估计" "help mds postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] mdslong" "help mdslong_zh"}{...}
{vieweralsosee "[MV] mdsmat" "help mdsmat_zh"}{...}
{vieweralsosee "[MV] screeplot" "help screeplot_zh"}{...}
{viewerjumpto "后处理估计命令" "mds postestimation plots##description"}{...}
{viewerjumpto "PDF 文档链接" "mds_postestimation_plots_zh##linkspdf"}{...}
{viewerjumpto "mdsconfig" "mds postestimation plots##syntax_mdsconfig"}{...}
{viewerjumpto "mdsshepard" "mds postestimation plots##syntax_mdsshepard"}{...}
{viewerjumpto "示例" "mds postestimation plots##examples"}
{help mds_postestimation_plots:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[MV] mds 后处理估计图} {hline 2}}mds, mdsmat 和 mdslong 的后处理估计图
{p_end}
{p2col:}({mansection MV mdspostestimationplots:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后处理估计命令}

{pstd}
以下后处理估计命令对 {cmd:mds}、{cmd:mdsmat} 和 {cmd:mdslong} 尤为重要：

{synoptset 22}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{synopt:{helpb mds postestimation plots##mdsconfig:mdsconfig}}近似配置图{p_end}
{synopt:{helpb mds postestimation plots##mdsshepard:mdsshepard}}Shepard 图{p_end}
{synoptline}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV mdspostestimationplotsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker syntax_mdsconfig}{...}
{marker mdsconfig}{...}
{title:mdsconfig 的语法}

{p 8 18 2}
{cmd:mdsconfig} [{cmd:,} {it:options}]

{synoptset 23 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{synopt:{opt dim:ensions(# #)}}要显示的两个维度；
	{bind:默认值为 {cmd:dimensions(2 1)}}{p_end}
{synopt:{opt xneg:ate}}相对于 {it:x} 轴否定数据{p_end}
{synopt:{opt yneg:ate}}相对于 {it:y} 轴否定数据{p_end}
{synopt:{opt auto:aspect}}根据数据自动调整纵横比；
	默认的纵横比为 1{p_end}
{synopt:{opt max:length(#)}}标记标签中使用的最大字符数{p_end}
{synopt:{it:{help cline_options_zh}}}影响连接点的线条渲染{p_end}
{synopt:{it:{help marker_options_zh}}}更改标记的外观（颜色、
	大小等）{p_end}
{synopt:{it:{help marker_label_options_zh}}}更改标记标签的外观或位置{p_end}

{syntab:Y 轴，X 轴，标题，图例，整体}
{synopt:{it:twoway_options}}除 {opt by()} 外的任何选项
	文档详见 {manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}


{marker menu_mdsconfig}{...}
{title:mdsconfig 的菜单}

{phang}
{bf:统计 > 多元分析 > 多维尺度 (MDS) >}
       {bf:后处理估计 > 近似配置图}


{marker desc_mdsconfig}{...}
{title:mdsconfig 的描述}

{pstd}{cmd:mdsconfig}
生成近似的欧几里得配置图。默认情况下，
绘制维度 1 和 2。


{marker options_mdsconfig}{...}
{title:mdsconfig 的选项}

{dlgtab:主要}

{phang}{opt dimensions(# #)}
指定要显示的维度。例如，
{bind:{cmd:dimensions(3 2)}}绘制第三维度（垂直）与第二维度（水平）。
维度编号不得超过提取的维度数量。默认值为 {cmd:dimensions(2 1)}。

{phang}{opt xnegate}
指定数据相对于 {it:x} 轴进行否定。

{phang}{opt ynegate}
指定数据相对于 {it:y} 轴进行否定。

{marker autoaspect}{...}
{phang}{opt autoaspect}
指定根据要绘制的数据范围自动调整纵横比。此选项可以使某些图形更具可读性。 默认情况下，{cmd:mdsconfig} 使用纵横比 1，生成一个正方形图。某些图形在 {it:y} 轴方向变化不大，使用 {opt autoaspect} 选项可以更好地填充可用的图形空间，同时保持 {it:x} 和 {it:y} 轴之间距离的等价性。

{pmore}
作为 {opt autoaspect} 的替代，{it:twoway_option}
{help aspect_option_zh:aspectratio()} 可用于覆盖默认纵横比。{cmd:mdsconfig} 将 {cmd:aspectratio()} 选项视为建议，仅在必要时覆盖以生成具有平衡坐标轴的图，即 {it:x} 轴上的距离等于 {it:y} 轴上的距离。

{pmore}
{it:{help twoway_options_zh:twoway_options}}，例如 {cmd:xlabel()},
{cmd:xscale()}, {cmd:ylabel()} 和 {cmd:yscale()}，应谨慎使用。这些 {it:{help axis_options_zh}} 被接受但可能在纵横比上产生意外的副作用。

{phang}{opt maxlength(#)}
指定用于标记点的对象名称的最大字符数；默认值为 {cmd:maxlength(12)}。

{phang}
{it:cline_options}
影响连接绘制点的线条的渲染；见 {manhelpi cline_options G-3}。如果您正在绘制连线，则图形的外观取决于数据的排序顺序。

{phang}
{it:marker_options}
影响绘制在绘制点的标记的渲染，包括其形状、大小、颜色和轮廓；见 {manhelpi marker_options G-3}。

{phang}
{it:marker_label_options}
指定标记是否以及如何标记；见 {manhelpi marker_label_options G-3}。

{dlgtab:Y 轴，X 轴，标题，图例，整体}

{phang}{it:twoway_options}
是文档详见 {manhelpi twoway_options G-3} 的任何选项，排除 {cmd:by()}。这些包括为图形标题的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。
请参见上述 {helpb mds postestimation plots##autoaspect:autoaspect} 以警告使用 {cmd:xlabel()}、{cmd:xscale()},{cmd:ylabel()} 和 {cmd:yscale()} 等选项。


{marker syntax_mdsshepard}{...}
{marker mdsshepard}{...}
{title:mdsshepard 的语法}

{p 8 19 2}
{cmd:mdsshepard} [{cmd:,} {it:options}]

{synoptset 21 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{synopt:{opt notrans:form}}使用不相似性而非差异{p_end}
{synopt:{opt auto:aspect}}根据数据调整纵横比；
	默认纵横比为 1{p_end}
{synopt:{opt sep:arate}}为每个对象绘制单独的 Shepard 图{p_end}
{synopt:{it:{help marker_options_zh}}}更改标记的外观（颜色、
	大小等）{p_end}

{syntab:Y 轴，X 轴，标题，图例，整体}
{synopt:{it:twoway_options}}除 {opt by()} 外的任何选项
	文档详见 {manhelpi twoway_options G-3}{p_end}
{synopt:{opth byo:pts(by_option)}}影响
        组合图的渲染；仅适用于 {opt separate}{p_end}
{synoptline}
{p2colreset}{...}


{marker menu_mdsshepard}{...}
{title:mdsshepard 的菜单}

{phang}
{bf:统计 > 多元分析 > 多维尺度 (MDS) >}
    {bf:后处理估计 > Shepard 图}


{marker desc_mdsshepard}{...}
{title:mdsshepard 的描述}

{pstd}{cmd:mdsshepard}
生成差异与欧几里得距离的 Shepard 图。 理想情况下，图中的点应接近 y=x 线。 可选地，为每个“行”（{cmd:id()} 的值）生成单独的图。


{marker options_mdsshepard}{...}
{title:mdsshepard 的选项}

{dlgtab:主要}

{phang}{opt notransform}
使用不相似性而非差异，即抑制不相似性的变换。

{phang}{opt autoaspect}
指定根据要绘制的数据范围自动调整纵横比。 默认情况下，{cmd:mdsshepard} 使用纵横比 1，生成一个正方形图。

{pmore}
有关详细信息，请参见 {cmd:mdsconfig} 的 {helpb mds postestimation plots##autoaspect:autoaspect} 选项的描述。

{phang}{opt separate}
显示每个 id 变量值的单独图。如果不同的 id 值数量不小，这可能会耗时。

{phang}
{it:marker_options}
影响绘制在绘制点的标记的渲染，包括其形状、大小、颜色和轮廓；见 {manhelpi marker_options G-3}。

{dlgtab:Y 轴，X 轴，标题，图例，整体}

{phang}{it:twoway_options}
是文档详见 {manhelpi twoway_options G-3} 的任何选项，排除 {cmd:by()}。这些包括为图形标题的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。
有关使用 {cmd:xlabel()}、{cmd:xscale()},{cmd:ylabel()} 和 {cmd:yscale()} 等选项的警告，请参见 {helpb mds postestimation plots##autoaspect:autoaspect} 选项。

{phang}
{opt byopts(by_option)}
在 {manhelpi by_option G-3} 中有文档记录。此选项影响组合图的外观，仅与 {opt separate} 选项一起使用。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}

{pstd}执行经典多维尺度，标准化变量{p_end}
{phang2}{cmd:. mds price-gear, id(make) dim(2) std}

{pstd}绘制近似配置图{p_end}
{phang2}{cmd:. mdsconfig}

{pstd}绘制 Shepard 图{p_end}
{phang2}{cmd:. mdsshepard}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mds_postestimation_plots.sthlp>}