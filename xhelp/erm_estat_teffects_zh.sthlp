{smcl}
{* *! version 1.0.3  21mar2019}{...}
{viewerdialog "estat teffects" "dialog erm_estat"}{...}
{vieweralsosee "[ERM] estat teffects" "mansection ERM estatteffects"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] eintreg postestimation" "help eintreg postestimation"}{...}
{vieweralsosee "[ERM] eoprobit postestimation" "help eoprobit postestimation"}{...}
{vieweralsosee "[ERM] eprobit postestimation" "help eprobit postestimation"}{...}
{vieweralsosee "[ERM] eregress postestimation" "help eregress postestimation"}{...}
{viewerjumpto "Syntax" "erm_estat_teffects_zh##syntax"}{...}
{viewerjumpto "Menu" "erm_estat_teffects_zh##menu"}{...}
{viewerjumpto "Description" "erm_estat_teffects_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "erm_estat_teffects_zh##linkspdf"}{...}
{viewerjumpto "Options" "erm_estat_teffects_zh##options"}{...}
{viewerjumpto "Examples" "erm_estat_teffects_zh##examples"}{...}
{viewerjumpto "Stored results" "erm_estat_teffects_zh##results"}
{help erm_estat_teffects:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[ERM] estat teffects} {hline 2}}扩展回归模型的平均处理效应{p_end}
{p2col:}({mansection ERM estatteffects:查看完整的 PDF 手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:estat teffects}
[{cmd:,} {it:options}]

{synoptset 20}{...}
{synopthdr}
{synoptline}
{synopt :{opt ate}}估计平均处理效应；默认值{p_end}
{synopt :{opt atet}}估计对受处理者的平均处理效应{p_end}
{synopt :{opt pomean}}估计潜在结果均值{p_end}
{synopt :{opth tlevel(numlist)}}为指定处理水平计算处理效应或潜在结果均值{p_end}
{synopt :{opth outlevel(numlist)}}为指定的有序因变量水平计算处理效应或潜在结果均值{p_end}
{synopt :{opth subpop:(erm_estat_teffects##subspec:subspec)}}估计子群体{p_end}

{synopt :{opt level(#)}}设置信心水平；默认值为{cmd:level(95)}{p_end}
{synopt :{help erm_estat_teffects##display_options:{it:display_options}}}控制列和列格式、行间距、行宽和因子变量标签{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后期估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat teffects} 估计 ERM 的平均处理效应、对受处理者的平均处理效应和潜在结果均值。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ERM estatteffectsRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt ate} 估计平均处理效应 (ATE)。这是默认值。

{phang} 
{opt atet} 估计对受处理者的平均处理效应 (ATET)。对于二元处理，ATET 是对受处理者子群体报告的。对于有序处理，默认情况下，ATET 报告的是对第一个非控制处理组子群体的结果。您可以使用 {opt subpop()} 选项来计算不同处理组的 ATET。

{phang} 
{opt pomean} 估计潜在结果均值 (POM)。

{phang}
{opth tlevel(numlist)} 指定计算处理效应或 POM 的处理水平。默认情况下，处理效应是针对所有非控制处理水平计算的，POM 是针对所有处理水平计算的。

{phang}
{opth outlevel(numlist)} 指定计算处理效应或 POM 的有序因变量水平。默认情况下，处理效应或 POM 是针对所有有序因变量水平计算的。此选项仅在 {cmd:eoprobit} 和 {cmd:xteoprobit} 之后可用。

{marker subspec}{...}
{phang}
{cmd:subpop(}[{varname}] [{help if_zh:{it:if}}]{cmd:)} 
指定计算 ATE、ATET 和 POM 的子群体。子群体由指示变量、{cmd:if} 表达式或两者确定。0 表示排除观察，非零表示包括观察，缺失值表示视为不在总体内（因此被忽略）。例如，对于有序处理 {cmd:trtvar}，其级别为 1、2 和 3，您可以指定 {cmd:subpop(if trtvar==3)} 来获取 {cmd:trtvar} = 3 的 ATET。

{phang}
{opt level(#)} 指定置信区间的置信水平，以百分比表示。默认值为 {cmd:level(95)} 或通过 {helpb set level} 设置的值。

{marker display_options}{...}
{phang}
{it:display_options}:
{opt noci},
{opt nopvalues},
{opt vsquish},
{opt nofvlabel},
{opt fvwrap(#)},
{opt fvwrapon(style)},
{opth cformat(fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)}，以及
{opt nolstretch}。

{phang2}
{opt noci}
禁止在系数表中报告置信区间。

{phang2}
{opt nopvalues}
禁止在系数表中报告 p 值及其检验统计量。

{phang2}
{opt vsquish} 
指定抑制分隔因子变量项或时间序列操作变量与模型中其他变量之间的空白。

{phang2}
{opt nofvlabel} 显示因子变量级别值而不是附加的值标签。此选项覆盖 {cmd:fvlabel} 设置；参见 {helpb set showbaselevels:[R] set showbaselevels}。

{phang2}
{opt fvwrap(#)} 允许长值标签在系数表中换行前 {it:#} 行。此选项覆盖 {cmd:fvwrap} 设置；参见 {helpb set showbaselevels:[R] set showbaselevels}。

{phang2}
{opt fvwrapon(style)} 指定换行的值标签是否在单词边界处断开或基于可用空间断开。

{phang3}
{cmd:fvwrapon(word)}，默认值，指定值标签在单词边界处断开。

{phang3}
{cmd:fvwrapon(width)} 指定值标签基于可用空间断开。

{phang3}
此选项覆盖 {cmd:fvwrapon} 设置；参见 {helpb set showbaselevels:[R] set showbaselevels}。

{phang2}
{opt cformat(%fmt)} 指定如何在估计表中格式化估计值、标准误差和置信区间。最大格式宽度为 9。

{phang2}
{opt pformat(%fmt)} 指定如何在估计表中格式化 p 值。最大格式宽度为 5。

{phang2}
{opt sformat(%fmt)} 指定如何在估计表中格式化检验统计量。最大格式宽度为 8。

{phang2}
{opt nolstretch} 指定估计表的宽度不应自动扩展以适应较长的变量名称。默认值 {opt lstretch} 是自动扩展估计表的宽度以适应结果窗口的宽度。
要更改默认值，请使用 {opt set} {opt lstretch} {opt off}。
{opt nolstretch} 不会在对话框中显示。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}
{cmd:. webuse wageed}{p_end}
{phang2}
{cmd:. eregress wage c.age##c.age tenure, extreat(college) vce(robust)}

{pstd}
对受处理者的平均处理效应{p_end}
{phang2}
{cmd:. estat teffects, atet}

{pstd}
平均处理效应{p_end}
{phang2}
{cmd:. estat teffects}


{marker results}{...}
{title:储存结果}

{pstd}
{cmd:estat teffects} 在 {cmd:r()} 中存储以下结果：

{synoptset 16 tabbed}{...}
{p2col 5 16 20 2: 宏}{p_end}
{synopt :{cmd:r(vce)}}在 {cmd:vce()} 中指定的{it:vcetype}{p_end}
{synopt :{cmd:r(vcetype)}}用于标记 Std. Err. 的标题{p_end}
{synopt :{cmd:r(clustvar)}}聚类变量的名称{p_end}

{p2col 5 16 20 2: 矩阵}{p_end}
{synopt :{cmd:r(b)}}估计值{p_end}
{synopt :{cmd:r(V)}}估计值的方差协方差矩阵{p_end}
{synopt :{cmd:r(table)}}包含估计值及其标准误、检验统计量、p 值和置信区间的矩阵{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <erm_estat_teffects.sthlp>}