{smcl}
{* *! version 1.0.3  19oct2017}{...}
{viewerdialog cabiplot "dialog cabiplot"}{...}
{viewerdialog caprojection "dialog caprojection"}{...}
{vieweralsosee "[MV] ca postestimation plots" "mansection MV capostestimationplots"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] ca" "help ca_zh"}{...}
{vieweralsosee "[MV] ca postestimation" "help ca postestimation"}{...}
{vieweralsosee "[MV] screeplot" "help screeplot_zh"}{...}
{viewerjumpto "Postestimation commands" "ca postestimation plots##description"}{...}
{viewerjumpto "Links to PDF documentation" "ca_postestimation_plots_zh##linkspdf"}{...}
{viewerjumpto "cabiplot" "ca postestimation plots##syntax_cabiplot"}{...}
{viewerjumpto "caprojection" "ca postestimation plots##syntax_caprojection"}{...}
{viewerjumpto "Examples" "ca postestimation plots##examples"}
{help ca_postestimation_plots:English Version}
{hline}{...}
{p2colset 1 33 29 2}{...}
{p2col:{bf:[MV] ca postestimation plots} {hline 2}}后置估计图用于
ca 和 camat{p_end}
{p2col:}({mansection MV capostestimationplots:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后置估计命令}

{pstd}
以下后置估计命令在执行 {cmd:ca} 和 {cmd:camat} 后特别重要：

{synoptset 21}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{synopt:{helpb ca postestimation plots##cabiplot:cabiplot}}行和列点的双变量图{p_end}
{synopt:{helpb ca postestimation plots##caprojection:caprojection}}CA 维度投影图{p_end}
{synoptline}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV capostestimationplotsRemarksandexamples:备注和示例}

{pstd}
上面的部分不包含在此帮助文件中。


{marker syntax_cabiplot}{...}
{marker cabiplot}{...}
{title:cabiplot 的语法}

{p 8 17 2}
{cmd:cabiplot} [{cmd:,} {it:options}]

{synoptset 26 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主选项}
{synopt:{opt dim(# #)}}要显示的两个维度； 
	{bind:默认为 {cmd:dim(2 1)}}{p_end}
{synopt:{opt norow}}抑制行坐标{p_end}
{synopt:{opt nocol:umn}}抑制列坐标{p_end}
{synopt:{opt xneg:ate}}相对于 {it:x} 轴对数据取反{p_end}
{synopt:{opt yneg:ate}}相对于 {it:y} 轴对数据取反{p_end}
{synopt:{opt max:length(#)}}标签的最大字符数；
	默认为 {cmd:maxlength(12)}{p_end}
{synopt:{opt or:igin}}在图中显示原点{p_end}
{synopt:{opth or:iginlopts(line_options)}}影响原点轴的样式{p_end}

{syntab:行}
{synopt:{opt row:opts(row_opts)}}影响行的样式{p_end}

{syntab:列}
{synopt:{opt col:opts(col_opts)}}影响列的样式{p_end}

{syntab:Y 轴, X 轴, 标题, 图例, 整体}
{synopt:{it:twoway_options}}除 {opt by()} 外的任何选项，记录在 {manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 26}{...}
{p2coldent:{it:row_opts} 和 {it:col_opts}}描述{p_end}
{synoptline}
{synopt:{it:plot_options}}改变标记的外观
	(颜色、大小等)以及标记标签的外观或位置{p_end}
{synopt:{opt sup:popts(plot_options)}}改变辅助标记的外观
	和辅助标记标签的外观或位置{p_end}
{synoptline}

{synopthdr:plot_options}
{synoptline}
{synopt:{it:{help marker_options_zh}}}改变标记的外观
	(颜色、大小等){p_end}
{synopt:{it:{help marker_label_options_zh}}}添加标记标签；改变
	外观或位置{p_end}
{synoptline}
{p2colreset}{...}


{marker menu_cabiplot}{...}
{title:cabiplot 的菜单}

{phang}
{bf:统计 > 多变量分析 > 对应分析 >}
     {bf:CA 之后的后置估计 > 行和列点的双变量图}


{marker description_cabiplot}{...}
{title:cabiplot 的描述}

{pstd}
{cmd:cabiplot}
生成行点或列点的图表，或者行点和列点的双变量图。在该图中，行（列）点之间的（欧几里得）距离近似于相应行（列）轮廓之间的卡方距离，如果 CA 被适当规范化。类似地，行点和列点之间的关联通过从原点到相应点的向量的内积近似（请参见 {manhelp ca MV}）。


{marker options_cabiplot}{...}
{title:cabiplot 的选项}

{dlgtab:主选项}

{phang}{opt dim(# #)}
指定要显示的维度。例如，{bind:{cmd:dim(3 2)}} 将第三维度（垂直）与第二维度（水平）绘制。维度编号不能超过提取的维度数。默认为 {cmd:dim(2 1)}。

{phang}{opt norow} 抑制行点的绘制。

{phang}{opt nocolumn} 抑制列点的绘制。

{phang}{opt xnegate}
指定 {it:x} 轴值应取反（乘以 -1）。

{phang}{opt ynegate}
指定 {it:y} 轴值应取反（乘以 -1）。

{phang}{opt maxlength(#)}
指定行和列标签的最大字符数； 默认为 {cmd:maxlength(12)}。

{phang}{opt origin}
指定在图中显示原点。这
等同于向 {cmd:cabiplot} 命令添加选项 
{cmd:xline(0, lcolor(black) lwidth(vthin))}
{cmd:yline(0, lcolor(black) lwidth(vthin))}。

{phang}{opt originlopts(line_options)}
影响原点轴的样式；见 
    {manhelpi line_options G-3}。

{dlgtab:行}

{phang}{opt rowopts(row_opts)}
影响行的样式。 允许以下 {it:row_opts}：

{phang2}
{it:plot_options} 影响行标记的外观，包括其形状、
大小、颜色和轮廓（请参见 {manhelpi marker_options G-3}）并指定如何标记行标记（请参见
{manhelpi marker_label_options G-3}）。

{phang2}
{opt suppopts(plot_options)}
影响辅助标记和辅助标记标签；见上文对 {it:plot_options} 的描述。

{dlgtab:列}

{phang}{opt colopts(col_opts)}
影响列的样式。 允许以下 {it:col_opts}：

{phang2}
{it:plot_options} 影响列标记的外观，包括其形状、
大小、颜色和轮廓（请参见 {manhelpi marker_options G-3}）并指定如何标记列标记（请参见 
{manhelpi marker_label_options G-3}）。

{phang2}
{opt suppopts(plot_options)}
影响辅助标记和辅助标记标签；见上文对 {it:plot_options} 的描述。

{dlgtab:Y 轴, X 轴, 标题, 图例, 整体}

{phang}{it:twoway_options}
是记录在 {manhelpi twoway_options G-3} 中的任何选项，但不包括 {cmd:by()}。包括用于标题图表的选项（见
{manhelpi title_options G-3}）和将图表保存到磁盘的选项（见
{manhelpi saving_option G-3}）。

{pmore}
{cmd:cabiplot} 根据数据范围自动调整纵横比，确保轴平衡。 作为替代方案，可以使用 {it:twoway_option} {help aspect_option_zh:aspectratio()} 来覆盖默认纵横比。 {cmd:cabiplot} 仅将 {cmd:aspectratio()} 选项视为建议，并在必要时将其覆盖，以生成具有平衡轴的图；即， {it:x} 轴上的距离等于 {it:y} 轴上的距离。

{pmore}
{it:{help twoway_options_zh}} 如 {cmd:xlabel()},
{cmd:xscale()}, {cmd:ylabel()} 和 {cmd:yscale()} 应谨慎使用。这些 {it:{help axis_options_zh}} 是被接受的，但可能对纵横比产生意外的副作用。


{marker syntax_caprojection}{...}
{marker caprojection}{...}
{title:caprojection 的语法}

{p 8 19 2}
{cmd:caprojection} [{cmd:,} {it:options}]

{synoptset 24 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主选项}
{synopt:{opth dim(numlist)}}要显示的维度；默认为所有{p_end}
{synopt:{opt norow}}抑制行坐标{p_end}
{synopt:{opt nocol:umn}}抑制列坐标{p_end}
{synopt:{opt alt:ernate}}交替标签{p_end}
{synopt:{opt max:length(#)}}显示标签的最大字符数；
	默认为 {cmd:maxlength(12)}{p_end}
{synopt:{it:{help graph_combine_zh:combine_options}}}影响合并列和行图的样式{p_end}	
{syntab:行}
{synopt:{opt row:opts(row_opts)}}影响行的样式{p_end}

{syntab:列}
{synopt:{opt col:opts(col_opts)}}影响列的样式{p_end}

{syntab:Y 轴, X 轴, 标题, 图例, 整体}
{synopt:{it:twoway_options}}除 {opt by()} 外的任何选项，记录在 {manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 24}{...}
{p2coldent:{it:row_opts} 和 {it:col_opts}}描述{p_end}
{synoptline}
{synopt:{it:plot_options}}改变标记的外观
	(颜色、大小等)以及标记标签的外观或位置{p_end}
{synopt:{opt sup:popts(plot_options)}}改变辅助标记的外观
和辅助标记标签的外观或位置{p_end}
{synoptline}

{synopthdr:plot_options}
{synoptline}
{synopt:{it:{help marker_options_zh}}}改变标记的外观
	(颜色、大小等){p_end}
{synopt:{it:{help marker_label_options_zh}}}添加标记标签；改变
	外观或位置{p_end}
{synoptline}
{p2colreset}{...}


{marker menu_caprojection}{...}
{title:caprojection 的菜单}

{phang}
{bf:统计 > 多变量分析 > 对应分析 >}
       {bf:CA 之后的后置估计 > 维度投影图}


{marker description_caprojection}{...}
{title:caprojection 的描述}

{pstd}
{cmd:caprojection}
生成行和列坐标的线图。此图表的目标是显示行和列类别在分析的每个主维度上的顺序。每个主维度由一条垂直线表示；标记被绘制在行和列类别投影到这些维度上的位置。


{marker options_caprojection}{...}
{title:caprojection 的选项}

{dlgtab:主选项}

{phang}{opth dim(numlist)}
指定要显示的维度。 默认情况下，显示所有维度。

{phang}{opt norow} 抑制行的绘制。

{phang}{opt nocolumn} 抑制列的绘制。

{phang}{opt alternate}
使相邻标签交替侧边。

{phang}{opt maxlength(#)}
指定行和列标签的最大字符数； 默认为 {cmd:maxlength(12)}。

{phang}{it:combine_options}
影响合并图的样式；见
{manhelp graph_combine G-2: 图形合并}。
{it:combine_options} 不能与 {cmd:norow} 或 {cmd:nocolumn} 同时指定。

{dlgtab:行}

{phang}{opt rowopts(row_opts)}
影响行的样式。 允许以下 {it:row_opts}：

{phang2}
{it:plot_options} 影响行标记的外观，包括其形状、
大小、颜色和轮廓（请参见 {manhelp marker_options G-3}）并指定如何标记行标记（请参见 {manhelp marker_label_options G-3}）。

{phang2}
{opt suppopts(plot_options)}
影响辅助标记和辅助标记标签；见上文对 {it:plot_options} 的描述。

{dlgtab:列}

{phang}{opt colopts(col_opts)}
影响列的样式。 允许以下 {it:col_opts}：

{phang2}
{it:plot_options} 影响列标记的外观，包括其形状、
大小、颜色和轮廓（请参见 {manhelpi marker_options G-3}）并指定如何标记列标记（请参见 
{manhelpi marker_label_options G-3}）。

{phang2}
{opt suppopts(plot_options)}
影响辅助标记和辅助标记标签；见上文对 {it:plot_options} 的描述。

{dlgtab:Y 轴, X 轴, 标题, 图例, 整体}

{phang}{it:twoway_options}
是记录在 {manhelpi twoway_options G-3} 中的任何选项，但不包括 {cmd:by()}。这些包括对图表进行标题（见 {manhelpi title_options G-3}）和将图表保存到磁盘（见 {manhelpi saving_option G-3}）的选项。

{marker examples}{...}
{title:示例}

    设置
        {cmd:. webuse ca_smoking}

    估计 CA
        {cmd:. ca rank smoking}

    双变量图
        {cmd:. cabiplot}
        {cmd:. cabiplot, nocolumn}

    维度投影图
        {cmd:. caprojection, dim(1/2)}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ca_postestimation_plots.sthlp>}