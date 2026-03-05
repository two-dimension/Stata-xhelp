{smcl}
{* *! version 1.1.4  23oct2017}{...}
{viewerdialog mcaplot "dialog mcaplot"}{...}
{viewerdialog mcaprojection "dialog mcaprojection"}{...}
{vieweralsosee "[MV] mca postestimation plots" "mansection MV mcapostestimationplots"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] mca" "help mca_zh"}{...}
{vieweralsosee "[MV] mca postestimation" "help mca postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] ca" "help ca_zh"}{...}
{vieweralsosee "[MV] ca postestimation" "help ca_postestimation_zh"}{...}
{viewerjumpto "Postestimation commands" "mca postestimation plots##description"}{...}
{viewerjumpto "Links to PDF documentation" "mca_postestimation_plots_zh##linkspdf"}{...}
{viewerjumpto "mcaplot" "mca postestimation plots##syntax_mcaplot"}{...}
{viewerjumpto "mcaprojection" "mca postestimation plots##syntax_mcaprojection"}{...}
{viewerjumpto "Examples" "mca postestimation plots##examples"}
{help mca_postestimation_plots:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[MV] mca postestimation plots} {hline 2}}MCA 的后验估计图
{p_end}
{p2col:}({mansection MV mcapostestimationplots:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后验估计命令}

{pstd}
在 {cmd:mca} 之后，以下后验估计命令尤为重要：

{synoptset 21}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{synopt:{helpb mca postestimation plots##mcaplot:mcaplot}}类别坐标的图{p_end}
{synopt:{helpb mca postestimation plots##mcaprojection:mcaprojection}}MCA 维度投影图{p_end}
{synoptline}
{p 4 6 2}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV mcapostestimationplotsRemarksandexamples:备注和示例}

        {mansection MV mcapostestimationplotsMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker syntax_mcaplot}{...}
{marker mcaplot}{...}
{title:mcaplot 的语法}

{p 8 17 2}
{cmd:mcaplot} [{it:speclist}]  [{cmd:,} 
    {help mca postestimation plots##options:{it:options}}]

    其中

{p 8 17 2}
{it:speclist} = {it:spec} [{it:spec} ...]

{p 8 17 2}
{it:spec} = {varlist} | {cmd:(}{varname} [{cmd:,} 
   {help mca postestimation plots##plot_options:{it:plot_options}}]{cmd:)}

{p 4 4 2}
{it:varlist} 或 {it:varname} 中的变量必须来自前面的 {cmd:mca}，并且可以引用常规分类变量或交叉变量。变量也可以是补充变量。

{marker options}{...}
{synoptset 26 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:选项}
{synopt:{it:{help graph_combine_zh:combine_options}}}影响组合图的渲染{p_end}
{synopt:{opt over:lay}}叠加变量的图；默认是生成单独的图{p_end}
{synopt:{opt dim:ensions(#_1 #_2)}}显示 {it:#_1} 和 {it:#_2} 维度；{bind:默认是 {cmd:dimension(2 1)}}{p_end}
{synopt:{cmdab:norm:alize(}{cmdab:s:tandard)}}显示标准坐标{p_end}
{synopt:{cmdab:norm:alize(}{cmdab:p:rincipal)}}显示主坐标{p_end}
{synopt:{opt max:length(#)}}使用 {it:#} 作为标签的最大字符数；默认是 {cmd:maxlength(12)}{p_end}
{synopt:{opt xneg:ate}}相对于 {it:x} 轴取反坐标{p_end}
{synopt:{opt yneg:ate}}相对于 {it:y} 轴取反坐标{p_end}
{synopt:{opt or:igin}}标记原点并绘制原点轴{p_end}
{synopt:{opth or:iginlopts(line_options)}}影响原点轴的渲染{p_end}

{syntab:Y 轴, X 轴, 标题, 图例, 整体}
{synopt:{it:twoway_options}}任何在 {manhelpi twoway_options G-3} 中记录的除 {opt by()} 外的选项{p_end}
{synoptline}
{p2colreset}{...}

{marker plot_options}{...}
{synoptset 26}{...}
{synopthdr:plot_options}
{synoptline}
{synopt:{it:{help marker_options_zh}}}更改标记的外观（颜色、大小等）{p_end}
{synopt:{it:{help marker_label_options_zh}}}添加标记标签；更改外观或位置{p_end}
{synopt:{it:{help twoway_options_zh}}}标题、图例、轴、添加线和文本、区域等{p_end}
{synoptline}


{marker menu_mcaplot}{...}
{title:mcaplot 的菜单}

{phang}
{bf:统计 > 多元分析 > 对应分析 >}
     {bf:MCA 或 JCA 后的后验估计 > 类别坐标的图}


{marker description_mcaplot}{...}
{title:mcaplot 的描述}

{pstd}
{cmd:mcaplot} 生成 MCA 变量在两维中的类别点散点图。


{marker options_mcaplot}{...}
{title:mcaplot 的选项}

{dlgtab:图}

{phang}
{it:plot_options} 影响标记的外观，包括其形状、大小、颜色和轮廓（见 {manhelpi marker_options G-3}），并指定标记是否及如何被标记（见 {manhelpi marker_label_options G-3}）。这些选项可以为每个变量指定。如果没有指定 {cmd:overlay} 选项，则对于每个变量，您还可以指定许多 {it:twoway_options}，不包括 {cmd:by()}、{cmd:name()} 和 {cmd:aspectratio()}；见 {manhelpi twoway_options G-3}。见 {it:{help mca postestimation plots##twoway_options:twoway_options}} 下面关于使用选项如 {cmd:xlabel()}、{cmd:xscale()}、{cmd:ylabel()} 和 {cmd:yscale()} 的警告。

{dlgtab:选项}

{phang}{it:combine_options}
影响组合图的渲染；见 {manhelp graph_combine G-2:图组合}。 {it:combine_options} 不能与 {cmd:overlay} 一起指定。

{phang}{cmd:overlay}
叠加变量的双图。默认是生成双图的组合图。

{phang}{opt dimension(#_1 #_2)}
确定要显示的维度。例如，{bind:{cmd:dimension(3 2)}} 绘制第三维度（纵向）与第二维度（横向）。维度编号不能超过提取的维度数量。默认是 {cmd:dimension(2 1)}。

{phang}{opt normalize(norm)}
指定坐标的规范化。{cmd:normalize(standard)} 返回标准规范化的坐标。{cmd:normalize(principal)} 返回主坐标。默认是估计期间使用的 {cmd:mca} 指定的规范化方法，或如果没有指定方法，则为 {cmd:normalize(standard)}。

{phang}{opt maxlength(#)}
指定行和列标签的最大字符数；默认是 {cmd:maxlength(12)}。

{phang}{opt xnegate}
指定 {it:x} 轴坐标取反（乘以 -1）。

{phang}{opt ynegate}
指定 {it:y} 轴坐标取反（乘以 -1）。

{phang}{cmd:origin}
标记原点并绘制原点轴。

{phang}{opt originlopts(line_options)}
影响原点轴的渲染。见 {manhelpi line_options G-3}。

{dlgtab:Y 轴, X 轴, 标题, 图例, 整体}

{marker twoway_options}{...}
{phang}{it:twoway_options}
是 {manhelpi twoway_options G-3} 中记录的任何选项，不包括 {cmd:by()}。

{pmore}
{cmd:mcaplot} 会根据数据的范围自动调整长宽比，并确保轴平衡。作为替代，{it:twoway_option} {help aspect_option_zh:aspectratio()} 可以用于覆盖默认长宽比。{cmd:mcaplot} 接受 {cmd:aspectratio()} 选项作为建议，仅在需要时覆盖，以生成具有平衡轴的图；即，{it:x} 轴上的距离等于 {it:y} 轴上的距离。

{pmore}
{it:{help twoway_options_zh}} 如 {cmd:xlabel()}、{cmd:xscale()}、{cmd:ylabel()} 和 {cmd:yscale()} 应谨慎使用。这些 {it:{help axis_options_zh}} 会被接受，但可能对长宽比产生意想不到的副作用。


{marker syntax_mcaprojection}{...}
{marker mcaprojection}{...}
{title:mcaprojection 的语法}

{p 8 19 2}
{cmd:mcaprojection} [{it:speclist}]  [{cmd:,} 
      {help mca postestimation plots##mcaproj_options:{it:options}}]

    其中

{p 8 19 2}
{it:speclist} = {it:spec} [{it:spec} ...]

    并且

{p 8 19 2}
{it:spec} = {varlist} | {cmd:(}{varname} [{cmd:,} 
    {help mca postestimation plots##mcaproj_plot_options:{it:plot_options}}]{cmd:)}

{p 4 4 2}
{it:varlist} 或 {it:varname} 中的变量必须来自前面的 {cmd:mca}，并且可以引用常规分类变量或交叉变量。变量也可以是补充变量。

{marker mcaproj_options}{...}
{synoptset 24 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:选项}
{synopt:{opth dim:ensions(numlist)}}显示 {it:numlist} 个维度；默认是全部{p_end}
{synopt:{cmdab:norm:alize(}{cmdab:p:rincipal)}}分数（坐标）应为主规范化{p_end}
{synopt:{cmdab:norm:alize(}{cmdab:s:tandard)}}分数（坐标）应为标准规范化{p_end}
{synopt:{opt alt:ernate}}交替标签{p_end}
{synopt:{opt max:length(#)}}使用 {it:#} 作为标签的最大字符数；默认是 {cmd:maxlength(12)}{p_end}
{synopt:{it:{help graph_combine_zh:combine_options}}}影响组合图的渲染{p_end}

{syntab:Y 轴, X 轴, 标题, 图例, 整体}
{synopt:{it:twoway_options}}任何在 {manhelpi twoway_options G-3} 中记录的除 {opt by()} 外的选项{p_end}
{synoptline}
{p2colreset}{...}

{marker mcaproj_plot_options}{...}
{synoptset 24}{...}
{synopthdr:plot_options}
{synoptline}
{synopt:{it:{help marker_options_zh}}}更改标记的外观（颜色、大小等）{p_end}
{synopt:{it:{help marker_label_options_zh}}}添加标记标签；更改外观或位置{p_end}
{synopt:{it:{help twoway_options_zh}}}标题、图例、轴、添加线和文本、区域等{p_end}
{synoptline}


{marker menu_mcaprojection}{...}
{title:mcaprojection 的菜单}

{phang}
{bf:统计 > 多元分析 > 对应分析 >}
    {bf:MCA 或 JCA 后的后验估计 > 维度投影图}


{marker description_mcaprojection}{...}
{title:mcaprojection 的描述}

{pstd}
{cmd:mcaprojection} 生成 MCA 变量类别的坐标投影图。


{marker options_mcaprojection}{...}
{title:mcaprojection 的选项}

{dlgtab:图}

{phang}
{it:plot_options} 影响标记的外观，包括其形状、大小、颜色和轮廓（见 {manhelpi marker_options G-3}），并指定标记是否及如何被标记（见 {manhelpi marker_label_options G-3}）。这些选项可以为每个变量指定。如果没有指定 {cmd:overlay} 选项，则对于每个变量，您还可以指定 {it:twoway_options}，不包括 {cmd:by()} 和 {cmd:name()}；见 {manhelpi twoway_options G-3}。

{dlgtab:选项}

{phang}{opth dimensions(numlist)}
确定要显示的维度。默认情况下显示所有维度。

{phang}{opt normalize(norm)}
指定坐标的规范化。{cmd:normalize(standard)} 返回标准规范化的坐标。{cmd:normalize(principal)} 返回主坐标。默认是估计期间使用的 {cmd:mca} 指定的规范化方法，或 {cmd:normalize(standard)} 如未指定方法。

{phang}{opt alternate}
使相邻标签交替放置。

{phang}{opt maxlength(#)}
指定行和列标签的最大字符数；默认是 {cmd:maxlength(12)}。

{phang}{it:combine_options}
影响组合图的渲染；见 {manhelp graph_combine G-2:图组合}。这些选项在仅指定一个变量时不得使用。

{dlgtab:Y 轴, X 轴, 标题, 图例, 整体}

{phang}{it:twoway_options}
是 {manhelpi twoway_options G-3} 中记录的任何选项，不包括 {cmd:by()}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse issp93}{p_end}
{phang2}{cmd:. mca A B C D, dimensions(2) suppl(age edu) method(joint)}{p_end}

{pstd}双图{p_end}
{phang2}{cmd:. mcaplot}{p_end}
{phang2}{cmd:. mcaplot A B C, ynegate}{p_end}
{phang2}{cmd:. mcaplot (A, mcolor(red) mlabcolor(red)) (B, mcolor(blue)), overlay}{p_end}

{pstd}维度投影图{p_end}
{phang2}{cmd:. mcaprojection}{p_end}
{phang2}{cmd:. mcaprojection A B C, alternate}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mca_postestimation_plots.sthlp>}