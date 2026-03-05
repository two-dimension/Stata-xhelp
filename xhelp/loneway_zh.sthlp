{smcl}
{* *! version 1.1.10  19oct2017}{...}
{viewerdialog loneway "dialog loneway"}{...}
{vieweralsosee "[R] loneway" "mansection R loneway"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] anova" "help anova_zh"}{...}
{vieweralsosee "[R] icc" "help icc_zh"}{...}
{vieweralsosee "[R] oneway" "help oneway_zh"}{...}
{viewerjumpto "语法" "loneway_zh##syntax"}{...}
{viewerjumpto "菜单" "loneway_zh##menu"}{...}
{viewerjumpto "描述" "loneway_zh##description"}{...}
{viewerjumpto "PDF文档链接" "loneway_zh##linkspdf"}{...}
{viewerjumpto "选项" "loneway_zh##options"}{...}
{viewerjumpto "备注" "loneway_zh##remarks"}{...}
{viewerjumpto "示例" "loneway_zh##examples"}{...}
{viewerjumpto "存储结果" "loneway_zh##results"}
{help loneway:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] loneway} {hline 2}}大型单因素方差分析，随机效应和可靠性{p_end}
{p2col:}({mansection R loneway:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:loneway} {it:响应变量} {it:组变量} {ifin} 
[{it:{help loneway##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 12 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{synopt :{opt mea:n}}F分布的期望值；默认值为1{p_end}
{synopt :{opt med:ian}}F分布的中位数；默认值为1{p_end}
{synopt :{opt ex:act}}精确置信区间（组必须相等且无权重）{p_end}
{synopt :{opt l:evel(#)}}设置置信水平；默认值是
{cmd:level(95)}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}{opt by} 是允许的；请参见 {manhelp by D}.{p_end}
{marker weight}{...}
{p 4 6 2}{cmd:aweight}是允许的；请参见 {help weight_zh}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型与相关 > ANOVA/MANOVA > 大型单因素方差分析}


{marker description}{...}
{title:描述}

{pstd}
{cmd:loneway} 拟合单因素方差分析（ANOVA）模型。
{cmd:loneway} 放宽了 {help oneway_zh} 强加的限制，即因素的水平不得超过376个。该命令还报告组内相关性、其标准误差和置信区间；对组平均值的估计可靠性；组效应的标准差；以及组内效应的标准差。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R lonewayQuickstart:快速入门}

        {mansection R lonewayRemarksandexamples:备注和示例}

        {mansection R lonewayMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt mean}指定使用具有k-1和N-k自由度的F分布的期望值作为rho估计的参考点，而不是默认值1。

{phang}
{opt median}指定使用具有k-1和N-k自由度的F分布的中位数作为rho估计的参考点，而不是默认值1。

{phang}
{opt exact}请求计算精确置信区间，而不是默认的渐近置信区间。仅在组大小相等且不使用权重时可以使用此选项。

{phang}
{opt level(#)}指定置信区间的置信水平，以百分比表示。默认值为 {cmd:level(95)} 或者由 {helpb set level} 设置的值。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:loneway} 和 {help oneway_zh} 都拟合ANOVA模型，但 {cmd:loneway} 提供了与 {cmd:oneway} 不同的附属统计信息：

	特征{col 52}{cmd:oneway  loneway}
	{hline 60}
	拟合单因素模型{col 55}x       x
	     适用于375个或更少的水平{col 55}x       x
	     适用于超过375个水平{col 63}x
	巴特利特检验同方差{col 55}x
	多重比较检验{col 55}x
	组内相关性和标准误{col 63}x
	组内相关性置信区间{col 63}x
	组平均值的估计可靠性{col 63}x
	组效应的估计标准差{col 63}x
	组内的估计标准差{col 63}x


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse auto7}{p_end}

{pstd}拟合随机效应的单因素ANOVA{p_end}
{phang2}{cmd:. loneway mpg manufacturer_grp}{p_end}

{pstd}对数据子集进行ANOVA拟合{p_end}
{phang2}{cmd:. loneway mpg manufacturer_grp if nummake==4}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:loneway} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察值的数量{p_end}
{synopt:{cmd:r(rho)}}组内相关性{p_end}
{synopt:{cmd:r(lb)}}rho的95%置信区间下限{p_end}
{synopt:{cmd:r(ub)}}rho的95%置信区间上限{p_end}
{synopt:{cmd:r(rho_t)}}估计的可靠性{p_end}
{synopt:{cmd:r(se)}}组内相关性的渐近标准误{p_end}
{synopt:{cmd:r(sd_w)}}组内的估计标准差{p_end}
{synopt:{cmd:r(sd_b)}}组效应的估计标准差{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <loneway.sthlp>}