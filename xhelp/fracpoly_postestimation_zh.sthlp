{smcl}
{* *! version 1.1.16  19oct2012}{...}
{viewerdialog fracplot "dialog fracplot"}{...}
{viewerdialog fracpred "dialog fracpred"}{...}
{vieweralsosee "help prdocumented_zh" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] fracpoly" "help fracpoly_zh"}{...}
{viewerjumpto "Description" "fracpoly postestimation##description"}{...}
{viewerjumpto "Special-interest postestimation commands" "fracpoly postestimation##special"}{...}
{viewerjumpto "Syntax for predict" "fracpoly postestimation##syntax_predict"}{...}
{viewerjumpto "Syntax for fracplot and fracpred" "fracpoly postestimation##syntax_fracplot_fracpred"}{...}
{viewerjumpto "Menu for fracplot and fracpred" "fracpoly postestimation##menu_fracplot_fracpred"}{...}
{viewerjumpto "Options for fracplot" "fracpoly postestimation##options_fracplot"}{...}
{viewerjumpto "Options for fracpred" "fracpoly postestimation##options_fracpred"}{...}
{viewerjumpto "Examples" "fracpoly postestimation##examples"}
{help fracpoly_postestimation:English Version}
{hline}{...}
{pstd}
{cmd:fracpoly} 已被 {help fp_zh} 替代。虽然 {cmd:fracpoly} 仍然可以使用，但自 Stata 13 起，它不再是 Stata 的官方部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。

{hline}

{title:标题}

{p2colset 5 36 38 2}{...}
{p2col :{bf:[R] fracpoly postestimation} {hline 2}}fracpoly 的后估计工具{p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
以下后估计命令在 {opt fracpoly} 后特别有用：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb fracpoly postestimation##fracplot/fracpred:fracplot}}绘制数据及最近拟合的分数多项式模型的拟合{p_end}
{synopt :{helpb fracpoly postestimation##fracplot/fracpred:fracpred}}创建包含预测、偏差残差或拟合值标准误差的变量{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
如果在 {it:regression_cmd} 之后，还可以使用以下标准后估计命令：

{synoptset 17}{...}
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
{synopt :{helpb fracpoly postestimation##predict:predict}}预测、残差、影响统计及其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker special}{...}
{title:特别关注的后估计命令}

{pstd}
{opt fracplot} 绘制数据和拟合，以及最近拟合的分数多项式模型的 95% 置信区间。数据和拟合相对于 {varname} 绘制，{it:xvar1} 或其他协变量（{it:xvar2}，…，或 {it:xvarlist} 中的变量）均可。若未指定 {it:varname}，则假定为 {it:xvar1}。

{pstd}
{opt fracpred} 创建包含整个模型的拟合指数或偏差残差的新变量 {it:newvar}，或某个特定变量 {it:varname} 的拟合指数或其标准误差，该变量可以是 {it:xvar1} 或其他协变量。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{pstd}
在 {opt fracpoly} 后，{cmd:predict} 的行为由 {it:regression_cmd} 确定。请参见相应的 {it:regression_cmd} {bf:后估计} 条目，以获取可用的 {opt predict} 选项。

{pstd}
另请参见下面关于 {cmd:fracpred} 的信息。


{marker syntax_fracplot_fracpred}{...}
{marker fracplot/fracpred}{...}
{title:fracplot 和 fracpred 的语法}

{phang}
从最近拟合的分数多项式模型绘制数据和拟合

{p 8 17 2}
{cmd:fracplot}
[{varname}]
{ifin}
[{cmd:,}
{it:{help fracpoly postestimation##fracplot_options:fracplot_options}}]
{p_end}


{phang}
创建包含预测、偏差残差或拟合值标准误差的变量

{p 8 17 2}
{cmd:fracpred}
{newvar}
[{cmd:,}
{it:{help fracpoly postestimation##fracpred_options:fracpred_options}}]
{p_end}


{synoptset 25 tabbed}{...}
{marker fracplot_options}{...}
{synopthdr :fracplot_options}
{synoptline}
{syntab :绘图}
INCLUDE help gr_markopt2

{syntab :拟合线}
{synopt :{opth lineop:ts(cline_options)}}影响拟合线的呈现{p_end}

{syntab :置信区间图}
{synopt :{opth ciop:ts(area_options)}}影响置信带的呈现{p_end}

{syntab :添加绘图}
{synopt :{opth "addplot(addplot_option:plot)"}}将其他绘图添加到生成的图形中{p_end}

{syntab :Y 轴、X 轴、标题、图例、总体}
{synopt :{it:twoway_options}}在 {manhelpi twoway_options G-3} 中记录的任何选项，但不包括 {opt by()} {p_end}
{synoptline}
{p2colreset}{...}

{synoptset 25}{...}
{marker fracpred_options}{...}
{synopthdr :fracpred_options}
{synoptline}
{synopt :{opth f:or(varname)}}对变量 {it:varname} 进行（部分）预测{p_end}
{synopt :{opt d:resid}}计算偏差残差{p_end}
{synopt :{opt s:tdp}}计算拟合值 {varname} 的标准误差，考虑到使用 {opt center()} 选项指定的所有其他预测变量{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
在使用 {help fracpoly_zh} 或 {help mfp_zh} 时，针对 {opt clogit}、{opt mlogit} 或 {opt stcrreg} 的 {opt fracplot} 是不被允许的。针对 {opt fracpoly} 或 {cmd:mfp} 的 {opt fracpred, dresid} 也是不被允许的。
{p_end}


{marker menu_fracplot_fracpred}{...}
{title:fracplot 和 fracpred 的菜单}

    {title:fracplot}

{phang2}
{bf:统计 > 线性模型及相关 > 分数多项式 >}
      {bf:分数多项式回归图}

    {title:fracpred}

{phang2}
{bf:统计 > 线性模型及相关 > 分数多项式 >}
       {bf:分数多项式预测}


{marker options_fracplot}{...}
{title:fracplot 的选项}

{dlgtab:绘图}

INCLUDE help gr_markoptf

{dlgtab:拟合线}

{phang}
{opt lineopts(cline_options)} 影响拟合线的呈现；参见 {manhelpi cline_options G-3}。

{dlgtab:置信区间图}

{phang}
{opt ciopts(area_options)} 影响置信带的呈现；参见 {manhelpi area_options G-3}。

{dlgtab:添加绘图}

{phang}
{opt addplot(plot)} 提供了一种将其他绘图添加到生成图形中的方式。请参见 {manhelpi addplot_option G-3}。

{dlgtab:Y 轴、X 轴、标题、图例、总体}

{phang}
{it:twoway_options} 是 {manhelpi twoway_options G-3} 中记录的任何选项，但不包括 {opt by()}。这包括图形的标题选项（参见 {manhelpi title_options G-3}）以及将图形保存到磁盘的选项（参见 {manhelpi saving_option G-3}）。


{marker options_fracpred}{...}
{title:fracpred 的选项}

{phang}
{opth for(varname)} 指定变量 {it:varname} 的（部分）预测。拟合值根据 {opt fracpoly} 中 {opt center()} 选项指定的值进行调整。

{phang}
{opt dresid} 指定计算偏差残差。

{phang}
{opt stdp} 指定计算拟合值 {varname} 的标准误差，调整考虑所有其他预测变量在 {opt center()} 指定的值下的影响。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. fracpoly: logit foreign mpg displ weight, compare degree(1)}{p_end}

{pstd}绘制拟合值与 {cmd:mpg} 的关系{p_end}
{phang2}{cmd:. fracplot}{p_end}

{pstd}设置{p_end}
{phang2}{cmd:. fracpoly: regress mpg weight -2 displ -1}{p_end}

{pstd}预测 {cmd:weight} 的拟合指数{p_end}
{phang2}{cmd:. fracpred wfit, for(weight)}{p_end}

{pstd}预测 {cmd:displ} 的拟合指数{p_end}
{phang2}{cmd:. fracpred dfit, for(displ)}{p_end}

{pstd}预测偏差残差{p_end}
{phang2}{cmd:. fracpred dr, dresid}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fracpoly_postestimation.sthlp>}