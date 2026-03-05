{smcl}
{* *! version 1.1.7  19oct2017}{...}
{viewerdialog "icc" "dialog icc"}{...}
{vieweralsosee "[R] icc" "mansection R icc"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] alpha" "help alpha_zh"}{...}
{vieweralsosee "[R] anova" "help anova_zh"}{...}
{vieweralsosee "[R] correlate" "help correlate_zh"}{...}
{vieweralsosee "[R] loneway" "help loneway_zh"}{...}
{viewerjumpto "Syntax" "icc_zh##syntax"}{...}
{viewerjumpto "Menu" "icc_zh##menu"}{...}
{viewerjumpto "Description" "icc_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "icc_zh##linkspdf"}{...}
{viewerjumpto "Options for one-way RE model" "icc_zh##options_oneway"}{...}
{viewerjumpto "Options for two-way RE and ME model" "icc_zh##options_twoway"}{...}
{viewerjumpto "Examples" "icc_zh##examples"}{...}
{viewerjumpto "Stored results" "icc_zh##results"}
{help icc:English Version}
{hline}{...}
{p2colset 1 12 12 2}{...}
{p2col:{bf:[R] icc} {hline 2}}类内相关系数{p_end}
{p2col:}({mansection R icc:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
计算单向随机效应模型的类内相关系数

{p 8 16 2}
{cmd:icc} {depvar} {it:{help varname_zh:target}} {ifin} [{cmd:,}
    {help icc##oneway_options:{it:oneway_options}}]


{pstd}
计算双向随机效应模型的类内相关系数

{p 8 16 2}
{cmd:icc} {depvar} {it:{help varname_zh:target}} {it:{help varname_zh:rater}}
     {ifin} [{cmd:,} 
     {help icc##twoway_re_options:{it:twoway_re_options}}]


{pstd}
计算双向混合效应模型的类内相关系数

{p 8 16 2}
{cmd:icc} {depvar} {it:{help varname_zh:target}} {it:{help varname_zh:rater}}
     {ifin}{cmd:,} {cmd:mixed}
     [{help icc##twoway_me_options:{it:twoway_me_options}}]


{marker oneway_options}{...}
{synoptset 22 tabbed}{...}
{synopthdr:单向选项}
{synoptline}
{syntab:主要}
{synopt:{opt abs:olute}}估计绝对一致性；默认值{p_end}
{synopt:{opt testval:ue(#)}}检验类内相关系数是否等于 {it:#}； 
    默认值为 {cmd:testvalue(0)}{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt:{opt f:ormat}{cmd:(%}{it:{help format_zh:fmt}}{cmd:)}}统计量和置信区间的显示格式；默认值为 {cmd:format(%9.0g)}
{p_end}
{synoptline}
{p2colreset}{...}


{marker twoway_re_options}{...}
{synoptset 22 tabbed}{...}
{synopthdr:双向 RE 选项}
{synoptline}
{syntab:主要}
{synopt:{opt abs:olute}}估计绝对一致性；默认值{p_end}
{synopt:{opt cons:istency}}估计一致性{p_end}
{synopt:{opt testval:ue(#)}}检验类内相关系数是否等于 {it:#}； 
    默认值为 {cmd:testvalue(0)}{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt:{opt f:ormat}{cmd:(%}{it:{help format_zh:fmt}}{cmd:)}}统计量和置信区间的显示格式；默认值为 {cmd:format(%9.0g)}
{p_end}
{synoptline}
{p2colreset}{...}


{marker twoway_me_options}{...}
{synoptset 22 tabbed}{...}
{synopthdr:双向 ME 选项}
{synoptline}
{syntab:主要}
{p2coldent:* {opt mixed}}估计混合效应模型的类内相关系数{p_end}
{synopt:{opt cons:istency}}估计一致性；默认值{p_end}
{synopt:{opt abs:olute}}估计绝对一致性{p_end}
{synopt:{opt testval:ue(#)}}检验类内相关系数是否等于 {it:#}； 
    默认值为 {cmd:testvalue(0)}{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt:{opt f:ormat}{cmd:(%}{it:{help format_zh:fmt}}{cmd:)}}统计量和置信区间的显示格式；默认值为 {cmd:format(%9.0g)}
{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt mixed} 是必需的。{p_end}


{p 4 6 2}{cmd:bootstrap}、{cmd:by}、{cmd:jackknife} 和 {cmd:statsby} 是允许使用的；请参见 {help prefix_zh}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 汇总、表格和检验 >}
     {bf:汇总和描述性统计 > 类内相关系数}


{marker description}{...}
{title:描述}

{pstd}
{opt icc} 估计单向随机效应模型、双向随机效应模型或双向混合效应模型的类内相关系数，用于个体和平均测量。可以估计测量的一致性或绝对一致性的类内相关系数。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R iccQuickstart:快速开始}

        {mansection R iccRemarksandexamples:备注和示例}

        {mansection R iccMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options_oneway}{...}
{title:单向 RE 模型的选项}

{dlgtab:主要}

{phang} 
{opt absolute} 指定估计测量的绝对一致性的类内相关系数。这是随机效应模型的默认值。

{phang}
{opt testvalue(#)} 检验类内相关系数是否等于 {it:#}。默认值为 {cmd:testvalue(0)}。

{dlgtab:报告}

{phang}
{opt level(#)} 指定置信水平，以百分比形式给出，用于置信区间。默认值为 {cmd:level(95)} 或由 {helpb set level} 设置的值。

{phang}
{cmd:format(%}{it:{help format_zh:fmt}}{cmd:)} 指定类内相关系数估计和置信区间的格式。默认值为 {cmd:format(%9.0g)}。


{marker options_twoway}{...}
{title:双向 RE 和 ME 模型的选项}

{dlgtab:主要}

{phang}
{opt mixed} 是计算双向混合效应模型所必需的。
{opt mixed} 指定估计混合效应模型的类内相关系数。 

{phang} 
{opt absolute} 指定估计测量的绝对一致性的类内相关系数。 这是随机效应模型的默认值。只能指定 {cmd:absolute} 或 {cmd:consistency} 之一。

{phang} 
{opt consistency} 指定估计测量的一致性。 这是混合效应模型的默认值。只能指定 {cmd:absolute} 或 {cmd:consistency} 之一。

{phang}
{opt testvalue(#)} 检验类内相关系数是否等于 {it:#}。
默认值为 {cmd:testvalue(0)}。

{dlgtab:报告}

{phang}
{opt level(#)} 指定置信水平，以百分比形式给出，用于置信区间。默认值为 {cmd:level(95)} 或由 {helpb set level} 设置的值。

{phang}
{cmd:format(%}{it:{help format_zh:fmt}}{cmd:)} 指定类内相关系数估计和置信区间的格式。默认值为 {cmd:format(%9.0g)}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse judges}{p_end}

{pstd} 计算单向随机效应模型的 ICC{p_end}
{phang2}{cmd:. icc rating target}{p_end}

{pstd} 同上，但检验 ICC 是否等于 0.5{p_end}
{phang2}{cmd:. icc rating target, testvalue(.5)}{p_end}

{pstd} 计算双向随机效应模型的 ICC{p_end}
{phang2}{cmd:. icc rating target judge}{p_end}

{pstd} 同上，但估计一致性{p_end}
{phang2}{cmd:. icc rating target judge, consistency}{p_end}

{pstd}计算双向混合效应模型的 ICC{p_end}
{phang2}{cmd:. icc rating target judge, mixed}{p_end}

{pstd}同上，但估计绝对一致性{p_end}
{phang2}{cmd:. icc rating target judge, mixed absolute}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:icc} 将以下结果存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N_target)}}目标数量{p_end}
{synopt:{cmd:r(N_rater)}}评估者数量{p_end}
{synopt:{cmd:r(icc_i)}}个体测量的类内相关系数{p_end}
{synopt:{cmd:r(icc_i_F)}}个体 ICC 的 F 检验统计量{p_end}
{synopt:{cmd:r(icc_i_df1)}}{cmd:r(icc_i_F)} 的分子自由度{p_end}
{synopt:{cmd:r(icc_i_df2)}}{cmd:r(icc_i_F)} 的分母自由度{p_end}
{synopt:{cmd:r(icc_i_p)}}个体 ICC 的 F 检验的 p 值{p_end}
{synopt:{cmd:r(icc_i_lb)}}个体 ICC 置信区间的下限{p_end}
{synopt:{cmd:r(icc_i_ub)}}个体 ICC 置信区间的上限{p_end}
{synopt:{cmd:r(icc_avg)}}平均测量的类内相关系数{p_end}
{synopt:{cmd:r(icc_avg_F)}}平均 ICC 的 F 检验统计量{p_end}
{synopt:{cmd:r(icc_avg_df1)}}{cmd:r(icc_avg_F)} 的分子自由度{p_end}
{synopt:{cmd:r(icc_avg_df2)}}{cmd:r(icc_avg_F)} 的分母自由度{p_end}
{synopt:{cmd:r(icc_avg_p)}}平均 ICC 的 F 检验的 p 值{p_end}
{synopt:{cmd:r(icc_avg_lb)}}平均 ICC 置信区间的下限{p_end}
{synopt:{cmd:r(icc_avg_ub)}}平均 ICC 置信区间的上限{p_end}
{synopt:{cmd:r(testvalue)}}原假设值{p_end}
{synopt:{cmd:r(level)}}置信水平{p_end}
{p2colreset}{...}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(model)}}方差分析模型{p_end}
{synopt:{cmd:r(depvar)}}因变量名称{p_end}
{synopt:{cmd:r(target)}}目标变量{p_end}
{synopt:{cmd:r(rater)}}评估者变量{p_end}
{synopt:{cmd:r(type)}}估计的 ICC 类型 
({cmd:absolute} 或 {cmd:consistency}){p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <icc.sthlp>}