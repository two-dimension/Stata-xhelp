{smcl}
{* *! version 1.2.3  20aug2018}{...}
{viewerdialog "ztest" "dialog ztest"}{...}
{viewerdialog "ztesti" "dialog ztesti"}{...}
{vieweralsosee "[R] ztest" "mansection R ztest"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ci" "help ci_zh"}{...}
{vieweralsosee "[R] esize" "help esize_zh"}{...}
{vieweralsosee "[MV] hotelling" "help hotelling"}{...}
{vieweralsosee "[R] mean" "help mean_zh"}{...}
{vieweralsosee "[R] oneway" "help oneway_zh"}{...}
{vieweralsosee "[PSS-2] power onemean" "help power onemean"}{...}
{vieweralsosee "[PSS-2] power onemean, cluster" "help power onemean cluster"}{...}
{vieweralsosee "[PSS-2] power pairedmeans" "help power pairedmeans"}{...}
{vieweralsosee "[PSS-2] power twomeans" "help power twomeans"}{...}
{vieweralsosee "[PSS-2] power twomeans, cluster" "help power twomeans cluster"}{...}
{vieweralsosee "[R] ttest" "help ttest_zh"}{...}
{viewerjumpto "Syntax" "ztest_zh##syntax"}{...}
{viewerjumpto "Menu" "ztest_zh##menu"}{...}
{viewerjumpto "Description" "ztest_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "ztest_zh##linkspdf"}{...}
{viewerjumpto "Options" "ztest_zh##options"}{...}
{viewerjumpto "Examples" "ztest_zh##examples"}{...}
{viewerjumpto "Stored results" "ztest_zh##results"}
{help ztest:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] ztest} {hline 2}}z 检验（均值比较检验，已知方差）{p_end}
{p2col:}({mansection R ztest:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
单样本 z 检验

{p 8 14 2}
{cmd:ztest}
{varname}
{cmd:==}
{it:#}
{ifin}
[{cmd:,} {it:{help ztest##onesampleopts:单样本选项}}]


{pstd}
使用组的两样本 z 检验

{p 8 14 2}
{cmd:ztest}
{varname}
{ifin}
{cmd:,}
{opth by:(varlist:groupvar)}
[{it:{help ztest##twosamplegropts:两样本组选项}}]


{pstd}
使用变量的两样本 z 检验

{p 8 14 2}
{cmd:ztest}
{varname:1}
{cmd:==}
{varname:2}
{ifin}{cmd:,}
{opt unp:aired}
[{it:{help ztest##twosamplevaropts:两样本变量选项}}]


{pstd}
配对 z 检验

{p 8 14 2}
{cmd:ztest}
{varname:1}
{cmd:==}
{varname:2}
{ifin}
{cmd:,} 
{opt sddiff(#)}
[{opt l:evel(#)}]

{p 8 14 2}
{cmd:ztest}
{varname:1}
{cmd:==}
{varname:2}
{ifin}
{cmd:,} 
{opt corr(#)}
[{it:{help ztest##pairedopts:配对选项}}]


{pstd}
单样本 z 检验的即刻形式

{p 8 14 2}
{cmd:ztesti}
{it:#obs}
{it:#mean}
{it:#sd}
{it:#val}
[{cmd:,}
{opt l:evel(#)}]


{pstd}
两样本非配对 z 检验的即刻形式

{p 8 14 2}
{cmd:ztesti}
{it:#obs1}
{it:#mean1}
{it:#sd1}
{it:#obs2}
{it:#mean2}
{it:#sd2}
[{cmd:,} 
{opt l:evel(#)}]


{synoptset 20 tabbed}{...}
{marker onesampleopts}{...}
{synopthdr:单样本选项}
{synoptline}
{syntab:主要}
{synopt:{opt sd(#)}}一个总体的标准差；默认值为
	{cmd:sd(1)}{p_end}
{synopt:{opt l:evel(#)}}置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opth cluster(varname)}}定义集群的变量{p_end}
{synopt :{opt rho(#)}}组内相关性{p_end}
{synoptline}

{marker twosamplegropts}{...}
{synopthdr:两样本组选项}
{synoptline}
{syntab:主要}
{p2coldent:* {opth by:(varlist:groupvar)}}定义组的变量{p_end}
{synopt:{opt unp:aired}}非配对检验；在指定 {cmd:by()} 时隐含{p_end}
{synopt:{opt sd(#)}}两总体的共同标准差；默认值为 {cmd:sd(1)}{p_end}
{synopt:{opt sd1(#)}}第一总体的标准差；需要
	{cmd:sd2()}，且不能与 {cmd:sd()} 组合使用{p_end}
{synopt:{opt sd2(#)}}第二总体的标准差；需要
	{cmd:sd1()}，且不能与 {cmd:sd()} 组合使用 {p_end}
{synopt:{opt l:evel(#)}}置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opth cluster(varname)}}定义集群的变量{p_end}
{synopt :{opt rho(#)}}共同组内相关性{p_end}
{synopt :{opt rho1(#)}}组1的组内相关性{p_end}
{synopt :{opt rho2(#)}}组2的组内相关性{p_end}
{synoptline}
{p 4 6 2}* {opt by(groupvar)} 是必需的.{p_end}

{marker twosamplevaropts}{...}
{synopthdr:两样本变量选项}
{synoptline}
{syntab:主要}
{p2coldent:* {opt unp:aired}}非配对检验{p_end}
{synopt:{opt sd(#)}}两总体的共同标准差；默认值为 {cmd:sd(1)}{p_end}
{synopt:{opt sd1(#)}}第一总体的标准差；需要
	{cmd:sd2()}，且不能与 {cmd:sd()} 组合使用{p_end}
{synopt:{opt sd2(#)}}第二总体的标准差；需要
	{cmd:sd1()}，且不能与 {cmd:sd()} 组合使用 {p_end}
{synopt:{opt l:evel(#)}}置信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p 4 6 2}* {opt unpaired} 是必需的.{p_end}

{marker pairedopts}{...}
{synopthdr:配对选项}
{synoptline}
{syntab:主要}
{p2coldent:* {opt corr(#)}}配对观察之间的相关性{p_end}
{synopt:{opt sd(#)}}两总体的共同标准差；
	默认值为 {cmd:sd(1)}；不能与 {cmd:sd1()}、
	{cmd:sd2()} 或 {cmd:sddiff()} 组合使用{p_end}
{synopt:{opt sd1(#)}}第一总体的标准差；需要
	{cmd:corr()} 和 {cmd:sd2()}，且不能与 {cmd:sd()} 或
	{cmd:sddiff()} 组合使用{p_end}
{synopt:{opt sd2(#)}}第二总体的标准差；需要
	{cmd:corr()} 和 {cmd:sd1()}，且不能与 {cmd:sd()} 或
	{cmd:sddiff()} 组合使用{p_end}
{synopt:{opt l:evel(#)}}置信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* {opt corr(#)} 是必需的.{p_end}

{phang}
{opt by} 与 {cmd:ztest} 一起使用是允许的；请参见 {manhelp by D}.


{marker menu}{...}
{title:菜单}

    {title:ztest}

{phang2}
{bf:统计 > 汇总、表格和检验 > 经典假设检验}
       {bf:> z 检验（均值比较检验，已知方差）}

    {title:ztesti}

{phang2}
{bf:统计 > 汇总、表格和检验 > 经典假设检验}
       {bf:> z 检验计算器}


{marker description}{...}
{title:描述}

{pstd}
{opt ztest} 执行 z 检验以测试均值的相等性，假设方差是已知的。该检验可以针对一个样本与假设的总体值进行，或针对两个样本的总体均值无差异进行。可针对配对和非配对数据进行两样本检验。也支持聚类数据。

{pstd}
{opt ztesti} 是 {opt ztest} 的即刻形式；请参见 {help immed_zh}。

{pstd}
当方差未知时进行均值比较，请使用 {opt ttest}； 
参见 {manhelp ttest R}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R ztestQuickstart:快速入门}

        {mansection R ztestRemarksandexamples:备注和示例}

        {mansection R ztestMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth by:(varlist:groupvar)} 指定 {it:groupvar}，定义 {opt ztest} 将使用的两个组，以检验其均值是否相等。指定 {opt by(groupvar)} 隐含进行非配对（两样本） z 检验。不要将 {opt by()} 选项与 {cmd:by} 前缀混淆；您可以同时指定两者。

{phang}
{opt unpaired} 指定数据被视为非配对的。 {opt unpaired} 选项用于比较的两个值集位于不同变量中的情况。

{phang}
{opt sddiff(#)} 指定配对观察之间差异的总体标准差，用于配对 z 检验。对于这种检验，必须指定 {cmd:sddiff()} 或 {cmd:corr()}。

{phang}
{opt corr(#)} 指定配对观察之间的相关性，用于配对 z 检验。此选项与 {cmd:sd1()} 和 {cmd:sd2()} 或与 {cmd:sd()} 一起用于计算配对观察之间差异的标准差，除非该标准差在 {cmd:sddiff()} 选项中直接提供。对于配对 z 检验，必须指定 {cmd:sddiff()} 或 {cmd:corr()}。

{phang}
{opt sd(#)} 指定单样本 z 检验的总体标准差或两样本 z 检验的共同标准差。默认值为 {cmd:sd(1)}。 {cmd:sd()} 不能与 {cmd:sd1()}、{cmd:sd2()} 或 {cmd:sddiff()} 组合使用。

{phang}
{opt sd1(#)} 指定第一总体或组的标准差。当与 {opt by(groupvar)} 一起指定 {cmd:sd1()} 时，第一个组由排序后的 {it:groupvar} 的第一个类别定义。 {cmd:sd1()} 需要 {cmd:sd2()} ，且不能与 {cmd:sd()} 或 {cmd:sddiff()} 组合使用。

{phang}
{opt sd2(#)} 指定第二总体或组的标准差。当与 {opt by(groupvar)} 一起指定 {cmd:sd2()} 时，第二个组由排序后的 {it:groupvar} 的第二个类别定义。 {cmd:sd2()} 需要 {cmd:sd1()} ，且不能与 {cmd:sd()} 或 {cmd:sddiff()} 组合使用。

{phang} {opt level(#)} 指定置信水平，单位为百分比，适用于置信区间。默认值为 {cmd:level(95)}，或由 {helpb set level} 设置。

{phang}
{opth cluster(varname)} 指定识别集群的变量。 {opt cluster()} 选项是调整计算以适应聚类所必需的。

{phang}
{opt rho(#)} 指定单样本检验的组内相关性，或两样本检验的共同组内相关性。 {opt rho()} 选项是调整单样本检验聚类计算所必需的。

{phang}
{opt rho1(#)} 指定使用组的两样本检验的第一组的组内相关性。 {opt rho()} 选项或 {cmd:rho1()} 和 {cmd:rho2()} 两个选项一起用来调整聚类计算。

{phang}
{opt rho2(#)} 指定使用组的两样本检验的第二组的组内相关性。 {opt rho()} 选项或 {cmd:rho1()} 和 {cmd:rho2()} 两个选项一起用来调整聚类计算。

 
{pstd}
使用 {cmd:by()} 时，{cmd:sd1()} 和 {cmd:sd2()} 或 {cmd:sd()} 用于指定由 {it:groupvar} 定义的两个组的总体标准差，用于非配对两样本 z 检验（使用组）。默认情况下，假设共同标准差为 1，即 {cmd:sd(1)}。

{pstd}
使用 {cmd:unpaired} 时，{cmd:sd1()} 和 {cmd:sd2()} 或 {cmd:sd()} 用于指定 {it:varname1} 和 {it:varname2} 的总体标准差，用于非配对两样本 z 检验（使用变量）。默认情况下，假设共同标准差为 1，即 {cmd:sd(1)}。

{pstd}
选项 {cmd:corr()}、{cmd:sd1()} 和 {cmd:sd2()} 或 {cmd:corr()} 和 {cmd:sd()} 用于配对 z 检验，以计算配对观察之间差异的标准差。默认情况下，假设两总体的共同标准差为 1，即 {cmd:sd(1)}。或者，配对观察之间差异的标准差可以通过 {cmd:sddiff()} 选项直接提供。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. sysuse auto}

{pstd}
单样本 z 检验；检验 {cmd:mpg} 的均值与 20 的差异{p_end}
{phang2}{cmd:. ztest mpg==20, sd(6)}

{pstd}
考虑聚类的单样本 z 检验，聚类由 {cmd:rep78} 定义，组内相关性为 0.2{p_end}
{phang2}{cmd:. ztest mpg==20, sd(6) cluster(rep78) rho(0.2)}

    {hline}
    设置
{phang2}{cmd:. webuse fuel3}

{pstd}使用组的两样本 z 检验{p_end}
{phang2}{cmd:. ztest mpg, by(treated) sd1(2.7) sd2(3.2)}

    {hline}
    设置
{phang2}{cmd:. webuse dcfd_trial}

{pstd}使用组的两样本 z 检验，考虑聚类，聚类由 {cmd:practice} 定义，共同标准差为 0.35，组内相关性为 0.028{p_end}
{phang2}{cmd:. ztest lbmi, by(group) sd(0.35) cluster(practice) rho(0.028)}

    {hline}
    设置
{phang2}{cmd:. webuse fuel}

{pstd}使用变量的两样本非配对 z 检验{p_end}
{phang2}{cmd:. ztest mpg1==mpg2, unpaired sd(3)}

   {hline}
    设置
{phang2}{cmd:. webuse fuel}

{pstd}配对 z 检验{p_end}
{phang2}{cmd:. ztest mpg1==mpg2, corr(.6) sd1(2.7) sd2(3.2)}

    {hline}
{pstd}
即刻形式；n=24, m=62.6, sd=15.8；检验 m=75{p_end}
{phang2}{cmd:. ztesti 24 62.6 15.8 75, level(90)}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
单样本 {cmd:ztest} 和 {cmd:ztesti} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N)}}样本大小{p_end}
{synopt:{cmd:r(mu)}}样本均值{p_end}
{synopt:{cmd:r(sd)}}标准差{p_end}
{synopt:{cmd:r(se)}}标准误{p_end}
{synopt:{cmd:r(lb)}}单样本均值的下置信界{p_end}
{synopt:{cmd:r(ub)}}单样本均值的上置信界{p_end}
{synopt:{cmd:r(z)}}z 统计量{p_end}
{synopt:{cmd:r(p_l)}}下单侧 p 值{p_end}
{synopt:{cmd:r(p)}}双侧 p 值{p_end}
{synopt:{cmd:r(p_u)}}上单侧 p 值{p_end}
{synopt:{cmd:r(level)}}置信水平{p_end}

{pstd}
考虑聚类的单样本 {cmd:ztest} 还在 {cmd:r()} 中存储以下内容：

{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(K)}}集群数量 K{p_end}
{synopt:{cmd:r(M)}}集群大小 M{p_end}
{synopt:{cmd:r(rho)}}组内相关性{p_end}
{synopt:{cmd:r(CV_cluster)}}集群大小的变异系数{p_end}

{pstd}
两样本 {cmd:ztest} 和 {cmd:ztesti} 在 {cmd:r()} 中存储以下内容：

{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N1)}}总体一的样本大小{p_end}
{synopt:{cmd:r(N2)}}总体二的样本大小{p_end}
{synopt:{cmd:r(mu1)}}总体一的样本均值{p_end}
{synopt:{cmd:r(mu2)}}总体二的样本均值{p_end}
{synopt:{cmd:r(mu_diff)}}均值差异{p_end}
{synopt:{cmd:r(corr)}}配对观察之间的相关性；如果指定了 {cmd:corr()} 选项{p_end}
{synopt:{cmd:r(sd)}}共同标准差{p_end}
{synopt:{cmd:r(sd1)}}总体一的标准差{p_end}
{synopt:{cmd:r(sd2)}}总体二的标准差{p_end}
{synopt:{cmd:r(sd_diff)}}配对观察之间差异的标准差{p_end}
{synopt:{cmd:r(se1)}}总体一样本均值的标准误{p_end}
{synopt:{cmd:r(se2)}}总体二样本均值的标准误{p_end}
{synopt:{cmd:r(se_diff)}}均值差异的标准误{p_end}
{synopt:{cmd:r(lb1)}}总体一样本均值的下置信界{p_end}
{synopt:{cmd:r(ub1)}}总体一样本均值的上置信界{p_end}
{synopt:{cmd:r(lb2)}}总体二样本均值的下置信界{p_end}
{synopt:{cmd:r(ub2)}}总体二样本均值的上置信界{p_end}
{synopt:{cmd:r(lb_diff)}}均值差异的下置信界{p_end}
{synopt:{cmd:r(ub_diff)}}均值差异的上置信界{p_end}
{synopt:{cmd:r(z)}}z 统计量{p_end}
{synopt:{cmd:r(p_l)}}下单侧 p 值{p_end}
{synopt:{cmd:r(p)}}双侧 p 值{p_end}
{synopt:{cmd:r(p_u)}}上单侧 p 值{p_end}
{synopt:{cmd:r(level)}}置信水平{p_end}

{pstd}
使用 {cmd:by()} 选项的考虑聚类的两样本 {cmd:ztest} 还在 {cmd:r()} 中存储以下内容：

{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(K1)}}总体一的集群数量 K_1{p_end}
{synopt:{cmd:r(K2)}}总体二的集群数量 K_2{p_end}
{synopt:{cmd:r(M1)}}总体一的集群大小 M_1{p_end}
{synopt:{cmd:r(M2)}}总体二的集群大小 M_2{p_end}
{synopt:{cmd:r(rho)}}共同组内相关性{p_end}
{synopt:{cmd:r(rho1)}}总体一的组内相关性{p_end}
{synopt:{cmd:r(rho2)}}总体二的组内相关性{p_end}
{synopt:{cmd:r(CV_cluster1)}}总体一集群大小的变异系数{p_end}
{synopt:{cmd:r(CV_cluster2)}}总体二集群大小的变异系数{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ztest.sthlp>}