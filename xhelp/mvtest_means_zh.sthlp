{smcl}
{* *! version 1.1.33  19oct2017}{...}
{viewerdialog mvtest "dialog mvtest"}{...}
{vieweralsosee "[MV] mvtest means" "mansection MV mvtestmeans"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] hotelling" "help hotelling"}{...}
{vieweralsosee "[MV] manova" "help manova_zh"}{...}
{vieweralsosee "[R] mean" "help mean_zh"}{...}
{vieweralsosee "[R] ttest" "help ttest_zh"}{...}
{viewerjumpto "Syntax" "mvtest_means_zh##syntax"}{...}
{viewerjumpto "Menu" "mvtest_means_zh##menu"}{...}
{viewerjumpto "Description" "mvtest_means_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mvtest_means_zh##linkspdf"}{...}
{viewerjumpto "Options for multiple-sample tests" "mvtest_means_zh##options_multi"}{...}
{viewerjumpto "Options for one-sample tests" "mvtest_means_zh##options_one"}{...}
{viewerjumpto "Examples" "mvtest_means_zh##examples"}{...}
{viewerjumpto "Stored results" "mvtest_means_zh##results"}{...}
{viewerjumpto "References" "mvtest_means_zh##references"}
{help mvtest_means:English Version}
{hline}{...}
{p2colset 1 22 18 2}{...}
{p2col:{bf:[MV] mvtest means} {hline 2}}多变量均值检验{p_end}
{p2col:}({mansection MV mvtestmeans:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
多样本检验

{p 8 16 2}
{cmd:mvtest} {cmdab:m:eans} {varlist} {ifin}
[{it:{help mvtest means##weight:权重}}]{cmd:,}
{opth by:(varlist:分组变量)}
[{help mvtest_means##multisample_options:{it:多样本选项}}]


{pstd}
单样本检验

{p 8 16 2}
{cmd:mvtest} {cmdab:m:eans} {varlist} {ifin}
[{it:{help mvtest means##weight:权重}}]
[{cmd:,}
{help mvtest_means##one-sample_options:{it:单样本选项}}]


{synoptset 20 tabbed}{...}
{marker multisample_options}{...}
{synopthdr:多样本选项}
{synoptline}
{syntab:模型}
{p2coldent:* {opth by:(varlist:分组变量)}}比较在 {it:分组变量} 中有相同值的子样本{p_end}
{synopt:{opt miss:ing}}将 {it:分组变量} 中的缺失值视为普通值 {p_end}

{syntab:选项}
{synopt:{opt hom:ogeneous}}在分组间假设协方差矩阵相等进行均值检验；默认设置{p_end}
{synopt:{opt het:erogeneous}}允许分组间协方差矩阵不相等的霍特林均值检验{p_end}
{synopt:{opt lr}}允许分组间协方差矩阵不相等的均值似然比检验{p_end}
{synopt:{cmdab:prot:ect(}{it:{help mvtest_means##spec:规格}}{cmd:)}}作为防范措施，使用组均值作为初始值进行保护，以防局部最小值；仅与 {cmd:lr} 选项一起使用{p_end}
{synoptline}
{p 4 6 2}* {opt by(groupvars)} 是必需的。

{synoptset 20 tabbed}{...}
{marker one-sample_options}{...}
{synopthdr:单样本选项}
{synoptline}
{syntab:选项}
{synopt:{opt e:qual}}检验 {varlist} 中变量的均值是否相等；默认设置{p_end}
{synopt:{opt z:ero}}检验 {varlist} 的均值是否都等于 0{p_end}
{synopt:{opt e:quals(M)}}检验均值向量是否等于向量 {it:M}{p_end}
{synopt:{opt l:inear(V)}}检验 {varlist} 的均值向量是否满足由矩阵 {it:V} 描述的线性假设{p_end}
{synoptline}

{p 4 6 2}
{cmd:bootstrap}、{cmd:by}、{cmd:jackknife}、{cmd:rolling} 和 {cmd:statsby} 被允许；请参见 {help prefix_zh}.{p_end}
{p 4 6 2}
在使用 {help bootstrap_zh} 前缀时不允许使用权重。{p_end}
{p 4 6 2}
在使用 {help jackknife_zh} 前缀时不允许使用 {cmd:aweight}。{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:aweight} 和 {cmd:fweight}；
请参见 {help weight_zh}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多变量分析 > MANOVA、多变量回归，}
           {bf:及相关 > 多变量均值、协方差和}
           {bf:正态性检验}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mvtest means} 对均值执行单样本和多样本的多变量检验。这些检验假设多变量正态性。

{pstd}
有关其他多变量检验，请参见 {manhelp mvtest MV}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV mvtestmeansQuickstart:快速开始}

        {mansection MV mvtestmeansRemarksandexamples:备注和示例}

        {mansection MV mvtestmeansMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options_multi}{...}
{title:多样本检验选项}

{dlgtab:模型}

{phang}
{opth by:(varlist:分组变量)} 在多样本版本的检验中是必需的。在 {it:分组变量} 中具有相同值的观察形成一个样本。
具有缺失值的观察将被忽略，除非指定了 {cmd:missing} 选项。

{phang}
{opt missing} 指定将 {it:分组变量} 中的缺失值视为普通值。

{dlgtab:选项}

{phang}
{cmd: homogeneous}，默认设置，指定均值向量在分组间相同的假设，假设在分组间协方差矩阵相等。 {cmd:homogeneous} 生成四个标准的多变量均值检验（Wilks 的 λ、Pillai 的迹、Lawley-Hotelling 迹和 Roy 的最大根）。

{phang}
{cmd:heterogeneous} 则不假设分组间协方差矩阵相同。这是多变量 Behrens-Fisher 问题。当有两个组时，MNV 检验，是 {help mvtest means##KY2004:Krishnamoorthy 和 Yu (2004)} 对 {help mvtest means##NM1986:Nel-Van der Merwe (1986)} 检验的一个仿射不变修改。 当组数多于两个时，将显示 Wald 检验，其 p 值根据 {help mvtest means##J1954:James (1954)} 的建议进行调整。

{phang}
{opt lr} 则不假设分组间协方差矩阵相同，并指定展示似然比检验。相关估计问题可能会有多个局部极值，尽管这种情况在两组中似乎很少见。

{phang}
{marker spec}{...}
{opt protect(spec)} 是一个与 {cmd:lr} 附带的技术选项，指定对“公共均值”模型进行不同初始值的拟合，以一定程度上确认是否达到了潜在估计问题的全局最优解。 Mardia-Kent-Bibby ({help mvtest means##MKB1979:1979}) 提议的公共均值初始化方法总是被使用。如果不同的试验未能收敛到相同的解，则使用“最佳”解来进行检验，并显示警告信息。

{phang2}
{cmd:protect(groups)} 指定使用每个组均值作为公共均值的起始值拟合公共均值模型。

{phang2}
{cmd:protect(randobs, reps(}{it:#}{cmd:))} 指定使用 {it:#} 个随机观察作为公共均值的起始值拟合公共均值模型。

{phang2}
{opt protect(#)} 是 {cmd:protect(randobs, reps(}{it:#}{cmd:))} 的方便缩写。


{marker options_one}{...}
{title:单样本检验选项}

{dlgtab:选项}

{phang}
{cmd:equal} 执行霍特林检验，假设 {varlist} 中所有变量的均值相等。

{phang}
{cmd:zero} 执行霍特林检验，假设 {varlist} 中所有变量的均值为 0。

{phang}
{cmd:equals(}{it:M}{cmd:)} 执行霍特林检验，假设 {varlist} 中 k 个变量的均值向量等于 {it:M}。矩阵 {it:M} 必须为 kx1 或 1xk 的向量。 {it:M} 的行和列名称将被忽略。

{phang}
{cmd:linear(}{it:V}{cmd:)} 执行霍特林检验，假设均值满足由 {it:V} 表示的用户指定的线性约束。 {it:V} 必须是一个具有 k 或 k+1 列的矩阵向量，其中 k 为 {varlist} 中的变量数量。设 {it:A} 为 {it:V} 的前 k 列的矩阵。设 {it:b} 为 {it:V} 的最后一列，若 {it:V} 具有 k+1 列，则为 {it:b}；否则为零列。线性假设检验为 {it:A} 乘以 {it:varlist} 的均值列向量等于 {it:b}。 {cmd:mvtest} 忽略矩阵的行和列名称。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse milktruck}{p_end}

{pstd}检验变量均值是否相等{p_end}
{phang2}{cmd:. mvtest means fuel repair capital, equal}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse turnip}{p_end}

{pstd}检验变量均值是否等于给定向量{p_end}
{phang2}{cmd:. matrix Mstd = (15.0, 6.0, 2.85)}{p_end}
{phang2}{cmd:. mvtest means y*, equals(Mstd)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse metabolic}{p_end}

{pstd}检验在假设协方差矩阵相等的情况下，组均值是否相等{p_end}
{phang2}{cmd:. mvtest means y1 y2, by(group)}{p_end}

{pstd}检验前 3 个组均值是否相等，允许存在异质性{p_end}
{phang2}{cmd:. mvtest means y1 y2 if group<4, by(group) heterogeneous}{p_end}
    {hline}


{marker results}{...}
{title:存储的结果}

{pstd}
不带 {cmd:by()} 选项的 {cmd:mvtest means}（即，单样本均值检验）将在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(T2)}}霍特林 T2 统计量{p_end}
{synopt:{cmd:r(F)}}F 统计量{p_end}
{synopt:{cmd:r(df_m)}}模型自由度{p_end}
{synopt:{cmd:r(df_r)}}残差自由度{p_end}
{synopt:{cmd:r(p_F)}}F 检验的 p 值{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt:{cmd:r(Ftype)}}模型 F 检验类型{p_end}

{pstd}
带有 {cmd:by()} 但不带 {cmd:lr} 或 {cmd:heterogeneous} 选项的 {cmd:mvtest means}（即，假设均值相等的多样本检验）将在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(F)}}F 统计量{p_end}
{synopt:{cmd:r(df_m)}}模型自由度{p_end}
{synopt:{cmd:r(df_r)}}残差自由度{p_end}
{synopt:{cmd:r(p_F)}}F 检验的 p 值{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt:{cmd:r(Ftype)}}模型 F 检验类型{p_end}

{p2col 5 20 24 2:矩阵}{p_end}
{synopt:{cmd:r(stat_m)}}MANOVA 模型检验{p_end}

{pstd}
带有 {cmd:by()} 定义两个组且使用 {cmd:heterogeneous} 选项的 {cmd:mvtest means}（即，允许异质性的双样本均值检验）将在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(F)}}F 统计量{p_end}
{synopt:{cmd:r(df_m)}}模型自由度{p_end}
{synopt:{cmd:r(df_r)}}残差自由度{p_end}
{synopt:{cmd:r(p_F)}}F 检验的 p 值{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt:{cmd:r(Ftype)}}模型 F 检验类型{p_end}

{pstd}
带有 {cmd:by()} 定义多个组且使用 {cmd:heterogeneous} 选项的 {cmd:mvtest means}（即，允许异质性的多样本均值检验）将在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(chi2)}}卡方统计量{p_end}
{synopt:{cmd:r(df)}}卡方检验的自由度{p_end}
{synopt:{cmd:r(p_chi2)}}卡方检验的 p 值{p_end}
{synopt:{cmd:r(p_chi2_James)}}通过 James 近似获得的 Wald 检验的 p 值{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt:{cmd:r(chi2type)}}模型卡方检验类型{p_end}

{pstd}
带有 {cmd:by()} 和 {cmd:lr} 选项的 {cmd:mvtest means}（即，允许异质性的似然比多样本均值检验）将在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(chi2)}}卡方统计量{p_end}
{synopt:{cmd:r(df)}}卡方检验的自由度{p_end}
{synopt:{cmd:r(p_chi2)}}卡方检验的 p 值{p_end}
{synopt:{cmd:r(rc)}}返回代码{p_end}
{synopt:{cmd:r(uniq)}}如果保护运行 yielded/did not yield same solution，则返回 1/0（仅适用于 {cmd:protect()}）{p_end}
{synopt:{cmd:r(nprotect)}}保护运行的数量（仅适用于 {cmd:protect()}）{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt:{cmd:r(chi2type)}}模型卡方检验类型{p_end}

{p2col 5 20 24 2:矩阵}{p_end}
{synopt:{cmd:r(M)}}均值的最大似然估计{p_end}


{marker references}{...}
{title:参考文献}

{marker J1954}{...}
{phang}
James, G. S.  1954.  未知的种群方差比率下的单变量和多变量分析中的线性假设检验。
{it:Biometrika} 41: 19-43.

{marker KY2004}{...}
{phang}
Krishnamoorthy, K., 和 J. Yu. 2004.  针对多变量 Behrens-Fisher 问题的修改的 Nel 和 Van der Merwe 检验。
{it:Statistics and Probability Letters} 66: 161-169.

{marker MKB1979}{...}
{phang}
Mardia, K. V., J. T. Kent, 和 J. M. Bibby. 1979. {it:多变量分析}。
伦敦：学术出版社。

{marker NM1986}{...}
{phang}
Nel, D. G., 和 C. A. Van Der Merwe. 1986. 多变量 Behrens-Fisher 问题的解决方案。
{it:Communications in Statistics, Theory and Methods} 15: 3719-3735。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mvtest_means.sthlp>}