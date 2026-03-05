{smcl}
{* *! version 1.2.4  19oct2017}{...}
{viewerdialog fracplot "dialog fracplot"}{...}
{viewerdialog fracpred "dialog fracpred"}{...}
{vieweralsosee "[R] mfp postestimation" "mansection R mfppostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] mfp" "help mfp_zh"}{...}
{viewerjumpto "后期估计命令" "mfp postestimation##description"}{...}
{viewerjumpto "链接到 PDF 文档" "mfp_postestimation_zh##linkspdf"}{...}
{viewerjumpto "fracplot 和 fracpred" "mfp postestimation##syntax_fracplot_fracpred"}{...}
{viewerjumpto "示例" "mfp postestimation##examples"}
{help mfp_postestimation:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[R] mfp postestimation} {hline 2}}mfp 的后期估计工具{p_end}
{p2col:}({mansection R mfppostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后期估计命令}

{pstd}
以下后期估计命令在 {cmd:mfp} 之后尤为重要：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb mfp postestimation##fracplot/fracpred:fracplot}}绘制来自最近拟合的分数多项式模型的数据和拟合{p_end}
{synopt :{helpb mfp postestimation##fracplot/fracpred:fracpred}}创建包含预测值、偏差残差或拟合值标准误的变量{p_end}
{synoptline}

{pstd}
如果可用，还可以在 {it:regression_cmd} 之后使用以下标准后期估计命令：

{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_lincom
INCLUDE help post_linktest
INCLUDE help post_lrtest
INCLUDE help post_nlcom
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection R mfppostestimationRemarksandexamples:备注和示例}

        {mansection R mfppostestimationMethodsandformulas:方法和公式}

{pstd}
上述章节不包含在此帮助文件中。


{marker syntax_fracplot_fracpred}{...}
{marker fracplot/fracpred}{...}
{title:fracplot 和 fracpred 的语法}

{phang}
从最近拟合的分数多项式模型中绘制数据和拟合

{p 8 17 2}
{cmd:fracplot}
[{varname}]
{ifin}
[{cmd:,}
{it:{help mfp postestimation##fracplot_options:fracplot_options}}]
{p_end}


{phang}
创建包含预测、偏差残差或拟合值标准误的变量

{p 8 17 2}
{cmd:fracpred}
{newvar}
[{cmd:,}
{it:{help mfp postestimation##fracpred_options:fracpred_options}}]
{p_end}


{synoptset 25 tabbed}{...}
{marker fracplot_options}{...}
{synopthdr :fracplot_options}
{synoptline}
{syntab :绘图}
INCLUDE help gr_markopt2

{syntab :拟合线}
{synopt :{opth lineop:ts(cline_options)}}影响拟合线的显示{p_end}

{syntab :置信区间图}
{synopt :{opth ciop:ts(area_options)}}影响置信带的显示{p_end}

{syntab :添加图形}
{synopt :{opth "addplot(addplot_option:plot)"}}向生成的图形中添加其他图形{p_end}

{syntab :Y 轴, X 轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}除 {opt by()} 外，在 {manhelpi twoway_options G-3} 文档中的任何选项{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 25}{...}
{marker fracpred_options}{...}
{synopthdr :fracpred_options}
{synoptline}
{synopt :{opth f:or(varname)}}为 {it:varname} 计算预测值{p_end}
{synopt :{opt d:resid}}计算偏差残差{p_end}
{synopt :{opt s:tdp}}计算拟合值 {varname} 的标准误
{varname}{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
{opt fracplot} 在使用 {opt clogit}、{opt mlogit} 或 {opt stcrreg} 时，不允许在 {help mfp_zh} 之后使用。 {opt fracpred, dresid} 在使用 {cmd:mfp} 搭配 {opt clogit}、{opt mlogit} 或 {cmd:stcrreg} 时也不允许。
{p_end}


{marker menu_fracplot_fracpred}{...}
{title:fracplot 和 fracpred 的菜单}

    {title:fracplot}

{phang2}
{bf:统计 > 线性模型及相关 > 分数多项式 >}
      {bf:多变量分数多项式图}

    {title:fracpred}

{phang2}
{bf:统计 > 线性模型及相关 > 分数多项式 >}
       {bf:多变量分数多项式预测}


{marker des_frac}{...}
{title:fracplot 和 fracpred 的描述}

{pstd}
{opt fracplot} 绘制数据和拟合，并带有 95% 置信限，来自最近拟合的分数多项式模型。数据和拟合是相对于 {varname} 绘制的，{it:xvar1} 或其他协变量（{it:xvar2}，...，或 {it:xvarlist} 中的变量）。如果没有指定 {it:varname}，则假定为 {it:xvar1}。

{pstd}
{opt fracpred} 创建一个包含整个模型的拟合索引或偏差残差的 {it:newvar}，或者为 {it:varname} 计算拟合索引或其标准误，{it:varname} 可为 {it:xvar1} 或其他协变量。


{marker options_fracplot}{...}
{title:fracplot 的选项}

{dlgtab:绘图}

INCLUDE help gr_markoptf

{dlgtab:拟合线}

{phang}
{opt lineopts(cline_options)} 影响拟合线的显示；详见 {manhelpi cline_options G-3}。

{dlgtab:置信区间图}

{phang}
{opt ciopts(area_options)} 影响置信带的显示；详见 {manhelpi area_options G-3}。  

{dlgtab:添加图形}

{phang}
{opt addplot(plot)} 允许向生成的图形中添加其他图形。详见 {manhelpi addplot_option G-3}。

{dlgtab:Y 轴, X 轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 文档中记录的任何选项，不包括 {opt by()}。这些选项包括图形标题（参见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（参见 {manhelpi saving_option G-3}）.


{marker options_fracpred}{...}
{title:fracpred 的选项}

{phang}
{opth for(varname)} 指定 {it:varname} 的（部分）预测值。拟合值根据 {opt center()} 选项所指定的值进行调整。

{phang}
{opt dresid} 指定计算偏差残差。

{phang}
{opt stdp} 指定计算拟合值 {varname} 的标准误，依据 {opt center()} 所指定的所有其他预测值进行调整。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. mfp: regress mpg weight displacement foreign}{p_end}

{pstd}绘制关于 {cmd:displacement} 的数据和拟合{p_end}
{phang2}{cmd:. fracplot displacement}{p_end}

{pstd}创建新变量 {cmd:dfit}，包含 {cmd:displacement} 的部分预测{p_end}
{phang2}{cmd:. fracpred dfit, for(displacement)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mfp_postestimation.sthlp>}