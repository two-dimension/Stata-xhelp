{smcl}
{* *! version 1.2.4  19oct2017}{...}
{viewerdialog estat "dialog estat_bootstrap"}{...}
{vieweralsosee "[R] bootstrap postestimation" "mansection R bootstrappostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bootstrap" "help bootstrap_zh"}{...}
{viewerjumpto "后估计命令" "bootstrap postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "bootstrap_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "bootstrap postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "bootstrap postestimation##syntax_margins"}{...}
{viewerjumpto "estat" "bootstrap postestimation##syntax_estat_bootstrap"}{...}
{viewerjumpto "示例" "bootstrap postestimation##examples"}
{help bootstrap_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[R] bootstrap postestimation} {hline 2}}后估计工具用于
引导法{p_end}
{p2col:}({mansection R bootstrappostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在使用 {cmd:bootstrap} 之后，以下后估计命令特别重要：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb bootstrap postestimation##estatbootstrap:estat bootstrap}}基于百分位
和偏差校正的置信区间表{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后估计命令也可用：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 help post_contrast
包含 help post_estatic
包含 help post_estatsum
包含 help post_estatvce
包含 help post_estimates
包含 help post_hausman
包含 help post_lincom
{synopt:{helpb bootstrap_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包含 help post_marginsplot
包含 help post_nlcom
{synopt:{helpb bootstrap postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
包含 help post_predictnl
包含 help post_pwcompare
包含 help post_test
包含 help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}后估计命令在 {it:command} 后使用是允许的。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R bootstrappostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测}

{pstd}
{cmd:predict} 的语法（以及在 {cmd:bootstrap} 后是否允许使用 {cmd:predict}）取决于与 {cmd:bootstrap} 一起使用的 {it:command}。如果不允许使用 {cmd:predict}，则 {cmd:predictnl} 也不允许。


{marker syntax_margins}{...}
{marker margins}{...}
{title:边际}

{pstd}
{cmd:margins} 的语法（以及在 {cmd:bootstrap} 后是否允许使用 {cmd:margins}）取决于与 {cmd:bootstrap} 一起使用的 {it:command}。


{marker syntax_estat_bootstrap}{...}
{marker estatbootstrap}{...}
{title:estat的语法}

{p 8 14 2}
{cmd:estat} {cmdab:boot:strap} [{cmd:,} {it:options}]

{synoptset 20}{...}
{synopthdr}
{synoptline}
{synopt :{opt bc}}偏差校正的置信区间；默认值{p_end}
{synopt :{opt bca}}偏差校正和加速（BC_a）的置信区间{p_end}
{synopt :{opt nor:mal}}基于正态的置信区间{p_end}
{synopt :{opt p:ercentile}}百分位置信区间{p_end}
{synopt :{opt all}}所有可用的置信区间{p_end}
{synopt :{opt nohead:er}}抑制表头显示{p_end}
{synopt :{opt noleg:end}}抑制表图例显示{p_end}
{synopt :{opt v:erbose}}显示完整的表图例{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}{opt bc}, {opt bca}, {opt normal} 和 {opt percentile} 可一起使用。


包含 help menu_estat


{marker des_estat}{...}
{title:estat的描述}

{pstd}
{cmd:estat bootstrap} 显示每个统计量的置信区间表，来源于引导分析。


{marker options_estat_bootstrap}{...}
{title:estat bootstrap 的选项}

{phang}
{opt bc} 是默认选项，显示偏差校正的置信区间。

{phang}
{opt bca} 显示偏差校正和加速的置信区间。此选项假设您在 {cmd:bootstrap} 前缀命令中也指定了 {cmd:bca} 选项。

{phang}
{opt normal} 显示正态近似的置信区间。

{phang}
{opt percentile} 显示百分位置信区间。

{phang}
{opt all} 显示所有可用的置信区间。

{phang}
{opt noheader} 抑制表头的显示。此选项意味着 {opt nolegend}。

{phang}
{opt nolegend} 抑制表图例的显示，该图例用于标识表中的行及其表示的表达式。

{phang}
{opt verbose} 请求显示完整的表图例。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. bootstrap, reps(100) bca: regress mpg weight gear foreign}{p_end}

{pstd}获取偏差校正的置信区间{p_end}
{phang2}{cmd:. estat bootstrap}

{pstd}获取偏差校正和加速的置信区间{p_end}
{phang2}{cmd:. estat bootstrap, bca}

{pstd}获取所有可用的置信区间{p_end}
{phang2}{cmd:. estat bootstrap, all}

{pstd}检验 {cmd:gear} 和 {cmd:foreign} 的系数之和为 0{p_end}
{phang2}{cmd:. test gear + foreign = 0}

{pstd}计算 {cmd:gear_ratio} 系数与 {cmd:foreign} 系数的比值的估计、SE、检验统计、显著性水平和置信区间{p_end}
{phang2}{cmd:. nlcom _b[gear_ratio] / _b[foreign]}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bootstrap_postestimation.sthlp>}