{smcl}
{* *! version 1.2.3  20aug2018}{...}
{viewerdialog "prtest" "dialog prtest"}{...}
{viewerdialog "prtesti" "dialog prtesti"}{...}
{vieweralsosee "[R] prtest" "mansection R prtest"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bitest" "help bitest_zh"}{...}
{vieweralsosee "[MV] hotelling" "help hotelling"}{...}
{vieweralsosee "[PSS-2] power oneproportion" "help power_oneproportion_zh"}{...}
{vieweralsosee "[PSS-2] power oneproportion, cluster" "help power_oneproportion_cluster_zh"}{...}
{vieweralsosee "[PSS-2] power twoproportions" "help power_twoproportions_zh"}{...}
{vieweralsosee "[PSS-2] power twoproportions, cluster" "help power_twoproportions_cluster_zh"}{...}
{vieweralsosee "[R] proportion" "help proportion_zh"}{...}
{vieweralsosee "[R] ttest" "help ttest_zh"}{...}
{viewerjumpto "Syntax" "prtest_zh##syntax"}{...}
{viewerjumpto "Menu" "prtest_zh##menu"}{...}
{viewerjumpto "Description" "prtest_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "prtest_zh##linkspdf"}{...}
{viewerjumpto "Options for prtest" "prtest_zh##prtest_options"}{...}
{viewerjumpto "Options for prtesti" "prtest_zh##prtesti_options"}{...}
{viewerjumpto "Remarks" "prtest_zh##remarks"}{...}
{viewerjumpto "Examples" "prtest_zh##examples"}{...}
{viewerjumpto "Stored results" "prtest_zh##results"}
{help prtest:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] prtest} {hline 2}}比例检验{p_end}
{p2col:}({mansection R prtest:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
单样本比例检验

{p 8 15 2}
{cmd:prtest} {varname} {cmd:==} {it:#p} {ifin} [{cmd:,} {it:onesampleopts}]


{phang}
使用组的双样本比例检验

{p 8 15 2}
{cmd:prtest} {varname} {ifin} {cmd:,} {opth "by(varlist:groupvar)"}
    [{it:twosamplegropts}]


{phang}
使用变量的双样本比例检验

{p 8 15 2}
{cmd:prtest} {it:{help varname_zh:varname1}} {cmd:==} {it:{help varname_zh:varname2}}
    {ifin} [{cmd:,} {opt l:evel(#)}]


{phang}
单样本比例检验的即时形式

{p 8 16 2}
{cmd:prtesti} {it:#obs1} {it:#p1} {it:#p2} 
[{cmd:,} {opt l:evel(#)} {opt c:ount}]


{phang}
双样本比例检验的即时形式

{p 8 16 2}{cmd:prtesti} {it:#obs1} {it:#p1} {it:#obs2} {it:#p2} 
[{cmd:,} {opt l:evel(#)} {opt c:ount}]


{marker onesampopts}{...}
{synoptset 20 tabbed}{...}
{synopthdr:单样本选项}
{synoptline}
{syntab:主要}
{synopt :{opt l:evel(#)}}置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opth cluster(varname)}}定义聚类的变量{p_end}
{synopt :{opt rho(#)}}组内相关系数{p_end}
{synoptline}

{marker groupopts}{...}
{synopthdr:双样本组选项}
{synoptline}
{syntab:主要}
{p2coldent :* {opth by(groupvar)}}定义组的变量{p_end}
{synopt :{opt l:evel(#)}}置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opth cluster(varname)}}定义聚类的变量{p_end}
{synopt :{opt rho(#)}}共同的组内相关系数{p_end}
{synopt :{opt rho1(#)}}组 1 的组内相关系数{p_end}
{synopt :{opt rho2(#)}}组 2 的组内相关系数{p_end}
{synoptline}
{p 4 6 2}* {opt by(groupvar)} 是必需的.{p_end}

{phang}
{cmd:by} 允许与 {cmd:prtest} 一起使用；请参见 {manhelp by D}。


{marker menu}{...}
{title:菜单}

    {title:prtest}

{phang2}
{bf:统计 > 概要、表格与检验 >}
    {bf:假设的经典检验 > 比例检验}

    {title:prtesti}

{phang2}
{bf:统计 > 概要、表格与检验 >}
     {bf:假设的经典检验 > 比例检验计算器}


{marker description}{...}
{title:描述}

{pstd}
{cmd:prtest} 使用大样本统计对比例的相等性进行检验。该检验可以对一个样本与假定的总体值进行检验，或者对从两个样本估计的总体比例进行差异性检验。支持聚类数据。

{pstd}
{cmd:prtesti} 是 {cmd:prtest} 的即时形式；请参见 {help immed_zh}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R prtestQuickstart:快速开始}

        {mansection R prtestRemarksandexamples:备注和示例}

        {mansection R prtestMethodsandformulas:方法与公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker prtest_options}{...}
{title:prtest 的选项}

{dlgtab:主要}

{phang}
{opth "by(varlist:groupvar)"} 指定一个包含给定观察值的组信息的数值变量。该变量必须只有两个值。不要将 {opt by()} 选择与 {cmd:by} 前缀混淆；两者可以一起指定。

{phang}
{opt level(#)} 指定置信水平，作为百分比，用于置信区间。默认值为 {cmd:level(95)} 或通过 {helpb set level} 设置。

{phang}
{opth cluster(varname)} 指定标识聚类的变量。 {opt cluster()} 选项在计算调整时是必需的。

{phang}
{opt rho(#)} 指定单样本检验的组内相关系数或双样本检验的共同组内相关系数。对于单样本检验，{opt rho()} 选项在聚类计算中是必需的。

{phang}
{opt rho1(#)} 指定用于双样本检验中组 1 的组内相关系数。{opt rho()} 选项，或同时使用 {cmd:rho1()} 和 {cmd:rho2()} 选项是用来调整聚类计算的必要条件。

{phang}
{opt rho2(#)} 指定用于双样本检验中组 2 的组内相关系数。{opt rho()} 选项，或同时使用 {cmd:rho1()} 和 {cmd:rho2()} 选项是用来调整聚类计算的必要条件。


{marker prtesti_options}{...}
{title:prtesti 的选项}

{dlgtab:主要}

{phang}
{opt level(#)} 指定置信水平，作为百分比，用于置信区间。默认值为 {cmd:level(95)} 或通过 {helpb set level} 设置。

{phang}
{opt count} 指定在 {cmd:prtest} 的即时形式中使用整数计数而非比例。在第一种语法中，{cmd:prtesti} 期待 {it:#obs1} 和 {it:#p1} 为计数 -- {it:#p1} {ul:<} {it:#obs1} -- 而 {it:#p2} 为比例。在第二种语法中，{cmd:prtesti} 期待所有四个数字为整数计数，即 {it:#obs1} {ul:>} {it:#p1}，并且 {it:#obs2} {ul:>} {it:#p2}。


{marker remarks}{...}
{title:备注}

{pstd}
对于样本量较小的单样本比例检验，以及要获取确切的 p 值，研究人员应使用 {help bitest_zh}。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. sysuse auto}{p_end}

{phang}单样本比例检验{p_end}
{phang2}{cmd:. prtest foreign==.4}

{phang}考虑聚类调整的单样本比例检验，聚类由 {cmd:rep78} 定义，组内相关系数为 0.4{p_end}
{phang2}{cmd:. prtest foreign==.4, cluster(rep78) rho(0.4)}{p_end}

    {hline}
    设置
{phang2}{cmd:. webuse cure}{p_end}

{phang}使用变量的双样本比例检验{p_end}
{phang2}{cmd:. prtest cure1==cure2}

    {hline}
    设置
{phang2}{cmd:. webuse cure2}{p_end}

{phang}对 {cmd:cure} 在男性和女性中具有相同比例的双样本检验{p_end}
{phang2}{cmd:. prtest cure, by(sex)}

   {hline}
    设置
{phang2}{cmd:. webuse pneumoniacrt}{p_end}

{phang}对 {cmd:pneumonia} 在两个疫苗组中的比例进行检验，并考虑由 {cmd:cluster} 定义的聚类调整，组内相关系数为 0.02{p_end}
{phang2}{cmd:. prtest pneumonia, by(vaccine) cluster(cluster) rho(0.02)}

    {hline}
{phang}单样本比例检验的即时形式{p_end}
{phang2}{cmd:. prtesti 50 .52 .70}{p_end}

{phang}前两个数字为计数{p_end}
{phang2}{cmd:. prtesti 30 4  .7, count}{p_end}

{phang}双样本比例检验的即时形式{p_end}
{phang2}{cmd:. prtesti 30 .4  45 .67}{p_end}

{phang}所有数字为计数{p_end}
{phang2}{cmd:. prtesti 30 4  45 17, count}{p_end}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
单样本 {opt prtest} 和 {opt prtesti} 在 {opt r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N)}}样本大小{p_end}
{synopt:{cmd:r(P)}}样本比例{p_end}
{synopt:{cmd:r(se)}}样本比例的标准误{p_end}
{synopt:{cmd:r(lb)}}样本比例的下置信界{p_end}
{synopt:{cmd:r(ub)}}样本比例的上置信界{p_end}
{synopt:{cmd:r(z)}}z 统计量{p_end}
{synopt:{cmd:r(p_l)}}下单侧 p 值{p_end}
{synopt:{cmd:r(p)}}双侧 p 值{p_end}
{synopt:{cmd:r(p_u)}}上单侧 p 值{p_end}
{synopt:{cmd:r(level)}}置信水平{p_end}

{pstd}
考虑聚类调整的单样本 {cmd:prtest} 还在 {cmd:r()} 中存储以下内容：

{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(K)}}聚类数 K{p_end}
{synopt:{cmd:r(M)}}聚类大小 M{p_end}
{synopt:{cmd:r(rho)}}组内相关系数{p_end}
{synopt:{cmd:r(CV_cluster)}}聚类大小的变异系数{p_end}

{pstd}
双样本 {cmd:prtest} 和双样本 {cmd:prtesti} 在 {cmd:r()} 中存储以下内容：

{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N1)}}总体一的样本大小{p_end}
{synopt:{cmd:r(N2)}}总体二的样本大小{p_end}
{synopt:{cmd:r(P1)}}总体一的样本比例{p_end}
{synopt:{cmd:r(P2)}}总体二的样本比例{p_end}
{synopt:{cmd:r(P_diff)}}比例差异{p_end}
{synopt:{cmd:r(se1)}}总体一样本比例的标准误{p_end}
{synopt:{cmd:r(se2)}}总体二样本比例的标准误{p_end}
{synopt:{cmd:r(se_diff)}}比例差异的标准误{p_end}
{synopt:{cmd:r(se_diff0)}}零假设下的比例差异的标准误{p_end}
{synopt:{cmd:r(lb1)}}总体一样本比例的下置信界{p_end}
{synopt:{cmd:r(ub1)}}总体一样本比例的上置信界{p_end}
{synopt:{cmd:r(lb2)}}总体二样本比例的下置信界{p_end}
{synopt:{cmd:r(ub2)}}总体二样本比例的上置信界{p_end}
{synopt:{cmd:r(lb_diff)}}比例差异的下置信界{p_end}
{synopt:{cmd:r(ub_diff)}}比例差异的上置信界{p_end}
{synopt:{cmd:r(z)}}z 统计量{p_end}
{synopt:{cmd:r(p_l)}}下单侧 p 值{p_end}
{synopt:{cmd:r(p)}}双侧 p 值{p_end}
{synopt:{cmd:r(p_u)}}上单侧 p 值{p_end}
{synopt:{cmd:r(level)}}置信水平{p_end}

{pstd}
使用 {cmd:by()} 选项的考虑聚类调整后的双样本 {cmd:prtest} 还在 {cmd:r()} 中存储以下内容：

{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(K1)}}总体一的聚类数 K_1{p_end}
{synopt:{cmd:r(K2)}}总体二的聚类数 K_2{p_end}
{synopt:{cmd:r(M1)}}总体一的聚类大小 M_1{p_end}
{synopt:{cmd:r(M2)}}总体二的聚类大小 M_2{p_end}
{synopt:{cmd:r(rho)}}共同的组内相关系数{p_end}
{synopt:{cmd:r(rho1)}}总体一的组内相关系数{p_end}
{synopt:{cmd:r(rho2)}}总体二的组内相关系数{p_end}
{synopt:{cmd:r(CV_cluster1)}}总体一的聚类大小变异系数{p_end}
{synopt:{cmd:r(CV_cluster2)}}总体二的聚类大小变异系数{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <prtest.sthlp>}