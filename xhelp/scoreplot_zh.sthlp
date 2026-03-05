{smcl}
{* *! version 1.2.11  19oct2017}{...}
{viewerdialog scoreplot "dialog scoreplot"}{...}
{viewerdialog loadingplot "dialog loadingplot"}{...}
{vieweralsosee "[MV] scoreplot" "mansection MV scoreplot"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] candisc" "help candisc_zh"}{...}
{vieweralsosee "[MV] discrim lda" "help discrim_lda_zh"}{...}
{vieweralsosee "[MV] discrim lda postestimation" "help discrim_lda_postestimation_zh"}{...}
{vieweralsosee "[MV] factor" "help factor_zh"}{...}
{vieweralsosee "[MV] factor postestimation" "help factor_postestimation_zh"}{...}
{vieweralsosee "[MV] pca" "help pca_zh"}{...}
{vieweralsosee "[MV] pca postestimation" "help pca_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] screeplot" "help screeplot_zh"}{...}
{viewerjumpto "语法" "scoreplot_zh##syntax"}{...}
{viewerjumpto "菜单" "scoreplot_zh##menu"}{...}
{viewerjumpto "描述" "scoreplot_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "scoreplot_zh##linkspdf"}{...}
{viewerjumpto "选项" "scoreplot_zh##options"}{...}
{viewerjumpto "备注" "scoreplot_zh##remarks"}{...}
{viewerjumpto "示例" "scoreplot_zh##examples"}
{help scoreplot:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[MV] scoreplot} {hline 2}}得分和载荷图{p_end}
{p2col:}({mansection MV scoreplot:查看完整 PDF 手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{pstd}
绘制得分变量

{phang2}
{cmd:scoreplot} {ifin} 
   [{cmd:,} {it:{help scoreplot##scoreplot_options:scoreplot_options}}]


{pstd}
绘制载荷（因子、成分或判别函数）

{phang2}
{cmd:loadingplot}
   [{cmd:,} {it:{help scoreplot##loadingplot_options:loadingplot_options}}]


{marker scoreplot_options}{...}
{synoptset 23 tabbed}{...}
{synopthdr:scoreplot_options}
{synoptline}
{syntab:主要}
{synopt:{opt fac:tors(#)}}要绘制的因子/得分数量;  
	默认为 {cmd:factors(2)}{p_end}
{synopt:{opt com:ponents(#)}}{cmd:factors()} 的同义词{p_end}
{synopt:{opt norot:ated}}使用未旋转的因子或得分，即使存在旋转结果{p_end}
{synopt:{opt matrix}}以矩阵图形式绘制，仅在指定 {cmd:factors(2)} 时可用; 默认为散点图{p_end}
{synopt:{opt combine:d}}以组合图形式绘制，仅在 
     {bind:{cmd:factors(}{it:#} > 2{cmd:)}} 时可用; 默认为矩阵图{p_end}
{synopt:{opt half}}仅绘制下半部分; 仅允许与 {cmd:matrix} 一起使用{p_end}
{synopt:{it:{help graph_matrix_zh:graph_matrix_options}}}影响
	矩阵图的呈现{p_end}
{synopt:{it:{help graph_combine_zh:combine_options}}}影响
	组合图的呈现{p_end}
{synopt:{opt score:opt(predict_opts)}}用于生成
得分变量的 {cmd:predict} 的选项{p_end}
{synopt:{it:{help marker_options_zh}}}更改标记的外观（颜色、大小等）{p_end}
{synopt:{it:{help marker_label_options_zh}}}更改标记标签的外观或位置{p_end}

{syntab:Y 轴, X 轴, 标题, 总体}
{synopt:{it:twoway_options}}文档中列出的任何选项，除了 {opt by()}
在 {manhelpi twoway_options G-3} 中{p_end}
{synoptline}
{p2colreset}{...}

{marker loadingplot_options}{...}
{synoptset 23 tabbed}{...}
{synopthdr:loadingplot_options}
{synoptline}
{syntab:主要}
{synopt:{opt fac:tors(#)}}要绘制的因子/得分数量;  
	默认为 {cmd:factors(2)}{p_end}
{synopt:{opt com:ponents(#)}}{cmd:factors()} 的同义词{p_end}
{synopt:{opt norot:ated}}使用未旋转的因子或得分，即使存在旋转结果{p_end}
{synopt:{opt matrix}}以矩阵图形式绘制，仅在指定 {cmd:factors(2)} 时可用; 默认为散点图{p_end}
{synopt:{opt combine:d}}以组合图形式绘制，仅在 
     {bind:{cmd:factors(}{it:#} > 2{cmd:)}} 时可用; 默认为矩阵图{p_end}
{synopt:{opt half}}仅绘制下半部分; 仅允许与 {cmd:matrix} 一起使用{p_end}
{synopt:{it:{help graph_matrix_zh:graph_matrix_options}}}影响
	矩阵图的呈现{p_end}
{synopt:{it:{help graph_combine_zh:combine_options}}}影响
	组合图的呈现{p_end}
{synopt:{opt max:length(#)}}将变量名缩写为 {it:#} 个字符;
	默认为 {cmd:maxlength(12)}{p_end}
{synopt:{it:{help marker_options_zh}}}更改标记的外观（颜色、大小等）{p_end}
{synopt:{it:{help marker_label_options_zh}}}更改标记标签的外观或位置{p_end}

{syntab:Y 轴, X 轴, 标题, 总体}
{synopt:{it:twoway_options}}文档中列出的任何选项，除了 {opt by()}
在 {manhelpi twoway_options G-3} 中{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

    {title:scoreplot}

{phang2}
{bf:统计 > 多元分析 >}
      {bf:因子和主成分分析 > 后估计 >}
      {bf:得分变量图}

    {title:loadingplot}

{phang2}
{bf:统计 > 多元分析 >}
      {bf:因子和主成分分析 > 后估计 >}
      {bf:载荷图}


{marker description}{...}
{title:描述}

{pstd}
{cmd:scoreplot} 在 {cmd:factor}、 {cmd:factormat}、 {cmd:pca} 或 {cmd:pcamat} 后，生成得分变量的散点图；并在 {cmd:discrim lda} 或 {cmd:candisc} 后生成判别得分变量的散点图。

{pstd}
{cmd:loadingplot} 在 {cmd:factor}、 {cmd:factormat}、 {cmd:pca} 或 {cmd:pcamat} 后，生成载荷（因子或成分）的散点图；并在 {cmd:discrim lda} 或 {cmd:candisc} 后生成标准化的判别函数载荷图。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV scoreplotQuickstart:快速开始}

        {mansection MV scoreplotRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt factors(#)} 为所有得分变量生成图形，直到达到 {it:#}。 
{it:#} 不应超过所保留的因子数量（成分或判别函数），默认为 2。 
{opt components()} 是同义词。 使用 {cmd:factors(1)} 不会生成图。

{phang}
{opt norotated} 使用未旋转的结果，即使存在旋转结果。 
默认情况下，如果有可用的旋转结果，则使用旋转结果。 
如果没有旋转结果， {opt norotated} 将被忽略。

{phang}{opt matrix}
指定使用 {helpb graph matrix} 生成图。 
在指定三个或更多因子时，这是默认选项。
此选项不能与 {opt combined} 一起使用。

{phang}{opt combined}
指定使用 {helpb graph combine} 生成图。 
此选项不能与 {opt matrix} 一起使用。

{phang}
{cmd:half} 指定仅绘制矩阵的下半部分。 
{cmd:half} 仅能与 {cmd:matrix} 选项一起使用。

{phang}{it:graph_matrix_options}
影响矩阵图的呈现； 见 
{manhelp graph_matrix G-2: graph matrix}。

{phang}{it:combine_options}
影响组合图的呈现；见 
{manhelp graph_combine G-2:graph combine}。
{it:combine_options} 只有在 {cmd:factors()} 大于 2 时才能指定。

{phang}{opt scoreopt(predict_opts)},
与 {cmd:scoreplot} 一起使用的选项，指定用于生成得分变量的 {help predict_zh} 的选项。 例如，在 {cmd:factor} 后， 
{cmd:scoreopt(bartlett)} 指定应用 Bartlett 评分。

{phang}{opt maxlength(#)},
与 {cmd:loadingplot} 一起使用的选项， 
使变量名（用作点标记）缩写为 {it:#} 个字符。 
{helpb abbrev()} 函数执行缩写处理，如果 {it:#} 小于 5，则视为 5。

{phang}
{it:marker_options}
影响在绘制点处绘制的标记的呈现，包括它们的形状、大小、颜色和轮廓； 查询 {manhelpi marker_options G-3}。

{phang}
{it:marker_label_options}
指定标记是否以及如何标记； 查询 {manhelpi marker_label_options G-3}。

{dlgtab:Y 轴, X 轴, 标题, 总体}

{phang}
{it:twoway_options} 是在 
{manhelpi twoway_options G-3} 中文档化的除 {cmd:by()} 之外的任何选项。 这些选项包括对图形进行标题处理（见 {manhelpi title_options G-3}）和将图形保存到磁盘（见 {manhelpi saving_option G-3}）的选项。


{marker remarks}{...}
{title:备注}

{pstd}
随着 {opt factors()} 或 {opt components()} 数量的增加， 每个图的绘图区域会变得更小。 
尽管默认的矩阵视图（选项 {opt matrix}）可能最为自然，但组合视图（选项 {opt combined}）显示的图数仅为一半。 
然而，组合视图在轴标签方面占用的空间比矩阵视图更多。 
无论如何，随着请求的因子或成分数量增多，图形会变得过小而无法使用。 
在 {cmd:loadingplot} 中， {opt maxlength()} 选项会修剪自动包含的变量名标记标签。 
这可能有助于在显示多个小图时减少重叠。 
您可以进一步通过使用 {opt mlabel("")} 图形选项来删除这些标记标签。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. pca price trunk rep78 head disp gear, comp(3)}

{pstd}绘制载荷图{p_end}
{phang2}{cmd:. loadingplot}

{pstd}绘制得分图{p_end}
{phang2}{cmd:. scoreplot, mlabel(make)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scoreplot.sthlp>}