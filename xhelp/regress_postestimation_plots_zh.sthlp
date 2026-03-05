{smcl}
{* *! version 1.0.5  19oct2017}{...}
{viewerdialog acprplot "dialog acprplot"}{...}
{viewerdialog avplots "dialog avplot"}{...}
{viewerdialog cprplot "dialog cprplot"}{...}
{viewerdialog lvr2plot "dialog lvr2plot"}{...}
{viewerdialog rvfplot "dialog rvfplot"}{...}
{viewerdialog rvpplot "dialog rvpplot"}{...}
{vieweralsosee "[R] regress postestimation diagnostic plots" "mansection R regresspostestimationdiagnosticplots"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[R] regress postestimation" "help regress postestimation"}{...}
{vieweralsosee "[R] regress postestimation ts" "help regress postestimation ts"}{...}
{viewerjumpto "Description" "regress postestimation plots##description"}{...}
{viewerjumpto "Links to PDF documentation" "regress_postestimation_plots_zh##linkspdf"}{...}
{viewerjumpto "rvfplot" "regress postestimation plots##syntax_rvfplot"}{...}
{viewerjumpto "avplot" "regress postestimation plots##syntax_avplot"}{...}
{viewerjumpto "avplots" "regress postestimation plots##syntax_avplots"}{...}
{viewerjumpto "cprplot" "regress postestimation plots##syntax_cprplot"}{...}
{viewerjumpto "acprplot" "regress postestimation plots##syntax_acprplot"}{...}
{viewerjumpto "rvpplot" "regress postestimation plots##syntax_rvpplot"}{...}
{viewerjumpto "lvr2plot" "regress postestimation plots##syntax_lvr2plot"}{...}
{viewerjumpto "Examples" "regress postestimation plots##examples"}{...}
{viewerjumpto "Reference" "regress postestimation plots##reference"}
{help regress_postestimation_plots:English Version}
{hline}{...}
{p2colset 1 48 50 2}{...}
{p2col:{bf:[R] regress postestimation diagnostic plots} {hline 2}}回归后估计诊断图{p_end}
{p2col:}({mansection R regresspostestimationdiagnosticplots:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
以下回归后的估计命令在 {cmd:regress} 之后特别重要：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb regress postestimation plots##rvfplot:rvfplot}}残差-拟合图{p_end}
{synopt :{helpb regress postestimation plots##avplot:avplot}}增加变量图{p_end}
{synopt :{helpb regress postestimation plots##avplots:avplots}}一个图中的所有增加变量图{p_end}
{synopt :{helpb regress postestimation plots##cprplot:cprplot}}成分加残差图{p_end}
{synopt :{helpb regress postestimation plots##acprplot:acprplot}}增强成分加残差图{p_end}
{synopt :{helpb regress postestimation plots##rvpplot:rvpplot}}残差-自变量图{p_end}
{synopt :{helpb regress postestimation plots##lvr2plot:lvr2plot}}杠杆-平方残差图{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
这些命令在 {cmd:svy} 前缀后不适用。
{p_end}


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection R regresspostestimationdiagnosticplots方法和公式:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker rvfplot}{...}
{marker syntax_rvfplot}{...}
{title:rvfplot的语法}

{p 8 19 2}
{cmd:rvfplot} 
[{cmd:,} {it:rvfplot_options}]

{synoptset 23 tabbed}{...}
{synopthdr:rvfplot_options}
{synoptline}
{syntab:图}
包含帮助 gr_markopt

{syntab:增加图}
{synopt :{opth "addplot(addplot_option:plot)"}}将图添加到生成的图形{p_end}

{syntab:Y轴, X轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}除了 {opt by()} 外的任何选项，详见 {manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}


{title:rvfplot的菜单}

{phang}
{bf:统计 > 线性模型和相关 > 回归诊断 >}
        {bf:残差-拟合图}


{title:rvfplot的描述}

{pstd}
{opt rvfplot} 绘制残差-拟合图，即残差与拟合值的图形。


{title:rvfplot的选项}

{dlgtab:图}

包含帮助 gr_markoptf

{dlgtab:增加图}

{phang}
{opt addplot(plot)} 提供了一种将图添加到生成的图形的方法。  
请参见 {manhelpi addplot_option G-3}。

{dlgtab:Y轴, X轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 是任何在 {manhelpi twoway_options G-3} 中记录的选项，排除 {opt by()}。这些包括标题图形的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker avplot}{...}
{marker syntax_avplot}{...}
{title:avplot的语法}

{p 8 18 2}
{cmd:avplot} {it:{help indepvars:indepvar}} [{cmd:,} {it:avplot_options}]

{synoptset 25 tabbed}{...}
{synopthdr:avplot_options}
{synoptline}
{syntab:图}
包含帮助 gr_markopt

{syntab:参考线}
{synopt :{opth rlop:ts(cline_options)}}影响参考线的表现{p_end}

{syntab:增加图}
{synopt :{opth "addplot(addplot_option:plot)"}}将其他图添加到生成的图形{p_end}

{syntab:Y轴, X轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}除了 {opt by()} 外的任何选项，详见 {manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}


{title:avplot的菜单}

{phang}
{bf:统计 > 线性模型和相关 > 回归诊断 >}
      {bf:增加变量图}


{title:avplot的描述}

{pstd}
{opt avplot} 绘制增加变量图（又名部分回归杠杆图、部分回归图或调整的部分残差图）在 {cmd:regress} 之后。{it:indepvar} 可以是模型中当前变量或不在模型中的独立变量（又名预测变量、载体或协变量）。


{title:avplot的选项}

{dlgtab:图}

包含帮助 gr_markoptf

{dlgtab:参考线}

{phang}
{opt rlopts(cline_options)} 影响参考线的表现。请参见 {manhelpi cline_options G-3}。

{dlgtab:增加图}

{phang}
{opt addplot(plot)} 提供了一种将其他图添加到生成的图形的方法。请参见 {manhelpi addplot_option G-3}。

{dlgtab:Y轴, X轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 是任何在 {manhelpi twoway_options G-3} 中记录的选项，排除 {opt by()}。这些包括标题图形的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker avplots}{...}
{marker syntax_avplots}{...}
{title:avplots的语法}

{p 8 18 2}
{cmd:avplots} [{cmd:,} {it:avplots_options}]

{synoptset 25 tabbed}{...}
{synopthdr:avplots_options}
{synoptline}
{syntab:图}
包含帮助 gr_markopt
{synopt :{it:combine_options}}在 {helpb graph combine:[G-2] graph combine} 中记录的任何选项{p_end}

{syntab:参考线}
{synopt :{opth rlop:ts(cline_options)}}影响参考线的表现{p_end}

{syntab:Y轴, X轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}除了 {opt by()} 外的任何选项，详见 {manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}


{title:avplots的菜单}

{phang}
{bf:统计 > 线性模型和相关 > 回归诊断 >}
         {bf:增加变量图}


{title:avplots的描述}

{pstd}
{opt avplots} 绘制所有增加变量图在一幅图中。


{title:avplots的选项}

{dlgtab:图}

包含帮助 gr_markoptf

{phang}
{it:combine_options} 是任何在 {helpb graph combine:[G-2] graph combine} 中记录的选项。这些包括标题图形的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。

{dlgtab:参考线}

{phang}
{opt rlopts(cline_options)} 影响参考线的表现。请参见 {manhelpi cline_options G-3}。

{dlgtab:Y轴, X轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 是任何在 {manhelpi twoway_options G-3} 中记录的选项，排除 {opt by()}。这些包括标题图形的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker cprplot}{...}
{marker syntax_cprplot}{...}
{title:cprplot的语法}

{p 8 18 2}
{cmd:cprplot} {it:{help indepvars:indepvar}} 
[{cmd:,} {it:cprplot_options}]

{synoptset 27 tabbed}{...}
{synopthdr:cprplot_options}
{synoptline}
{syntab:图}
包含帮助 gr_markopt

{syntab:参考线}
{synopt :{opth rlop:ts(cline_options)}}影响参考线的表现{p_end}

{syntab:选项}
{synopt :{opt low:ess}}将低ess平滑添加到绘制的点{p_end}
{synopt :{opth lsop:ts(lowess:lowess_options)}}影响低ess平滑的表现{p_end}
{synopt :{opt msp:line}}将中位数样条添加到绘制的点{p_end}
{synopt :{opth msop:ts(twoway_mspline:mspline_option)}}影响样条的表现{p_end}

{syntab:增加图}
{synopt :{opth "addplot(addplot_option:plot)"}}将其他图添加到生成的图形{p_end}

{syntab:Y轴, X轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}除了 {opt by()} 外的任何选项，详见 {manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}


{title:cprplot的菜单}

{phang}
{bf:统计 > 线性模型和相关 > 回归诊断 >}
        {bf:成分加残差图}


{title:cprplot的描述}

{pstd}
{opt cprplot} 绘制成分加残差图（又名部分残差图）在 {cmd:regress} 之后。{it:indepvar} 必须是当前模型中的独立变量。 


{title:cprplot的选项}

{dlgtab:图}

包含帮助 gr_markoptf

{dlgtab:参考线}

{phang}
{opt rlopts(cline_options)} 影响参考线的表现。  
请参见 {manhelpi cline_options G-3}。

{dlgtab:选项}

{phang}
{opt lowess} 将低ess平滑添加到绘制的点以帮助检测非线性。

{phang}
{opt lsopts(lowess_options)} 影响低ess平滑的表现。有关这些选项的说明，特别是 {opt bwidth()} 选项，请参见 {manhelp lowess R}。指定 {opt lsopts()} 表示 {opt lowess} 选项。

{phang}
{opt mspline} 将中位数样条添加到绘制的点以帮助检测非线性。

{phang}
{opt msopts(mspline_options)} 影响样条的表现。有关这些选项的说明，尤其是 {opt bands()} 选项，请参见 {manhelp twoway_mspline G-2:graph twoway mspline}。指定 {opt msopts()} 表示 {opt mspline} 选项。

{dlgtab:增加图}

{phang}
{opt addplot(plot)} 提供了一种将其他图添加到生成的图形的方法。  
请参见 {manhelpi addplot_option G-3}。

{dlgtab:Y轴, X轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 是任何在 {manhelpi twoway_options G-3} 中记录的选项，排除 {opt by()}。这些包括标题图形的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker acprplot}{...}
{marker syntax_acprplot}{...}
{title:acprplot的语法}

{p 8 19 2}
{cmd:acprplot} {it:{help indepvars:indepvar}} [{cmd:,} {it:acprplot_options}]

{synoptset 27 tabbed}{...}
{synopthdr:acprplot_options}
{synoptline}
{syntab:图}
包含帮助 gr_markopt

{syntab:参考线}
{synopt :{opth rlop:ts(cline_options)}}影响参考线的表现{p_end}

{syntab:选项}
{synopt :{opt low:ess}}将低ess平滑添加到绘制的点{p_end}
{synopt :{opth lsop:ts(lowess:lowess_options)}}影响低ess平滑的表现{p_end}
{synopt :{opt msp:line}}将中位数样条添加到绘制的点{p_end}
{synopt :{opth msop:ts(twoway_mspline:mspline_options)}}影响样条的表现{p_end}

{syntab:增加图}
{synopt :{opth "addplot(addplot_option:plot)"}}将其他图添加到生成的图形{p_end}

{syntab:Y轴, X轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}除了 {opt by()} 外的任何选项，详见 {manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}


{title:acprplot的菜单}

{phang}
{bf:统计 > 线性模型和相关 > 回归诊断 >}
    {bf:增强成分加残差图}


{title:acprplot的描述}

{pstd}
{opt acprplot} 绘制增强成分加残差图（又名增强部分残差图），如 {help regress postestimation##M1986:Mallows (1986)} 所描述。这似乎比成分加残差图在识别数据中的非线性表现更好。


{title:acprplot的选项}

{dlgtab:图}

包含帮助 gr_markoptf

{dlgtab:参考线}

{phang}
{opt rlopts(cline_options)} 影响参考线的表现。  
请参见 {manhelpi cline_options G-3}。

{dlgtab:选项}

{phang}
{opt lowess} 将低ess平滑添加到绘制的点以帮助检测非线性。

{phang}
{opt lsopts(lowess_options)} 影响低ess平滑的表现。有关这些选项的说明，特别是 {opt bwidth()} 选项，请参见 {manhelp lowess R}。指定 {opt lsopts()} 表示 {opt lowess} 选项。

{phang}
{opt mspline} 将中位数样条添加到绘制的点以帮助检测非线性。

{phang}
{opt msopts(mspline_options)} 影响样条的表现。有关这些选项的说明，尤其是 {opt bands()} 选项，请参见 {manhelp twoway_mspline G-2:graph twoway mspline}。指定 {opt msopts()} 表示 {opt mspline} 选项。

{dlgtab:增加图}

{phang}
{opt addplot(plot)} 提供了一种将其他图添加到生成的图形的方法。  
请参见 {manhelpi addplot_option G-3}。

{dlgtab:Y轴, X轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 是任何在 {manhelpi twoway_options G-3} 中记录的选项，排除 {opt by()}。这些包括标题图形的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker rvpplot}{...}
{marker syntax_rvpplot}{...}
{title:rvpplot的语法}

{p 8 19 2}
{cmd:rvpplot} {it:{help indepvars:indepvar}}
[{cmd:,} {it:rvpplot_options}]

{synoptset 23 tabbed}{...}
{synopthdr:rvpplot_options}
{synoptline}
{syntab:图}
包含帮助 gr_markopt

{syntab:增加图}
{synopt :{opth "addplot(addplot_option:plot)"}}将图添加到生成的图形{p_end}

{syntab:Y轴, X轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}除了 {opt by()} 外的任何选项，详见 {manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}


{title:rvpplot的菜单}

{phang}
{bf:统计 > 线性模型和相关 > 回归诊断 >}
         {bf:残差-自变量图}


{title:rvpplot的描述}

{pstd}
{opt rvpplot} 绘制残差-自变量图（又名独立变量图或载体图），即残差与指定预测变量的图形。


{title:rvpplot的选项}

{dlgtab:图}

包含帮助 gr_markoptf

{dlgtab:增加图}

{phang}
{opt addplot(plot)} 提供了一种将图添加到生成的图形的方法。请参见 {manhelpi addplot_option G-3}。

{dlgtab:Y轴, X轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 是任何在 {manhelpi twoway_options G-3} 中记录的选项，排除 {opt by()}。这些包括标题图形的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker lvr2plot}{...}
{marker syntax_lvr2plot}{...}
{title:lvr2plot的语法}

{p 8 20 2}
{cmd:lvr2plot} 
[{cmd:,} {it:lvr2plot_options}]

{synoptset 24 tabbed}{...}
{synopthdr:lvr2plot_options}
{synoptline}
{syntab:图}
包含帮助 gr_markopt

{syntab:增加图}
{synopt :{opth "addplot(addplot_option:plot)"}}将其他图添加到生成的图形{p_end}

{syntab:Y轴, X轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}除了 {opt by()} 外的任何选项，详见 {manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}


{title:lvr2plot的菜单}

{phang}
{bf:统计 > 线性模型和相关 > 回归诊断 >}
        {bf:杠杆-平方残差图}


{title:lvr2plot的描述}

{pstd}
{opt lvr2plot} 绘制杠杆-平方残差图（又名 L-R 图）。


{title:lvr2plot的选项}

{dlgtab:图}

包含帮助 gr_markoptf

{dlgtab:增加图}

{phang}
{opt addplot(plot)} 提供了一种将其他图添加到生成的图形的方法。请参见 {manhelpi addplot_option G-3}。

{dlgtab:Y轴, X轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 是任何在 {manhelpi twoway_options G-3} 中记录的选项，排除 {opt by()}。这些包括标题图形的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker examples}{...}
{title:例子}

    {hline}
    设置
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. regress price weight foreign##c.mpg}{p_end}

{pstd}残差-拟合图{p_end}
{phang2}{cmd:. rvfplot, yline(10)}{p_end}

{pstd}增加变量图{p_end}
{phang2}{cmd:. avplot mpg}{p_end}

{pstd}每个回归者的增加变量图{p_end}
{phang2}{cmd:. avplots}{p_end}

    {hline}
    设置
{phang2}{cmd:. webuse auto1}{p_end}
{phang2}{cmd:. regress price mpg weight}{p_end}

{pstd}成分加残差图{p_end}
{phang2}{cmd:. cprplot mpg, mspline msopts(bands(13))}{p_end}

{pstd}增强成分加残差图{p_end}
{phang2}{cmd:. acprplot mpg, mspline msopts(bands(13))}{p_end}

{pstd}残差-自变量图{p_end}
{phang2}{cmd:. rvpplot mpg, yline(0)}{p_end}

    {hline}
    设置
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. regress price weight foreign##c.mpg}{p_end}

{pstd}杠杆-平方残差图{p_end}
{phang2}{cmd:. lvr2plot}{p_end}

{pstd}标准化残差{p_end}
{phang2}{cmd:. predict esta if e(sample), rstandard}{p_end}

{pstd}学生化残差{p_end}
{phang2}{cmd:. predict estu if e(sample), rstudent}{p_end}

    {hline}


{marker reference}{...}
{title:参考文献}

{marker M1986}{...}
{phang}
Mallows, C. L. 1986. 增强部分残差。{it:Technometrics} 28:
313-319.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <regress_postestimation_plots.sthlp>}