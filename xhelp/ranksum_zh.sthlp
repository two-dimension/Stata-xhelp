{smcl}
{* *! version 1.1.15  10dec2018}{...}
{viewerdialog ranksum "dialog ranksum"}{...}
{viewerdialog median "dialog median"}{...}
{vieweralsosee "[R] ranksum" "mansection R ranksum"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] signrank" "help signrank_zh"}{...}
{vieweralsosee "[R] ttest" "help ttest_zh"}{...}
{viewerjumpto "Syntax" "ranksum_zh##syntax"}{...}
{viewerjumpto "Menu" "ranksum_zh##menu"}{...}
{viewerjumpto "Description" "ranksum_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "ranksum_zh##linkspdf"}{...}
{viewerjumpto "Options for ranksum" "ranksum_zh##options_ranksum"}{...}
{viewerjumpto "Options for median" "ranksum_zh##options_median"}{...}
{viewerjumpto "Examples" "ranksum_zh##examples"}{...}
{viewerjumpto "Stored results" "ranksum_zh##results"}{...}
{viewerjumpto "References" "ranksum_zh##references"}
{help ranksum:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] ranksum} {hline 2}}对未匹配数据的平等性检验{p_end}
{p2col:}({mansection R ranksum:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{phang}
Wilcoxon 积秩和检验

{p 8 19 2}
{cmd:ranksum} {varname} {ifin}{cmd:,}
    {cmd:by(}{it:{help varlist_zh:groupvar}}{cmd:)} [{cmd:exact} {cmd:porder}]

{phang}
非参数中位数平等检验

{p 8 18 2}
{cmd:median} {varname} {ifin} 
[{it:{help ranksum##weight:weight}}]
{cmd:,}
     {cmd:by(}{it:{help varlist_zh:groupvar}}{cmd:)}
[{it:{help ranksum##median_options:median_options}}]

{synoptset 21 tabbed}{...}
{synopthdr:ranksum_options}
{synoptline}
{syntab:主}
{p2coldent:* {opth by:(varlist:groupvar)}}分组变量{p_end}
{synopt :{opt exact}}报告秩和检验的精确 p 值；默认情况下，当总样本量 {ul:<} 200 时计算精确 p 值{p_end}
{synopt :{opt porder}}第一个组的变量大于第二个组的变量的概率{p_end}
{synoptline}

{marker median_options}{...}
{synopthdr:median_options}
{synoptline}
{syntab:主}
{p2coldent:* {opth by:(varlist:groupvar)}}分组变量{p_end}
{synopt :{opt exact}}报告由 Fisher 精确检验计算的 p 值{p_end}
{synopt :{cmdab:med:ianties(below)}}将等于中位数的值分配到下组{p_end}
{synopt :{cmdab:med:ianties(above)}}将等于中位数的值分配到上组{p_end}
{synopt :{cmdab:med:ianties(drop)}}从分析中丢弃等于中位数的值{p_end}
{synopt :{cmdab:med:ianties(split)}}将等于中位数的值均分到两个组中{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* {opt by(groupvar)} 是必需的。{p_end}
{p 4 6 2}{opt by} 允许与 {cmd:ranksum} 和 {cmd:median} 一起使用；
请参见 {manhelp by D}.{p_end}
{marker weight}{...}
{p 4 6 2}{opt fweight} 允许与 {cmd:median} 一起使用；见 
{help weight_zh}.{p_end}

{marker menu}{...}
{title:菜单}

    {title:ranksum}

{phang2}
{bf:统计 > 非参数分析 > 假设检验 >}
        {bf:Wilcoxon 积秩和检验}

    {title:median}

{phang2}
{bf:统计 > 非参数分析 > 假设检验 >}
        {bf:K-样本中位数平等检验}

{marker description}{...}
{title:描述}

{pstd}
{cmd:ranksum} 通过使用 Wilcoxon 积秩和检验来检验一个假设，即两个独立样本（即，未匹配数据）来自于同一分布的总体，这个检验也称为 Mann-Whitney 两样本统计量
({help ranksum##W1945:Wilcoxon 1945};
 {help ranksum##MW1947:Mann and Whitney 1947}).

{pstd}
{cmd:median} 执行 K-样本中位数平等的非参数检验。它检验零假设，即 K 个样本来自具有相同中位数的总体。对于两个样本，同时计算带有和不带有连续性校正的卡方检验统计量。

{pstd}
{cmd:ranksum} 和 {cmd:median} 用于未匹配的数据。有关匹配数据的平等性检验，请参见 {manhelp signrank R}。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R ranksumQuickstart:快速入门}

        {mansection R ranksumRemarksandexamples:备注和示例}

        {mansection R ranksumMethodsandformulas:方法与公式}

{pstd}
上述部分不包括在此帮助文件中。

{marker options_ranksum}{...}
{title:ranksum 的选项}

{dlgtab:主}

{phang}
{cmd:by(}{it:{help varlist_zh:groupvar}}{cmd:)} 是必需的。它指定分组变量的名称。

{phang}
{opt exact} 指定计算精确 p 值，除了近似 p 值。精确 p 值基于检验统计量的实际随机化分布。近似 p 值基于随机化分布的正态近似。默认情况下，仅当样本量 n = n_1 + n_2 {ul:<} 200 时计算精确 p 值，因为正态近似在小样本中可能不精确。通过指定 {cmd:noexact} 可以抑制精确计算。对于大于 200 的样本量，必须指定 {cmd:exact} 才能计算精确 p 值。精确计算在样本量 n {ul:<} 1000 时可用。随着样本量接近 1000，计算时间显著增加。

{phang}
{opt porder} 显示从第一个总体随机抽样的值大于从第二个总体随机抽样的值的估计概率。

{marker options_median}{...}
{title:median 的选项}

{dlgtab:主}

{phang}
{cmd:by(}{it:{help varlist_zh:groupvar}}{cmd:)} 是必需的。它指定分组变量的名称。

{phang}
{opt exact} 显示由 Fisher 精确检验计算的 p 值。对于两个样本，显示单侧和双侧的 p 值。

{phang}
{cmd:medianties(below}|{opt above}|{opt drop}|{opt split)} 指定如何处理等于整体中位数的值。中位数检验通过使用所有观察值计算 {varname} 的中位数，然后将观察值分为低于中位数和高于中位数的两组。当观察值的值等于样本中位数时，可以通过指定 {cmd:medianties(drop)} 将其从分析中丢弃；通过指定 {cmd:medianties(above)} 或 {cmd:medianties(below)} 分别将其添加到中位数上方或下方的组中；或者如果有多个观察值的值等于中位数，则可以通过指定 {cmd:medianties(split)} 将它们均等地分配到两个组。如果未指定此选项，{cmd:medianties(below)} 将被视为默认选项。

{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse fuel2}{p_end}

{pstd}对通过 {cmd:treat} 定义的两个组进行 {cmd:mpg} 的秩和检验{p_end}
{phang2}{cmd:. ranksum mpg, by(treat)}{p_end}

{pstd}与上述相同，但包括对于 {cmd:treat} = 0 的观察值的 {cmd:mpg} 值大于 {cmd:treat} = 1 的观察值的 {cmd:mpg} 值的概率估计{p_end}
{phang2}{cmd:. ranksum mpg, by(treat) porder}{p_end}

{pstd}对通过 {cmd:treat} 定义的两个组之间的 {cmd:mpg} 中位数的平等性执行 Pearson 卡方检验{p_end}
{phang2}{cmd:. median mpg, by(treat)}{p_end}

{pstd}报告通过 Fisher 精确检验计算的 {cmd:mpg} 在通过 {cmd:treat} 定义的两个组之间的中位数平等性的 p 值{p_end}
{phang2}{cmd:. median mpg, by(treat) exact}{p_end}

    {hline}
    设置
{phang2}{cmd:. webuse medianxmpl}{p_end}

{pstd}对通过 {cmd:gender} 定义的两个组之间的 {cmd:age} 中位数的平等性执行 Pearson 卡方检验{p_end}
{phang2}{cmd:. median age, by(gender)}{p_end}

{pstd}与上述命令相同{p_end}
{phang2}{cmd:. median age, by(gender) medianties(below)}{p_end}

{pstd}与上述命令相同，但对于 {cmd:age} 的值等于中位数的观察值，将它们放在中位数上方的组中{p_end}
{phang2}{cmd:. median age, by(gender) medianties(above)}{p_end}

{pstd}与上述命令相同，但丢弃 {cmd:age} 的值等于中位数的观察值{p_end}
{phang2}{cmd:. median age, by(gender) medianties(drop)}{p_end}

{pstd}与上述命令相同，但对于 {cmd:age} 的值等于中位数的观察值，将它们均等划分到两个组中{p_end}
{phang2}{cmd:. median age, by(gender) medianties(split)}{p_end}
    {hline}

{marker results}{...}
{title:存储结果}

{pstd}
{cmd:ranksum} 储存以下内容到 {cmd:r()}:

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}样本量{p_end}
{synopt:{cmd:r(N_1)}}第一组的样本量{p_end}
{synopt:{cmd:r(N_2)}}第二组的样本量{p_end}
{synopt:{cmd:r(z)}}z 统计量{p_end}
{synopt:{cmd:r(Var_a)}}调整后的方差{p_end}
{synopt:{cmd:r(group1)}}第一组变量的值{p_end}
{synopt:{cmd:r(sum_obs)}}第一组的观察秩和{p_end}
{synopt:{cmd:r(sum_exp)}}第一组的期望秩和{p_end}
{synopt:{cmd:r(p)}}来自正态近似的双侧 p 值{p_end}
{synopt:{cmd:r(p_l)}}来自正态近似的下侧单一 p 值{p_end}
{synopt:{cmd:r(p_u)}}来自正态近似的上侧单一 p 值{p_end}
{synopt:{cmd:r(p_exact)}}双侧精确 p 值{p_end}
{synopt:{cmd:r(p_l_exact)}}下侧单一精确 p 值{p_end}
{synopt:{cmd:r(p_u_exact)}}上侧单一精确 p 值{p_end}
{synopt:{cmd:r(porder)}}从第一个总体抽样值大于从第二个总体抽样值的概率{p_end}

{pstd}
{cmd:median} 储存以下内容到 {cmd:r()}:

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}样本量{p_end}
{synopt:{cmd:r(chi2)}}Pearson 的卡方{p_end}
{synopt:{cmd:r(chi2_cc)}}经过连续性校正的 Pearson 卡方{p_end}
{synopt:{cmd:r(groups)}}比较的组数{p_end}
{synopt:{cmd:r(p)}}针对 Pearson 卡方检验的 p 值{p_end}
{synopt:{cmd:r(p_cc)}}经过连续性校正的 p 值{p_end}
{synopt:{cmd:r(p_exact)}}Fisher 精确 p 值{p_end}
{synopt:{cmd:r(p1_exact)}}单侧 Fisher 精确 p 值{p_end}
{p2colreset}{...}

{marker references}{...}
{title:参考文献}

{marker MW1947}{...}
{phang}
Mann, H. B., 和 D. R. Whitney. 1947. 关于两随机变量的一个检验是否在随机上更大。
{it:数学统计年鉴} 18: 50-60.

{marker W1945}{...}
{phang}
Wilcoxon, F. 1945. 通过排名方法进行个体比较。
{it:生物统计学} 1: 80-83.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ranksum.sthlp>}