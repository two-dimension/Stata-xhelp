{smcl}
{* *! version 1.2.7  05sep2018}{...}
{viewerdialog predict "dialog procrustes_p"}{...}
{viewerdialog estat "dialog procrustes_estat"}{...}
{viewerdialog procoverlay "dialog procoverlay"}{...}
{vieweralsosee "[MV] procrustes postestimation" "mansection MV procrustespostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] procrustes" "help procrustes_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] mvreg" "help mvreg_zh"}{...}
{viewerjumpto "Postestimation commands" "procrustes postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "procrustes_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "procrustes postestimation##syntax_predict"}{...}
{viewerjumpto "estat" "procrustes postestimation##syntax_estat"}{...}
{viewerjumpto "procoverlay" "procrustes postestimation##syntax_procoverlay"}{...}
{viewerjumpto "Examples" "procrustes postestimation##examples"}{...}
{viewerjumpto "Stored results" "procrustes postestimation##results"}
{help procrustes_postestimation:English Version}
{hline}{...}
{p2colset 1 35 37 2}{...}
{p2col:{bf:[MV] procrustes postestimation} {hline 2}}Procrustes 的后估计工具
{cmd:procrustes}
{p_end}
{p2col:}({mansection MV procrustespostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
以下后估计命令在进行 {cmd:procrustes} 之后特别重要：

{synoptset 19}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{synopt:{helpb procrustes postestimation##estat:estat compare}}适用于正交、倾斜和不受限制变换的拟合统计量{p_end}
{synopt:{helpb procrustes postestimation##estat:estat mvreg}}显示类似于不受限制变换的多元回归{p_end}
{synopt:{helpb procrustes postestimation##estat:estat summarize}}显示估计样本的汇总统计{p_end}
{synopt:{helpb procrustes postestimation##procoverlay:procoverlay}}生成 Procrustes 重叠图{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后估计命令也是可用的：

{synoptset 19 tabbed}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{p2coldent:* {help estimates_zh}}目录估计结果{p_end}
{synopt:{helpb procrustes postestimation##predict:predict}}计算拟合值和残差{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* 除 {cmd:table} 和 {cmd:stats} 以外的所有 {help estimates_zh} 子命令均可用。
{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV procrustespostestimationRemarksandexamples:备注和示例}

        {mansection MV procrustespostestimationMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {{it:{help newvarlist##stub*:stub}}{cmd:*} | {newvar:list}} {ifin} [{cmd:,}
	{it:statistic}]

{synoptset 13 tabbed}{...}
{synopthdr:统计量}
{synoptline}
{syntab:主要}
{synopt:{opt fit:ted}}拟合值 {bf:1} {bf:c}' + rho {bf:X} {bf:A};
默认值（指定 {it:#}y 变量）{p_end}
{synopt:{opt res:iduals}}非标准化残差（指定 {it:#}y 变量）{p_end}
{synopt:{opt q}}目标变量的残差平方和（指定一个变量）{p_end}
{synoptline}
包括帮助 esample


包括帮助 menu_predict


{marker desc_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建新的变量包含预测值，例如拟合值、非标准化残差和残差平方和。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}{opt fitted}，默认值，
计算拟合值，即目标变量的最小二乘近似 ({it:{help varlist_zh:varlist_y}})。 您必须指定与目标变量数量相同的新变量。

{phang}{opt residuals}
计算每个目标变量的原始（非标准化）残差 ({it:{help varlist_zh:varlist_y}})。 您必须指定与目标变量数量相同的新变量。

{phang}{opt q}
计算所有变量的残差平方和，即目标点与变换源点之间的欧几里德距离的平方。 指定一个新变量。


{marker syntax_estat}{...}
{marker estat}{...}
{title:estat 的语法}

{pstd}
拟合统计表

{p 8 14 2}
{cmd:estat} {cmdab:co:mpare} [{cmd:,} {opt det:ail}]


{pstd}
比较 {cmd:mvreg} 和 {cmd:procrustes} 输出

{p 8 14 2}
{cmd:estat} {cmdab:mv:reg} [{cmd:,} 
      {help mvreg_zh:{it: mvreg_options}}]


{pstd}
显示汇总统计

{p 8 14 2}
{cmd:estat} {cmdab:su:mmarize}
	[{cmd:,}
		{opt lab:els}
		{opt nohea:der}
		{opt nowei:ghts}]


包括帮助 menu_estat


{marker desc_estat}{...}
{title:estat 的描述}

{pstd}
{cmd:estat} {cmd:compare}
显示由 {cmd:procrustes} 提供的三种变换的拟合统计量表： {cmd:orthogonal}、{cmd:oblique} 和 {cmd:unrestricted}。
另外的两个 procrustes 分析是在与原始 procrustes 分析相同的样本和相同的选项下进行的。
提供了比较模型的 F 测试。

{pstd}
{cmd:estat} {cmd:mvreg}
生成与不受限制的 Procrustes 分析相关的 {help mvreg_zh} 输出（即 {cmd:transform(unrestricted)} 选项的 {cmd:procrustes}）。

{pstd}
{cmd:estat} {cmd:summarize}
显示目标和源变量的估计样本汇总统计 ({it:{help varlist_zh:varlist_y}} 和 {it:varlist_x})。


{marker options_estat}{...}
{title:estat 的选项}

{phang}
{opt detail}，与 {cmd:estat compare} 相关的选项，显示两个额外变换的标准 {cmd:procrustes} 输出。

{phang}
与 {cmd:estat mvreg} 相关的 {it:mvreg_options} 是任何 {cmd:mvreg} 允许的选项；请参见 {manhelp mvreg MV}。 如果 Procrustes 分析已抑制常数，则常数已被压制。

{phang}
{opt labels}、{opt noheader} 和 {opt noweights} 与通用 {cmd:estat} {cmd:summarize} 命令相同；请参见
{helpb estat summarize:[R] estat summarize}。


{marker syntax_procoverlay}{...}
{marker procoverlay}{...}
{title:procoverlay 的语法}

{p 8 20 2}
{cmd:procoverlay} {ifin} [{cmd:,} {it:procoverlay_options}]

{synoptset 27 tabbed}{...}
{synopthdr:procoverlay_options}
{synoptline}
{syntab:主要}
{synopt:{opt auto:aspect}}根据数据调整纵横比；默认纵横比为 1{p_end}
{synopt:{opth target:opts(procrustes_postestimation##targetopts:target_opts)}}影响目标的呈现{p_end}
{synopt:{opth source:opts(procrustes_postestimation##sourceopts:source_opts)}}影响源的呈现{p_end}

{syntab:Y 轴，X 轴，标题，图例，总体}
{synopt:{it:twoway_options}}任何记录在 {manhelpi twoway_options G-3} 中的选项，除 {opt by()} 之外{p_end}

{syntab:按}
{synopt:{opth byo:pts(by_option)}}影响组合图的
呈现{p_end}
{synoptline}

{marker targetopts}{...}
{synopthdr:target_opts}
{synoptline}
{syntab:主要}
{synopt:{opt nolab:el}}从目标中删除默认观察标签{p_end}
{synopt:{it:{help marker_options_zh}}}更改标记的外观 
	（颜色、大小等）{p_end}
{synopt:{it:{help marker_label_options_zh}}}更改 
	标记标签的外观或位置{p_end}
{synoptline}

{marker sourceopts}{...}
{synopthdr:source_opts}
{synoptline}
{syntab:主要}
{synopt:{opt nolab:el}}从源中删除默认观察标签{p_end}
{synopt:{it:{help marker_options_zh}}}更改标记的外观 
	（颜色、大小等）{p_end}
{synopt:{it:{help marker_label_options_zh}}}更改 
	标记标签的外观或位置{p_end}
{synoptline}
{p2colreset}{...}


{marker menu_procoverlay}{...}
{title:procoverlay 的菜单}

{phang}
{bf:统计 > 多元分析 > Procrustes 重叠图}


{marker desc_procoverlay}{...}
{title:procoverlay 的描述}

{pstd}
{cmd:procoverlay}
显示目标变量与源变量派生的拟合值的重叠图。如果目标变量超过两个，则在一个图中显示多个图。

{marker options_procoverlay}{...}
{title:procoverlay 的选项}

{dlgtab:主要}

{marker autoaspect}{...}
{phang}{opt autoaspect}
指定根据要绘制的数据范围自动调整纵横比。此选项可以使某些 {cmd:procoverlay}
图更具可读性。默认情况下，{cmd:procoverlay} 使用纵横比为一，生成正方形图。

{pmore}
作为 {opt autoaspect} 的替代，{it:twoway_option}
{help aspect_option_zh:aspectratio()} 可用于覆盖默认纵横比。{cmd:procoverlay}
仅将 {cmd:aspectratio()} 选项视为建议，并会在必要时覆盖以生成轴平衡的图，即，{it:x} 轴上的距离等于 {it:y} 轴上的距离。

{pmore}
{it:{help twoway_options_zh}}，如 {cmd:xlabel()}、
{cmd:xscale()}、{cmd:ylabel()} 和 {cmd:yscale()} 应谨慎使用。这些 {it:{help axis_options_zh}} 被接受，但可能对纵横比产生意想不到的副作用。

{phang}{opt targetopts(target_opts)}
影响目标图的呈现。以下 {it:target_opts} 是允许的：

{phang2}
{opt nolabel}
从图中删除默认目标观察标签。

{phang2}
{it:marker_options}
影响呈现在绘制点上绘制的标记的外观，包括其形状、大小、颜色和轮廓；请参见 {manhelpi marker_options G-3}。

{phang2}
{it:marker_label_options}
指定标记的标签是否以及如何标记；请参见
{manhelpi marker_label_options G-3}。

{phang}{opt sourceopts(source_opts)}
影响源图的呈现。以下 {it:source_opts} 是允许的：

{phang2}
{opt nolabel}
从图中删除默认源观察标签。

{phang2}
{it:marker_options}
影响呈现在绘制点上绘制的标记的外观，包括其形状、大小、颜色和轮廓；请参见 {manhelpi marker_options G-3}。

{phang2}
{it:marker_label_options}
指定标记的标签是否以及如何标记；请参见
{manhelpi marker_label_options G-3}。

{dlgtab:Y 轴，X 轴，标题，图例，总体}

{phang}
{it:twoway_options} 是任何记录在 
{manhelpi twoway_options G-3} 中的选项，除 {cmd:by()} 之外。这包括用于
为图形命名的选项（请参见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（请参见 {manhelpi saving_option G-3}）。
有关使用 {cmd:xlabel()}、{cmd:xscale()}、{cmd:ylabel()} 和 {cmd:yscale()} 等选项的警告，请参见上面的 {helpb procrustes postestimation##autoaspect:autoaspect}。

{dlgtab:按}

{phang}
{marker byopts}
{opt byopts(by_option)}
在 {manhelpi by_option G-3} 中记录。此选项影响组合图的外观，除非在 {cmd:procrustes} 中指定的目标变量超过两个，否则将被忽略。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse speed_survey}{p_end}
{phang2}{cmd:. procrustes (survey_x survey_y) (speed_x speed_y)}

{pstd}比较变换{p_end}
{phang2}{cmd:. estat compare}

{pstd}生成 Procrustes 重叠图{p_end}
{phang2}{cmd:. procoverlay}


{marker results}{...}
{title:存储结果}

{pstd}
在执行 {cmd:procrustes} 后，{cmd:estat compare} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(cstat)}}Procrustes 统计量、自由度和 RMSE{p_end}
{synopt:{cmd:r(fstat)}}F 统计量、自有度和 p 值{p_end}

{pstd}
{cmd:estat mvreg} 不返回结果。

{pstd}
在执行 {cmd:procrustes} 后，{cmd:estat summarize} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(stats)}}均值、标准差、最小值和最大值{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <procrustes_postestimation.sthlp>}