{smcl}
{* *! version 1.0.7  04jun2018}{...}
{viewerdialog predict "dialog stintreg_p"}{...}
{viewerdialog stcurve "dialog stcurve"}{...}
{viewerdialog estat "dialog stintreg_estat"}{...}
{vieweralsosee "[ST] stintreg postestimation" "mansection ST stintregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stcurve" "help stcurve_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stintreg" "help stintreg_zh"}{...}
{viewerjumpto "Postestimation commands" "stintreg postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "stintreg_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "stintreg postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "stintreg postestimation##syntax_margins"}{...}
{viewerjumpto "estat gofplot" "stintreg postestimation##syntax_gofplot"}{...}
{viewerjumpto "Examples" "stintreg postestimation##examples"}
{help stintreg_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[ST] stintreg postestimation} {hline 2}}stintreg的后期估计工具{p_end}
{p2col:}({mansection ST stintregpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后期估计命令}

{pstd}
在{cmd:stintreg}之后，以下后期估计命令特别重要：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb stintreg_postestimation##gofplot:estat gofplot}}生成拟合优度图{p_end}
{synopt :{help stcurve_zh}}绘制生存、风险和累积风险函数{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后期估计命令也可用：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含帮助 post_contrast
包含帮助 post_estatic
包含帮助 post_estatsum
包含帮助 post_estatvce
包含帮助 post_svy_estat
包含帮助 post_estimates
包含帮助 post_hausman_star
包含帮助 post_lincom
包含帮助 post_lrtest_star
{synopt:{helpb stintreg_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包含帮助 post_marginsplot
包含帮助 post_nlcom
{p2col :{helpb stintreg postestimation##predict:predict}}预测、残差、影响统计量和其他诊断措施{p_end}
包含帮助 post_predictnl
包含帮助 post_pwcompare
包含帮助 post_suest
包含帮助 post_test
包含帮助 post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:hausman}和{cmd:lrtest}不适用于{cmd:svy}估计结果。{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ST stintregpostestimationRemarksandexamples:备注和示例}

        {mansection ST stintregpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic}
   {help stintreg_postestimation##synopts:{it:options}}]

{p 8 16 2}
{cmd:predict} {dtype} {help newvar_zh:newvar_l} {help newvar_zh:newvar_u}
{ifin} {cmd:,} {it:{help stintreg_postestimation##statistic2:statistic2}}
   [{help stintreg_postestimation##synopts:{it:options}}]

{p 8 16 2}
{cmd:predict} {dtype} {c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help newvarlist_zh}}{c )-}
{ifin}{cmd:,} {opt sc:ores}

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab:主要}
{synopt :{opt med:ian} {opt time}}中位生存时间；默认值{p_end}
{synopt :{opt med:ian} {opt lnt:ime}}中位数ln(生存时间){p_end}
{synopt :{opt mean time}}均值生存时间{p_end}
{synopt :{opt mean} {opt lnt:ime}}均值ln(生存时间){p_end}
{synopt :{opt hr}}风险比，也称为相对风险{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误差；SE(xb){p_end}
{p2coldent :* {opt mg:ale}}马丁格尔型残差{p_end}
{synoptline}
{p2colreset}{...}

{marker statistic2}{...}
{synoptset 17 tabbed}{...}
{synopthdr :statistic2}
{synoptline}
{syntab:主要}
{synopt :{opt ha:zard}}间隔端点{it:ltime}和{it:rtime}的风险{p_end}
{synopt :{opt s:urv}}间隔端点{it:ltime}和{it:rtime}的生存概率{p_end}
{p2coldent :* {opt csn:ell}}Cox-Snell残差，适用于间隔端点{it:ltime}和{it:rtime} {p_end}
{synoptline}
{p2colreset}{...}

{marker synopts}{...}
{synoptset 17}{...}
{synopthdr :选项}
{synoptline}
{syntab:主要}
{synopt :{opt nooff:set}}忽略在{cmd:stintreg}中指定的{cmd:offset()}变量{p_end}
{synopt :{opt oos}}使得{it:statistic}和{it:statistic2}在样本内外均可用{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
未加星号的统计量在样本内外均可得；如果仅希望用于估计样本，请键入{cmd:predict} {it:...} {cmd:if e(sample)} {it:...}。带有星号的统计量默认仅为估计样本计算，但{opt oos}选项使它们在样本内外均可得。{p_end}
{p 4 6 2}
预测的风险比选项{opt hr}仅在指数、韦布尔和Gompertz模型中可用。{opt mean} {opt time}和{opt mean lntime}选项在Gompertz模型中不可用。{p_end}
{p 4 6 2}
{opt csnell}和{opt mgale}不允许与{cmd:svy}估计结果一起使用。{p_end}


包含帮助 menu_predict


{marker des_predict}{...}
{title:预测说明}

{pstd}
{cmd:predict}创建一个新的变量，包含预测值，如中位数和均值生存时间、风险、风险比、线性预测、标准误差、概率、Cox-Snell和马丁格尔型残差。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主要}

{phang}
{opt median time}计算预测的中位生存时间，以分析时间单位表示。当未指定选项时，{cmd:predict}将为所有模型计算预测的中位生存时间。

{phang}
{opt median lntime}计算{opt median time}所产生的自然对数。

{phang}
{opt mean time}计算预测的均值生存时间，以分析时间单位表示。该选项在Gompertz回归中不可用。

{phang}
{opt mean lntime}预测{opt time}的自然对数均值。该选项在Gompertz回归中不可用。

{phang}
{opt hazard}计算下限{it:ltime}和上限{it:rtime}的预测风险。

{phang}
{opt hr}计算风险比。该选项仅对具有比例风险参数化的模型有效。

{phang}
{opt xb}计算拟合模型的线性预测。即，你通过估计一组参数b0, b1, b2, ..., bk来拟合模型，线性预测为y = xb。

{pmore}
用于计算的x来自当前内存中的数据，且不需要与用于估计b的独立变量数据对应。

{phang}
{opt stdp}计算预测的标准误差，即y的标准误差。

{phang}
{opt surv}计算每个观测值的预测生存概率，适用于下限{it:ltime}和上限{it:rtime}的时间间隔。

{phang}
{opt csnell}计算下限{it:ltime}和上限{it:rtime}的Cox-Snell残差。

{phang}
{opt mgale}计算区间截尾的马丁格尔型残差，为右截尾数据的马丁格尔型残差的区间截尾版本。

{phang}
{opt nooffset}仅在你在{opth offset(varname)}中指定了{opt stintreg}时相关。它修改{opt predict}的计算，使其忽略偏移变量；线性预测被视为xb而不是xb + offset。

{phang}
{opt oos}使得{opt csnell}和{opt mgale}在样本内外均可用。{opt oos}还决定求和和其他累积的发生是在由{cmd:if}和{cmd:in}定义的样本中进行。默认情况下，求和在估计样本上进行，{cmd:if}和{cmd:in}仅决定在计算完成后应填入哪些{newvar}、{it:newvar_l}和{it:newvar_u}的值。

{phang}
{opt scores}计算方程级别的评分变量。创建的评分变量数量取决于所选分布。

{pmore}
第一个新变量将始终包含相对于拟合模型的线性预测（回归方程）的对数似然的偏导数。

{pmore}
后续的新变量将包含相对于附加参数的对数似然的偏导数。


包含帮助 syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt med:ian} {opt time}}中位生存时间；默认值{p_end}
{synopt :{opt med:ian} {opt lnt:ime}}中位数ln(生存时间){p_end}
{synopt :{opt mean time}}均值生存时间{p_end}
{synopt :{opt mean} {opt lnt:ime}}均值ln(生存时间){p_end}
{synopt :{opt hr}}风险比，也称为相对风险{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}与{cmd:margins}不兼容{p_end}
{synopt :{opt ha:zard}}与{cmd:margins}不兼容{p_end}
{synopt :{opt s:urv}}与{cmd:margins}不兼容{p_end}
{synopt :{opt csn:ell}}与{cmd:margins}不兼容{p_end}
{synopt :{opt mg:ale}}与{cmd:margins}不兼容{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
风险估计不允许，因为它产生区间估计。

包含帮助 notes_margins


包含帮助 menu_margins


{marker des_margins}{...}
{title:margins的描述}

{pstd}
{cmd:margins}估计中位和均值生存时间、风险比和线性预测的响应边际。


{marker syntax_gofplot}{...}
{marker gofplot}{...}
{title:estat gofplot的语法}

{p 8 16 2}
{cmd:estat gofplot} [{cmd:,} {it:options}]

{synoptset 34 tabbed}{...}
{synopthdr}
{synoptline}
{synopt :{cmdab:out:file:(}{it:{help filename_zh}}[{cmd:,} {opt replace}]{cmd:)}}保存绘制拟合优度图所使用的值{p_end}

{syntab:图形}
{synopt :{it:{help connect_options_zh:connect_options}}}影响绘制的累积风险函数的呈现{p_end}

{syntab:参考线}
{synopt :{opth rlop:ts(cline_options)}}影响参考线的呈现{p_end}

{syntab:添加绘图}
{synopt :{opth "addplot(addplot_option:plot)"}}向生成的图形中添加其他图形{p_end}

{syntab:Y轴、X轴、标题、图例、整体}
{synopt :{it:twoway_options}}任何未在{opt by()}中记录的选项，见{manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}


包含帮助 menu_estat


{marker des_gofplot}{...}
{title:estat gofplot的描述}

{pstd}
{cmd:estat gofplot}绘制Cox-Snell残差与相应的累积风险函数，以目视评估模型的拟合优度。


{marker options_gofplot}{...}
{title:estat gofplot的选项}

{phang}
{cmd:outfile(}{it:{help filename_zh}}[{cmd:,} {opt replace}]{cmd:)}保存到{it:filename}{cmd:.dta}中，以绘制拟合优度图所使用的值。

{dlgtab:图形}

{phang}
{it:connect_options}影响绘制的累积风险函数的呈现；见{manhelpi connect_options G-3}。

{dlgtab:参考线}

{phang}
{opt rlopts(cline_options)}影响参考线的呈现；见{manhelpi cline_options G-3}。

{dlgtab:添加绘图}

{phang}
{opt addplot(plot)}提供一种方式向生成的图形中添加其他图形；见{manhelpi addplot_option G-3}。

{dlgtab:Y轴、X轴、标题、图例、整体}

{phang}
{it:twoway_options}是记录在{manhelpi twoway_options G-3}中的选项，排除{opt by()}。这些包括图形标题的选项（见{manhelpi title_options G-3}）和将图形保存到磁盘的选项（见{manhelpi saving_option G-3}）。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse cosmesis}

{pstd}拟合韦布尔生存模型{p_end}
{phang2}{cmd:. stintreg i.treat, distribution(weibull) interval(ltime rtime)}

{pstd}预测中位生存时间{p_end}
{phang2}{cmd:. predict time, time}

{pstd}预测对数中位生存时间{p_end}
{phang2}{cmd:. predict lntime, lntime}

{pstd}预测调整后的Cox-Snell残差{p_end}
{phang2}{cmd:. predict double cs, csnell adjusted}

{pstd}预测马丁格尔型残差{p_end}
{phang2}{cmd:. predict double mg, mgale}{p_end}

{pstd}图形化测试模型的拟合优度{p_end}
{phang2}{cmd:. estat gofplot}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stintreg_postestimation.sthlp>}