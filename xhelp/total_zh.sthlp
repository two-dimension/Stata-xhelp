{smcl}
{* *! version 1.1.25  23jan2019}{...}
{viewerdialog total "dialog total"}{...}
{viewerdialog "svy: total" "dialog total, message(-svy-) name(svy_total)"}{...}
{vieweralsosee "[R] total" "mansection R total"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] total postestimation" "help total postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] mean" "help mean_zh"}{...}
{vieweralsosee "[R] proportion" "help proportion_zh"}{...}
{vieweralsosee "[R] ratio" "help ratio_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Estimation" "help mi_estimation_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{viewerjumpto "Syntax" "total_zh##syntax"}{...}
{viewerjumpto "Menu" "total_zh##menu"}{...}
{viewerjumpto "Description" "total_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "total_zh##linkspdf"}{...}
{viewerjumpto "Options" "total_zh##options"}{...}
{viewerjumpto "Example" "total_zh##example"}{...}
{viewerjumpto "Stored results" "total_zh##results"}
{help total:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] total} {hline 2}}估计总数{p_end}
{p2col:}({mansection R total:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:total} {varlist} {if in}
[{it:{help total##weight:权重}}]
[{cmd:,} {it:选项}]


{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:if/in/over}
{synopt :{cmd:over(}{it:{help varlist_zh:varlist_o}}{cmd:)}}按照
{it:varlist_o} 定义的子种群进行分组计算
{p_end}

{syntab:SE/Cluster}
{synopt :{opth vce(vcetype)}}{it:vcetype}
可以是 {opt analytic}、{opt cl:uster} {it:clustvar}、{opt boot:strap} 或
{opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置信心水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt noh:eader}}抑制表头{p_end}
{synopt :{it:{help total##display_options:显示选项}}}控制
列格式、行宽、是否显示省略的变量以及基数和空单元格，以及因子变量标记{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:varlist} 可以包含因子变量；请参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{cmd:bootstrap}、{cmd:jackknife}、{cmd:mi estimate}、{cmd:rolling}、{cmd:statsby} 和 {cmd:svy}
都是允许的；请参见 {help prefix_zh}.{p_end}
INCLUDE help vce_mi
{p 4 6 2}使用 {help bootstrap_zh} 前缀时不允许使用权重.{p_end}
{p 4 6 2}
{opt vce()} 和权重在 {help svy_zh} 前缀下不被允许。
{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}s、{opt iweight}s 和 {opt pweight}s 都被允许；见
{help weight_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}有关估计后可用的功能，请参见 {manhelp total_postestimation R:total postestimation}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 摘要、表格和测试 >}
      {bf:摘要和描述性统计 > 总数}


{marker description}{...}
{title:描述}

{pstd}
{opt total} 生成总数的估计值以及标准误差。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R totalQuickstart:快速入门}

        {mansection R totalRemarksandexamples:备注和示例}

        {mansection R totalMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:if/in/over}

{phang}
{cmd:over(}{it:{help varlist_zh:varlist_o}}{cmd:)}
指定计算多个子种群的估计，这些子种群由 {it:varlist_o} 中变量的不同值识别。
在 {opt over(varlist_o)} 中，只允许非负整数值的数值变量。

{dlgtab:SE/Cluster}

{phang}
{opt vce(vcetype)}指定报告的标准误差类型，包括
基于大样本理论派生的类型 ({cmd:analytic})、允许组内相关性 
({cmd:cluster} {it:clustvar})，以及使用自助法或留一法 
({cmd:bootstrap}、{cmd:jackknife})；见 {manhelpi vce_option R}。

{pmore}
{cmd:vce(analytic)}，默认值，使用与样本总数相关的分析导出方差估计方法。

{dlgtab:Reporting}

{phang}
{opt level(#)}；请参见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt noheader} 禁止显示表头。

{marker display_options}{...}
{phang}
{it:display_options}:
{opt noomit:ted}、{opt vsquish}、{opt noempty:cells}、{opt base:levels}、
{opt allbase:levels}、{opt nofvlab:el}、{opt fvwrap(#)}、{opt fvwrapon(style)}、
{opth cformat(%fmt)}，和 {opt nolstretch}；
    请参见 {helpb estimation options##display_options:[R] 估计选项}。

{pstd}
以下选项适用于 {opt total} ，但未在对话框中显示：

{phang}
{opt coeflegend}; 参见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse total}{p_end}

{pstd}使用 {cmd:swgt} 作为 {cmd:pweight} 估算 {cmd:sex} 的总数{p_end}
{phang2}{cmd:. total heartatk [pw=swgt], over(sex)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:total} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察的数量{p_end}
{synopt:{cmd:e(N_over)}}子种群的数量{p_end}
{synopt:{cmd:e(N_clust)}}簇的数量{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)} 中方程的数量{p_end}
{synopt:{cmd:e(df_r)}}样本自由度{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:total}{p_end}
{synopt:{cmd:e(cmdline)}}命令的原始输入{p_end}
{synopt:{cmd:e(varlist)}}{it:varlist}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}簇变量的名称{p_end}
{synopt:{cmd:e(over)}}{it:varlist}来自 {cmd:over()} {p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}被 {cmd:margins} 禁止的预测{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}总数估计值的向量{p_end}
{synopt:{cmd:e(V)}}(共)方差估计{p_end}
{synopt:{cmd:e(_N)}}非缺失观察数量的向量{p_end}
{synopt:{cmd:e(error)}}与 {cmd:e(b)} 对应的错误代码{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <total.sthlp>}