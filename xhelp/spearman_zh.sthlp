{smcl}
{* *! version 1.1.10  19oct2017}{...}
{viewerdialog spearman "dialog spearman"}{...}
{viewerdialog "ktau" "dialog ktau"}{...}
{vieweralsosee "[R] spearman" "mansection R spearman"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] correlate" "help correlate_zh"}{...}
{vieweralsosee "[R] nptrend" "help nptrend_zh"}{...}
{viewerjumpto "Syntax" "spearman_zh##syntax"}{...}
{viewerjumpto "Menu" "spearman_zh##menu"}{...}
{viewerjumpto "Description" "spearman_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "spearman_zh##linkspdf"}{...}
{viewerjumpto "Options for spearman" "spearman_zh##options_spearman"}{...}
{viewerjumpto "Options for ktau" "spearman_zh##options_ktau"}{...}
{viewerjumpto "Examples" "spearman_zh##examples"}{...}
{viewerjumpto "Stored results" "spearman_zh##results"}
{help spearman:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[R] spearman} {hline 2}}Spearman 和 Kendall 相关系数{p_end}
{p2col:}({mansection R spearman:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
Spearman 的秩相关系数

{p 8 17 2}
{cmd:spearman}
[{varlist}]
{ifin}
[{cmd:,} {it:{help spearman##spearman_options:spearman_options}}]


{phang}
Kendall 的秩相关系数

{p 8 13 2}
{cmd:ktau}
[{varlist}]
{ifin}
[{cmd:,} {it:{help spearman##ktau_options:ktau_options}}]


{marker spearman_options}{...}
{synoptset 24 tabbed}{...}
{synopthdr:spearman_options}
{synoptline}
{syntab:主要}
{synopt:{cmd:stats(}{it:{help spearman##spearman_list:spearman_list}}{cmd:)}}统计量列表；最多选择三种统计量；默认是 {cmd:stats(rho)}{p_end}
{synopt:{opt p:rint(#)}}用于显示系数的显著性水平{p_end}
{synopt:{opt st:ar(#)}}用于显示星号的显著性水平{p_end}
{synopt:{opt b:onferroni}}使用 Bonferroni 调整的显著性水平{p_end}
{synopt:{opt sid:ak}}使用 Sidak 调整的显著性水平{p_end}
{synopt:{opt pw}}通过使用所有可用数据计算所有成对相关系数{p_end}
{synopt:{opt mat:rix}}以矩阵形式显示输出{p_end}
{synoptline}

{marker ktau_options}{...}
{synopthdr:ktau_options}
{synoptline}
{syntab:主要}
{synopt:{cmd:stats(}{it:{help spearman##ktau_list:ktau_list}}{cmd:)}}统计量列表；最多选择六种统计量；默认是 {cmd:stats(taua)}{p_end}
{synopt:{opt p:rint(#)}}用于显示系数的显著性水平{p_end}
{synopt:{opt st:ar(#)}}用于显示星号的显著性水平{p_end}
{synopt:{opt b:onferroni}}使用 Bonferroni 调整的显著性水平{p_end}
{synopt:{opt sid:ak}}使用 Sidak 调整的显著性水平{p_end}
{synopt:{opt pw}}通过使用所有可用数据计算所有成对相关系数{p_end}
{synopt:{opt mat:rix}}以矩阵形式显示输出{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt by} 允许与 {opt spearman} 和 {opt ktau} 一起使用；
请参见 {manhelp by D}.{p_end}

{p 4 6 2}
{marker spearman_list}{...}
其中 {it:spearman_list} 的元素可以是

{p 8 25 2}{cmd:rho}{space 5} 相关系数{p_end}
{p 8 25 2}{cmd:obs}{space 5} 观察数{p_end}
{p 8 25 2}{cmd:p}{space 7} 显著性水平

{p 6 6 2}
{marker ktau_list}{...}
而 {it:ktau_list} 的元素可以是

{p 8 25 2}{cmd:taua}{space 4} 相关系数 tau_a{p_end}
{p 8 25 2}{cmd:taub}{space 4} 相关系数 tau_b{p_end}
{p 8 25 2}{cmd:score}{space 3} 得分{p_end}
{p 8 25 2}{cmd:se}{space 6} 得分的标准误{p_end}
{p 8 25 2}{cmd:obs}{space 5} 观察数{p_end}
{p 8 25 2}{cmd:p}{space 7} 显著性水平 


{marker menu}{...}
{title:菜单}

    {title:spearman}

{phang2}
{bf:统计 > 非参数分析 > 假设检验 >}
        {bf:Spearman 的秩相关}

    {title:ktau}

{phang2}
{bf:统计 > 非参数分析 > 假设检验 >}
        {bf:Kendall 的秩相关}


{marker description}{...}
{title:描述}

{pstd}
{opt spearman} 显示 {varlist} 中所有变量对的 Spearman 秩相关系数，或者如果未指定 {it:varlist}，则显示数据集中的所有变量。

{pstd}
{opt ktau} 显示 {it:varlist} 中变量之间的 Kendall 秩相关系数，或者如果未指定 {it:varlist}，则显示数据集中的所有变量。{opt ktau} 适用于小型和中型数据集；对于大型数据集，它需要相当长的计算时间。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R spearmanQuickstart:快速开始}

        {mansection R spearmanRemarksandexamples:备注和示例}

        {mansection R spearmanMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options_spearman}{...}
{title:spearman 的选项}

{dlgtab:主要}

{phang}
{cmd:stats(}{it:{help spearman##spearman_list:spearman_list}}{cmd:)}
  指定在输出矩阵中显示的统计量。默认是 {cmd:stats(rho)}。可以指定最多三种统计量；
  {cmd:stats(rho obs p)} 将显示相关系数、观察数和显著性水平。如果 {varlist} 仅包含两个变量，则所有统计量将以表格形式显示，
  并且 {cmd:stats()}、{cmd:print()} 和 {cmd:star()} 将无效，除非指定了 {cmd:matrix} 选项。

{phang}
{opt print(#)} 指定要打印的相关系数的显著性水平。显著性水平较高的相关系数在矩阵中留空。输入 {cmd:spearman, print(.10)} 将仅列出在 10% 或更低显著性水平下显著的相关系数。

{phang}
{opt star(#)} 指定要用星号标记的相关系数的显著性水平。输入 {cmd:spearman, star(.05)} 将对所有在 5% 或更低显著性水平下显著的相关系数加星标。

{phang}
{opt bonferroni} 对计算的显著性水平进行 Bonferroni 调整。该调整影响打印的显著性水平以及 {opt print()} 和 {opt star()} 选项。因此
{cmd:spearman, print(.05) bonferroni} 打印显著性水平为 0.05 或更低的系数。

{phang}
{opt sidak} 对计算的显著性水平进行 Sidak 调整。该调整影响打印的显著性水平以及 {opt print()} 和 {opt star()} 选项。因此
{cmd:spearman, print(.05) sidak} 打印显著性水平为 0.05 或更低的系数。

{phang}
{opt pw} 指定使用成对删除的方式计算缺失值观察的相关性。默认情况下，{opt spearman} 使用案例删除，在此情况下，如果 {varlist} 中的任何变量缺失，相关的观察将被忽略。

{phang}
{opt matrix} 强制 {cmd:spearman} 将统计量显示为矩阵，即使 {varlist} 仅包含两个变量。如果指定了两个以上的变量，则隐含使用 {cmd:matrix}。


{marker options_ktau}{...}
{title:ktau 的选项}

{dlgtab:主要}

{phang}
{cmd:stats(}{it:{help spearman##ktau_list:ktau_list}}{cmd:)}
指定在输出矩阵中显示的统计量。
{cmd:stats(tau)} 是默认值。可以指定最多六种统计量；
{cmd:stats(taua taub score se obs p)} 将显示相关系数 tau_a、tau_b、得分、得分的标准误、观察数和显著性水平。如果 {varlist} 仅包含两个变量，则所有统计量以表格形式显示，并且 {cmd:stats()}、{cmd:print()} 和 {cmd:star()} 将无效，除非指定了 {cmd:matrix} 选项。

{phang}
{opt print(#)} 指定要打印的相关系数的显著性水平。显著性水平较高的相关系数在矩阵中留空。输入 {cmd:ktau, print(.10)} 将仅列出在 10% 或更低显著性水平下显著的相关系数。

{phang}
{opt star(#)} 指定要用星号标记的相关系数的显著性水平。输入 {cmd:ktau, star(.05)} 将对所有在 5% 或更低显著性水平下显著的相关系数加星标。

{phang}
{opt bonferroni} 对计算的显著性水平进行 Bonferroni 调整。该调整影响打印的显著性水平以及 {opt print()} 和 {opt star()} 选项。因此
{cmd:ktau, print(.05) bonferroni} 打印显著性水平为 0.05 或更低的系数。

{phang}
{opt sidak} 对计算的显著性水平进行 Sidak 调整。
该调整影响打印的显著性水平以及 {opt print()} 和 {opt star()} 选项。因此 {cmd:ktau, print(.05) sidak} 打印显著性水平为 0.05 或更低的系数。

{phang}
{opt pw} 指定使用成对删除的方式计算缺失值观察的相关性。默认情况下，{opt ktau} 使用案例删除，在此情况下，如果 {varlist} 中的任何变量缺失，相关的观察将被忽略。

{phang}
{opt matrix} 强制 {cmd:ktau} 将统计量显示为矩阵，即使 {varlist} 仅包含两个变量。如果指定了两个以上的变量，则隐含使用 {cmd:matrix}。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. webuse states2}{p_end}

{pstd}Spearman 的秩相关系数；默认显示相关系数{p_end}
{phang2}{cmd:. spearman mrgrate divorce_rate medage}{p_end}

{pstd}Spearman 的秩相关系数；显示相关系数和显著性水平{p_end}
{phang2}{cmd:. spearman mrgrate divorce_rate medage, stats(rho p)}{p_end}

{pstd}Kendall 的秩相关；显示 tau_a、tau_b 及显著性水平{p_end}
{phang2}{cmd:. ktau mrgrate divorce_rate medage, stats(taua taub p)}{p_end}

    {hline}
    设置
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}两个变量；默认以表格形式显示输出{p_end}
{phang2}{cmd:. spearman mpg rep78}{p_end}

{pstd}两个变量；以矩阵形式显示输出{p_end}
{phang2}{cmd:. spearman mpg rep78, matrix}{p_end}

{pstd}在一对变量中使用所有非缺失观察{p_end}
{phang2}{cmd:. spearman mpg price rep78, pw}{p_end}

{pstd}对所有在 5% 或更低显著性水平下显著的相关系数加星标{p_end}
{phang2}{cmd:. spearman mpg price rep78, pw star(.05)}{p_end}

{pstd}Kendall 的秩相关；显示 tau_a、tau_b、得分、得分的标准误和 Bonferroni 调整的显著性水平{p_end}
{phang2}{cmd:. ktau mpg price rep78, stats(taua taub score se p) bonferroni}
{p_end}
    {hline}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:spearman} 将以下存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数（最后一对变量）{p_end}
{synopt:{cmd:r(rho)}}rho（最后一对变量）{p_end}
{synopt:{cmd:r(p)}}双边 p 值（最后一对变量）{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(Nobs)}}观察数{p_end}
{synopt:{cmd:r(Rho)}}rho{p_end}
{synopt:{cmd:r(P)}}双边 p 值{p_end}

{pstd}
{cmd:ktau} 将以下存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数（最后一对变量）{p_end}
{synopt:{cmd:r(tau_a)}}tau_a（最后一对变量）{p_end}
{synopt:{cmd:r(tau_b)}}tau_b（最后一对变量）{p_end}
{synopt:{cmd:r(score)}}Kendall 的得分（最后一对变量）{p_end}
{synopt:{cmd:r(se_score)}}得分的标准误（最后一对变量）{p_end}
{synopt:{cmd:r(p)}}双边 p 值（最后一对变量）{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(Nobs)}}观察数{p_end}
{synopt:{cmd:r(Tau_a)}}tau_a{p_end}
{synopt:{cmd:r(Tau_b)}}tau_b{p_end}
{synopt:{cmd:r(Score)}}Kendall 的得分{p_end}
{synopt:{cmd:r(Se_Score)}}得分的标准误{p_end}
{synopt:{cmd:r(P)}}双边 p 值{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spearman.sthlp>}