
{smcl}
{* *! version 1.0.9  15jun2010}{...}
{* 基于版本 1.0.6  17may2007 的 manova.sthlp}{...}
{* 本帮助文件未在手册中出现}{...}
{help manova_10:English Version}
{hline}
{cmd:help manova_10} {right:另见:  {help manova_postestimation_10_zh}}
{right:{help previously documented}{space 3}}
{hline}

{title:标题}

{p 4 21 2}
{hi:[MV] manova} {hline 2} {cmd:manova} 版本 11 之前的语法

{p 12 12 8}
{it}[{bf:manova} 的语法自版本 11 起有所更改。  本帮助文件记录了 {cmd:manova} 的旧语法，因此可能对您没有兴趣。  如果您在旧的 do-files 中将 {help version_zh} 设置为小于 11，您无需将 {cmd:manova} 转换为现代语法。  本帮助文件提供给希望调试或理解旧代码的人。  点击 {help manova_zh:此处} 查看现代 {cmd:manova} 命令的帮助文件。]{rm}


{title:语法}

{p 8 15 2}{cmdab:mano:va} {depvarlist} {cmd:=}
{it:term} [[{cmd:/}] [{it:term} [{cmd:/}] {it:...}]]
{ifin} {weight}
[{cmd:,} {it:options}]

{pstd}
其中 {it:term} 形式为{space 2} {it:varname}[{c -(}{cmd:*}|{cmd:|}{c )-}{it:varname}[{it:...}]]


{synoptset 23 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt:{opth ca:tegory(varlist)}}在 {it:terms} 中的变量名称，这些变量是分类或类别的{p_end}
{synopt:{opth cl:ass(varlist)}}{opt category(varlist)} 的同义词{p_end}
{synopt:{opth cont:inuous(varlist)}}在 {it:terms} 中的变量名称，这些变量是连续的{p_end}
{synopt:{opt nocons:tant}}抑制常数项{p_end}

{syntab:报告}
{synopt:{opt d:etail}}报告分类变量值映射关系{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{cmd:bootstrap}、{cmd:by}、{cmd:jackknife} 和 {cmd:statsby} 是允许的；参见 {help prefix_zh}。
{p_end}
{p 4 6 2}与 {help bootstrap_zh} 前缀不允许使用权重。{p_end}
{p 4 6 2}{cmd:aweight} 与 {help jackknife_zh} 前缀不允许使用。
{p_end}
{p 4 6 2}
允许使用 {cmd:aweight} 和 {cmd:fweight}；参见 {help weight_zh}
{p_end}
{p 4 6 2}
有关估计后可用的特性，请参见 {help manova_postestimation_10_zh}。{p_end}


{title:描述}

{pstd}
{cmd:manova} 命令拟合多元方差分析 (MANOVA) 和多元协方差分析 (MANCOVA) 模型，适用于平衡和不平衡设计，包括缺失单元的设计，以及因子、嵌套或混合设计，或涉及重复测量的设计。

{pstd}
有关单变量 ANOVA 和 ANCOVA 模型，请参见 {manhelp anova R}。


{title:选项}

{dlgtab:模型}

{phang}
{opt category(varlist)} 指定 {it:terms} 中的变量名称，这些变量是分类或类别变量。 Stata 通常假设所有变量都是分类变量，因此通常不需要指定此选项。然而，如果您指定了此选项，则在 {it:terms} 中提到但未列出的变量将被视为连续变量。 另请参见 {opt class()} 和 {opt continuous()} 选项。

{phang}
{opt class(varlist)} 是 {opt category(varlist)} 的同义词。

{phang}
{opt continuous(varlist)} 指定 {it:terms} 中的连续变量名称。 Stata 通常假设所有变量都是分类变量。 另请参见 {opt category()} 和 {opt class()} 选项。

{phang}
{opt noconstant} 从模型中抑制常数项（截距）。

{dlgtab:报告}

{phang}
{opt detail} 提供一个表格，显示分类变量的实际值及其映射到级别编号的关系。您可以在估计或回放时指定此选项，例如，{cmd:manova, detail}。


{title:备注}

{pstd}
{cmd:*} 在 {it:term} 的定义中表示交互作用。 {cmd:|} 表示嵌套（{cmd:a|b} 表示：{cmd:a} 嵌套在 {cmd:b} 中）。 在 {it:terms} 之间的 {cmd:/} 表示右侧的 {it:term} 是左侧 {it:terms} 的误差 {it:term}。


{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. use http://www.stata-press.com/data/r10/metabolic}

{pstd}单因素 MANOVA{p_end}
{phang2}{cmd:. version 10.1: manova y1 y2 = group}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. use http://www.stata-press.com/data/r10/jaw}

{pstd}双因素 MANOVA{p_end}
{phang2}{cmd:. version 10.1: manova y1 y2 y3 = gender fracture gender*fracture}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. use http://www.stata-press.com/data/r10/rash2}{p_end}

{pstd}具有嵌套数据的 Manova{p_end}
{phang2}{cmd:. version 10.1: manova response response2 = t / c|t / d|c|t / p|d|c|t /}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. use http://www.stata-press.com/data/r10/reading2}{p_end}

{pstd}分裂图 MANOVA{p_end}
{phang2}{cmd:. version 10.1: manova score comp = pr / cl|pr sk pr*sk / cl*sk|pr /}
            {cmd:gr|cl*sk|pr /}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. use http://www.stata-press.com/data/r10/biochemical}

{pstd}MANCOVA{p_end}
{phang2}{cmd:. version 10.1: manova y1 y2 y3 = group x1 x2, continuous(x1 x2)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. use http://www.stata-press.com/data/r10/nobetween}{p_end}
{phang2}{cmd:. gen mycons = 1}

{pstd}具有重复测量数据的 MANOVA{p_end}
{phang2}{cmd:. version 10.1: manova test1 test2 test3 = mycons, noconstant}{p_end}
{phang2}{cmd:. mat c = (1,0,-1 \ 0,1,-1)}{p_end}
{phang2}{cmd:. manovatest mycons, ytransform(c)}{p_end}
    {hline}


{title:保存的结果}

{pstd}
{cmd:manova} 在 {cmd:e()} 中保存以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(k_eq)}}方程数{p_end}
{synopt:{cmd:e(df_}{it:#}{cmd:)}}项 {it:#} 的自由度{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:manova}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvars)}}因变量名称{p_end}
{synopt:{cmd:e(indepvars)}}右侧变量的名称{p_end}
{synopt:{cmd:e(term_}{it:#}{cmd:)}}项 {it:#}{p_end}
{synopt:{cmd:e(errorterm_}{it:#}{cmd:)}}项 {it:#} 的误差项（用于非残差误差的项定义）{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(properties)}}{cmd:b_nonames V_nonames}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量（{cmd:e(B)} 的堆叠版本）{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(B)}}系数矩阵{p_end}
{synopt:{cmd:e(E)}}残差误差 SSCP 矩阵{p_end}
{synopt:{cmd:e(xpxinv)}}X'X 的广义逆{p_end}
{synopt:{cmd:e(H_m)}}整体模型的假设 SSCP 矩阵{p_end}
{synopt:{cmd:e(stat_m)}}整体模型的多元统计量{p_end}
{synopt:{cmd:e(eigvals_m)}}整体模型的 {cmd:E^-1H} 的特征值{p_end}
{synopt:{cmd:e(aux_m)}}整体模型的 s、m、n 值{p_end}
{synopt:{cmd:e(H_}{it:#}{cmd:)}}项 {it:#} 的假设 SSCP 矩阵{p_end}
{synopt:{cmd:e(stat_}{it:#}{cmd:)}}项 {it:#} 的多元统计量（如果计算）{p_end}
{synopt:{cmd:e(eigvals_}{it:#}{cmd:)}}项 {it:#} 的 {cmd:E^-1H} 的特征值（如果计算）{p_end}
{synopt:{cmd:e(aux_}{it:#}{cmd:)}}项 {it:#} 的 s、m、n 值（如果计算）{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{title:另见}

{psee}
手册:  {help previously documented}

{psee}
{space 2}帮助:  {manhelp manova MV}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <manova_10.sthlp>}