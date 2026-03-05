{smcl}
{* *! version 1.3.4  20aug2018}{...}
{viewerdialog sampsi "dialog sampsi"}{...}
{viewerdialog "sampsi (repeated measures)" "dialog sampsi_repmeas"}{...}
{vieweralsosee "help prdocumented_zh" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stpower" "help stpower_zh"}{...}
{viewerjumpto "Syntax" "sampsi_zh##syntax"}{...}
{viewerjumpto "Menu" "sampsi_zh##menu"}{...}
{viewerjumpto "Description" "sampsi_zh##description"}{...}
{viewerjumpto "Options" "sampsi_zh##options"}{...}
{viewerjumpto "Examples" "sampsi_zh##examples"}{...}
{viewerjumpto "Stored results" "sampsi_zh##results"}
{help sampsi:English Version}
{hline}{...}
{pstd}
{cmd:sampsi} 继续可用，但从 Stata 13 开始，它不再是 Stata 的官方部分。 这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。

{pstd}
请参见 {manhelp power PSS-2} 以获取对 {cmd:sampsi} 的推荐替代。

{title:标题}

{p2colset 5 19 21 2}{...}
{p2col:{bf:[R] sampsi} {hline 2}}样本大小和均值与比例的效能{p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:sampsi}
{it:#1 #2}
[{cmd:,} {it:选项}]

{synoptset 18 tabbed}
{synopthdr}
{synoptline}
{syntab:主}
{synopt:{opt onesam:ple}}单样本检验；默认为双样本{p_end}
{synopt:{opt sd1(#)}}样本 1 的标准偏差{p_end}
{synopt:{opt sd2(#)}}样本 2 的标准偏差{p_end}

{syntab:选项}
{synopt:{opt a:lpha(#)}}检验的显著性水平；默认为 {cmd:alpha(0.05)}{p_end}
{synopt:{opt p:ower(#)}}检验的效能；默认为 {cmd:power(0.90)}{p_end}
{synopt:{opt n:1(#)}}样本 1 的大小{p_end}
{synopt:{opt n:2(#)}}样本 2 的大小{p_end}
{synopt:{opt r:atio(#)}}样本大小的比例；默认为 {cmd:ratio(1)}{p_end}
{synopt:{opt pre(#)}}基线测量的数量；默认为 {cmd:pre(0)}{p_end}
{synopt:{opt post(#)}}跟进测量的数量；默认为 {cmd:post(1)}{p_end}
{synopt:{opt nocont:inuity}}在两样本比例检验中不使用连续性校正{p_end}
{synopt:{opt r0(#)}}基线测量之间的相关性；默认为 {cmd:r0()=r1()}{p_end}
{synopt:{opt r1(#)}}后续测量之间的相关性{p_end}
{synopt:{opt r01(#)}}基线与后续测量之间的相关性{p_end}
{synopt:{opt onesid:ed}}单侧检验；默认为双侧{p_end}
{synopt:{opt m:ethod(method)}}重复测量的分析方法，其中 {it:method} 为 {opt post}、{opt change}、{opt ancova} 或 {opt all}；默认为 {cmd:method(all)}{p_end}
{synoptline}
{p2colreset}{...}

{marker menu}{...}
{title:菜单}

    {title:sampsi}

{phang2}
{bf:统计 > 力量和样本大小 > 均值和比例的检验}

     {title:sampsi 与重复测量}

{phang2}
{bf:统计 > 力量和样本大小 > 重复测量的均值检验}

{marker description}{...}
{title:描述}

{pstd}
{opt sampsi} 估计比较两个组的研究所需的样本大小或检验的效能。 {opt sampsi} 可用于比较均值或比例，适用于那些只计划对结果进行一次测量的简单研究，以及对于那些计划对每个实验单元进行重复测量的更复杂研究的均值汇总统计进行比较。

{pstd}
如果指定了 {opt n1(#)} 或 {opt n2(#)}，则 {opt sampsi} 计算效能；否则，计算样本大小。 对于简单研究，如果指定了 {opt sd1(#)} 或 {opt sd2(#)}，则 {opt sampsi} 假定为均值比较；否则，假定为比例比较。 对于重复测量，必须指定 {opt sd1(#)} 或 {opt sd2(#)}。 {opt sampsi} 是一个直接命令；所有参数都是数字；请参见 {help immed_zh}。

{pstd}
对于简单研究，只计划对结果进行一次测量，{cmd:sampsi} 计算四种类型检验的样本大小或效能：

{phang}1. 两个样本均值的比较。{p_end}
{pmore}假设均值的值为 {it:#1} 和 {it:#2}。{p_end}
{pmore}假设标准偏差为 {cmd:sd1()} 和 {cmd:sd2()}。{p_end}

{phang}2. 单样本均值与假设值的比较。{p_end}
{pmore}必须指定选项 {cmd:onesample}。{p_end}
{pmore}假设值（原假设）为 {it:#1}。{p_end}
{pmore}假设均值（备择假设）为 {it:#2}。{p_end}
{pmore}假设标准偏差为 {cmd:sd1()}。{p_end}

{phang}3. 两个样本比例的比较。{p_end}
{pmore}假设比例的值为 {it:#1} 和 {it:#2}。{p_end}

{phang}4. 单样本比例与假设值的比较。{p_end}
{pmore}必须指定选项 {cmd:onesample}。{p_end}
{pmore}假设比例（原假设）为 {it:#1}。{p_end}
{pmore}假设比例（备择假设）为 {it:#2}。{p_end}

{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}
{opt onesample} 指示进行单样本检验。默认为双样本。

{phang}
{opt sd1(#)} 和 {opt sd2(#)} 分别是总体 1 和总体 2 的标准偏差。 进行均值比较时，必须指定一个或两个。 使用 {opt onesample} 选项时，{opt sd1(#)} 为单一样本的标准偏差（可以缩写为 {opt sd(#)}）。 如果只指定 {opt sd1(#)} 或 {opt sd2(#)} 中的一个，{opt sampsi} 假定 {opt sd1()} = {opt sd2()}。 如果既没有指定 {opt sd1(#)} 也没有指定 {opt sd2(#)}，则 {opt sampsi} 假定是比例检验。 对于重复测量，必须指定 {opt sd1(#)} 或 {opt sd2(#)}。

{dlgtab:选项}

{phang}
{opt alpha(#)} 是检验的显著性水平。 默认值为 {cmd:alpha(0.05)}，除非使用 {opt set level} 重置了置信区间的默认显著性水平。 如果发布了 {opt set level} # 级命令，则默认值为 {cmd:alpha(}1-level/100{cmd:)}。 请参见 {manhelp level R}。

{phang}
{opt power(#)} = 1 - b 是检验的效能。 默认为 {cmd:power(0.90)}。

{phang}
{opt n1(#)} 和 {opt n2(#)} 分别是样本 1 和样本 2 的大小。 计算效能时，必须指定其中一个或两个。 如果既没有指定 {opt n1(#)} 也没有指定 {opt n2(#)}，则 {opt sampsi} 计算样本大小。 使用 {opt onesample} 选项时，{opt n1(#)} 为单一样本的大小（可以缩写为 {opt n(#)}）。 如果只指定 {opt n1(#)} 或 {opt n2(#)} 中的一个，未指定的将使用公式 {cmd:ratio} = {opt n2()}/{opt n1()} 计算。

{phang}
{opt ratio(#)} 是双样本检验的样本大小比例： {cmd:ratio()} = {cmd:n2()}/{cmd:n1()}。 默认值为 {cmd:ratio(1)}。

{phang}
{opt pre(#)} 指定计划在重复测量研究中的基线测量数量（随机化前）。 默认为 {cmd:pre(0)}。

{phang}
{opt post(#)} 指定计划在重复测量研究中的跟进测量数量（随机化后）。 默认为 {cmd:post(1)}。

{phang}
{opt nocontinuity} 请求不使用连续性校正对两样本比例的检验进行效能和样本大小计算。如果未指定，则使用连续性校正。

{phang}
{opt r0(#)} 指定在重复测量研究中基线测量之间的相关性。 如果未指定 {opt r0(#)}，则 {opt sampsi} 假定 {opt r0()} = {opt r1()}。

{phang}
{opt r1(#)} 指定在重复测量研究中后续测量之间的相关性。 对于重复测量研究，必须指定 {opt r1(#)} 或 {opt r01(#)} 中的一个。 如果未指定 {opt r1(#)}，则 {opt sampsi} 假定 {opt r1()} = {opt r01()}。

{phang}
{opt r01(#)} 指定在重复测量研究中基线与后续测量之间的相关性。 对于重复测量研究，必须指定 {opt r01(#)} 或 {opt r1(#)} 中的一个。 如果未指定 {opt r01(#)}，则 {cmd:sampsi} 假定 {opt r01()} = {opt r1()}。

{phang}
{opt onesided} 指示进行单侧检验。 默认为双侧。

{phang}
{cmd:method(post}|{opt change}|{opt ancova}|{opt all)} 指定重复测量所用的分析方法。 {opt change} 和 {opt ancova} 仅在计划进行基线测量时可以使用。 默认为 {cmd:method(all)}，这意味着使用所有三种方法。

{marker examples}{...}
{title:示例}

{phang}1. 两个样本均值的比较。 计算样本大小，n2/n1 = 2：

{phang2}{cmd:. sampsi 132.86 127.44, p(0.8) r(2) sd1(15.34) sd2(18.23)}

{pmore}计算功率，n1 = n2，sd1 = sd2，以及 alpha = 0.01 单侧：

{phang2}{cmd:. sampsi 5.6 6.1, n1(100) sd1(1.5) a(0.01) onesided}

{phang}2. 单样本均值与假设值 = 180 的比较。 计算样本大小：

{phang2}{cmd:. sampsi 180 211, sd(46) onesam}

{pmore}单样本均值与假设值 = 0 的比较。 计算功率：

{phang2}{cmd:. sampsi 0 -2.5, sd(4) n(25) onesam}

{phang}3. 两个样本比例的比较。 在 n1 = n2（即，比例 = 1，默认）和功率 = 0.9（默认）下计算样本大小：

{phang2}{cmd:. sampsi 0.25 0.4}

{pmore}以 n1 = 500 和比例 = n2/n1 = 0.5 计算功率：

{phang2}{cmd:. sampsi 0.25 0.4, n1(300) r(0.5)}

{phang}4. 单样本比例与假设值 = 0.5 的比较：

{phang2}{cmd:. sampsi 0.5 0.75, power(0.8) onesample}

{pmore}计算功率：

{phang2}{cmd:. sampsi 0.5 0.6, n(200) onesam}

{phang}5. 重复测量：

{phang2}{cmd:. sampsi 498 485, sd1(20.2) sd2(19.5) method(change) pre(1) post(3) r1(.7)}

{pmore}计算功率：

{phang2}{cmd:. sampsi 498 485, sd1(20.2) sd2(19.5) method(change) pre(1) post(3) r1(.7) n1(15) n2(15)}

{marker results}{...}
{title:存储结果}

{pstd}
{cmd:sampsi} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N_1)}}样本大小 n_1{p_end}
{synopt:{cmd:r(N_2)}}样本大小 n_2{p_end}
{synopt:{cmd:r(power)}}功率{p_end}
{synopt:{cmd:r(adj)}}对标准误的调整{p_end}
{synopt:{cmd:r(warning)}}如果假设成立则为 0，否则为 1{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sampsi.sthlp>}