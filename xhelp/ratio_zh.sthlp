{smcl}
{* *! version 1.2.14  23jan2019}{...}
{viewerdialog ratio "dialog ratio"}{...}
{viewerdialog "svy: ratio" "dialog ratio, message(-svy-) name(svy_ratio)"}{...}
{vieweralsosee "[R] ratio" "mansection R ratio"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ratio postestimation" "help ratio postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[R] mean" "help mean_zh"}{...}
{vieweralsosee "[R] proportion" "help proportion_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[R] total" "help total_zh"}{...}
{viewerjumpto "语法" "ratio_zh##syntax"}{...}
{viewerjumpto "菜单" "ratio_zh##menu"}{...}
{viewerjumpto "描述" "ratio_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "ratio_zh##linkspdf"}{...}
{viewerjumpto "选项" "ratio_zh##options"}{...}
{viewerjumpto "示例" "ratio_zh##examples"}{...}
{viewerjumpto "存储结果" "ratio_zh##results"}
{help ratio:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] ratio} {hline 2}}估计比例{p_end}
{p2col:}({mansection R ratio:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
基本语法

{p 8 17 2}
{cmd:ratio} [{it:name}{cmd::}] {varname} [{cmd:/}] {varname}


{phang}
完整语法

{p 8 13 2}
{cmd:ratio} {cmd:(}[{it:name}{cmd::}] {varname} [{cmd:/}] 
   {varname}{cmd:)}{break}
      [{cmd:(}[{it:name}{cmd::}] {varname} [{cmd:/}] {varname}{cmd:)} ...]
 	{ifin} 
        [{it:{help ratio##weight:weight}}]
	[{cmd:,} {it:options}]


{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opth std:ize(varname)}}用于标准化的变量标识 strata{p_end}
{synopt :{opth stdw:eight(varname)}}用于标准化的权重变量{p_end}
{synopt :{opt nostdr:escale}}不再缩放标准权重变量{p_end}

{syntab:条件/子集/分组}
{synopt :{opth over(varlist)}}跨被 {it:varlist} 定义的子群体分组{p_end}

{syntab:标准误/聚类}
{synopt :{opth vce(vcetype)}}{it:vcetype}
	可以是 {opt linear:ized}、{opt cl:uster} {it:clustvar}、
	{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt noh:eader}}抑制表头{p_end}
{synopt :{opt nol:egend}}抑制表图例{p_end}
{synopt :{it:{help ratio##display_options:display_options}}}控制
列格式、行宽、空单元格的显示以及因子变量标记{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}
{p 4 6 2}
{cmd:bootstrap}、{cmd:jackknife}、{cmd:mi estimate}、{cmd:rolling}、
{cmd:statsby} 和 {cmd:svy} 是允许的；见 {help prefix_zh}.{p_end}
INCLUDE help vce_mi
{p 4 6 2}权重在 {help bootstrap_zh} 前缀下不被允许。{p_end}
{p 4 6 2}
{opt vce()} 和权重在 {help svy_zh} 前缀下不被允许。
{p_end}
{marker weight}{...}
{p 4 6 2}{cmd:fweight}s、{cmd:iweight}s 和 {cmd:pweight}s 是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}请参见 {manhelp ratio_postestimation R:ratio postestimation} 获取估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 汇总、表格和检验 >}
      {bf:汇总和描述性统计 > 比例}


{marker description}{...}
{title:描述}

{pstd}
{cmd:ratio} 生成比例的估计及其标准误差。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R ratioQuickstart:快速开始}

        {mansection R ratioRemarksandexamples:备注和示例}

        {mansection R ratioMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth stdize(varname)} 指定点估计通过跨 {it:varname} 标识的 strata 进行直接标准化。此选项要求 {opt stdweight()} 选项。

{phang}
{opth stdweight(varname)} 指定与 {opt stdize()} 选项中标准 strata 相关联的权重变量。标准化权重必须在标准 strata 内保持不变。

{phang}
{opt nostdrescale} 防止标准化权重在 {opt over()} 组内被重新缩放。此选项要求 {opt stdize()}，但如果未指定 {opt over()} 选项，则会被忽略。

{dlgtab:条件/子集/分组}

{phang}
{opth over(varlist)}
指定估计为多个子群体计算，这些子群体通过 {it:varlist} 中变量的不同值识别。仅允许数字、非负整数值变量在 {opt over(varlist)} 中。

{dlgtab:标准误/聚类}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括源自渐近理论的类型（{cmd:linearized}），允许组内相关的类型（{cmd:cluster} {it:clustvar}），以及使用自助法或留一法的方法（{cmd:bootstrap}、{cmd:jackknife}）；见 {manhelpi vce_option R}。

{pmore}
{cmd:vce(linearized)}，默认情况下，使用线性化或三明治方差估计器。

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt noheader} 防止显示表头。此选项意味着 {opt nolegend}。

{phang}
{opt nolegend} 防止显示标识比例的表图例。
{p_end}

{marker display_options}{...}
{phang}
{it:display_options}:
{opt vsquish}、
{opt noempty:cells}、
{opt nofvlab:el}、
{opt fvwrap(#)}、
{opt fvwrapon(style)}、
{opth cformat(%fmt)}，和
{opt nolstretch}；
    见 {helpb estimation options##display_options:[R] 估计选项}。

{pstd}
以下选项可用于 {opt ratio}，但未在对话框中显示：

{phang}
{opt coeflegend}；见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse fuel}{p_end}

{pstd}估计 {cmd:mpg1} 与 {cmd:mpg2} 的比例并将其命名为 {cmd:myratio}{p_end}
{phang2}{cmd:. ratio myratio: mpg1/mpg2}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse census2}{p_end}

{pstd}估计 {cmd:death} 与 {cmd:pop} 的比例以及 {cmd:marriage} 与 {cmd:pop} 的比例，并将其分别命名为 {cmd:deathrate} 和 {cmd:marrate}{p_end}
{phang2}{cmd:. ratio (deathrate: death/pop) (marrate: marriage/pop)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse highschool}{p_end}
{phang2}{cmd:. svyset}

{pstd}估计身高和体重的比例{p_end}
{phang2}{cmd:. svy: ratio height/weight}

{pstd}估计基于种族和性别的身高-体重比例{p_end}
{phang2}{cmd:. svy: ratio height/weight, over(race sex)}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:ratio} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_over)}}子群体数量{p_end}
{synopt:{cmd:e(N_stdize)}}标准 strata 的数量{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(df_r)}}样本自由度{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:ratio}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(varlist)}}{it:varlist}{p_end}
{synopt:{cmd:e(stdize)}}{it:varname} 来自 {cmd:stdize()}{p_end}
{synopt:{cmd:e(stdweight)}}{it:varname} 来自 {cmd:stdweight()}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(over)}}{it:varlist} 来自 {cmd:over()}{p_end}
{synopt:{cmd:e(namelist)}}比例标识符{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标识标准误的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}} {cmd:margins} 禁止的预测{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}比例估计向量{p_end}
{synopt:{cmd:e(V)}}（协）方差估计{p_end}
{synopt:{cmd:e(_N)}}非缺失观察的向量{p_end}
{synopt:{cmd:e(_N_stdsum)}}标准 strata 内的非缺失观察数量{p_end}
{synopt:{cmd:e(_p_stdize)}}标准化比例{p_end}
{synopt:{cmd:e(error)}}对应于 {cmd:e(b)} 的错误代码{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ratio.sthlp>}