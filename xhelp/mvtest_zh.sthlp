{smcl}
{* *! version 1.1.13  14may2018}{...}
{viewerdialog mvtest "dialog mvtest"}{...}
{vieweralsosee "[MV] mvtest" "mansection MV mvtest"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] canon" "help canon_zh"}{...}
{vieweralsosee "[R] correlate" "help correlate_zh"}{...}
{vieweralsosee "[MV] hotelling" "help hotelling"}{...}
{vieweralsosee "[MV] manova" "help manova_zh"}{...}
{vieweralsosee "[R] mean" "help mean_zh"}{...}
{vieweralsosee "[R] sdtest" "help sdtest_zh"}{...}
{vieweralsosee "[R] sktest" "help sktest_zh"}{...}
{vieweralsosee "[R] swilk" "help swilk_zh"}{...}
{vieweralsosee "[R] ttest" "help ttest_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] Intro 5" "mansection SEM Intro5"}{...}
{findalias assemcorr}{...}
{viewerjumpto "Syntax" "mvtest_zh##syntax"}{...}
{viewerjumpto "Description" "mvtest_zh##description"}{...}
{viewerjumpto "Examples" "mvtest_zh##examples"}{...}
{viewerjumpto "Reference" "mvtest_zh##reference"}
{help mvtest:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[MV] mvtest} {hline 2}}多元检验{p_end}
{p2col:}({mansection MV mvtest:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:mvtest} {it:subcommand} ... [{cmd:,} ...]

{synoptset 14}{...}
{synopthdr:子命令}
{synoptline}
{synopt:{help mvtest_means_zh:means}}检验均值{p_end}
{synopt:{help mvtest_covariances_zh:covariances}}检验协方差{p_end}
{synopt:{help mvtest_correlations_zh:correlations}}检验相关性{p_end}
{synopt:{help mvtest_normality_zh:normality}}检验多元正态性{p_end}
{synoptline}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mvtest} 对均值、协方差和相关性进行多元检验，并检验单变量、双变量和多变量的正态性。均值、协方差和相关性检验假设多元正态性 ({help mvtest##MKB1979:Mardia, Kent, and Bibby 1979})。提供单样本和多样本检验。{cmd:mvtest} 提供的所有多样本检验都假设样本是独立的。

{pstd}
结构方程建模为估计均值、协方差和相关性以及检验组间差异提供了更为一般的框架；参见 {mansection SEM Intro5:{bf:[SEM] Intro 5}} 和 {findalias semcorr}。

{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse iris}{p_end}
{phang2}{cmd:. keep if iris==1}{p_end}

{pstd}显示正态性的一元、双元和多元检验{p_end}
{phang2}
{cmd:. mvtest normality pet* sep*, bivariate univariate stats(all)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse milktruck, clear}{p_end}

{pstd}检验变量的均值是否相等{p_end}
{phang2}{cmd:. mvtest means fuel repair capital, equal}{p_end}

{pstd}检验协方差矩阵是否是对角矩阵{p_end}
{phang2}{cmd:. mvtest covariances fuel repair capital, diagonal}{p_end}

{pstd}检验协方差矩阵是否是块对角矩阵{p_end}
{phang2}
{cmd:. mvtest covariances fuel repair capital, block(fuel repair || capital)}
{p_end}

{pstd}检验协方差矩阵是否是球形的{p_end}
{phang2}{cmd:. mvtest covariances fuel repair capital, spherical}{p_end}

{pstd}检验协方差矩阵是否是复合对称的{p_end}
{phang2}{cmd:. mvtest covariances fuel repair capital, compound}{p_end}

{pstd}检验相关矩阵是否是复合对称的（即，所有相关性是否相等）{p_end}
{phang2}{cmd:. mvtest correlations fuel repair capital, compound}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse metabolic}{p_end}

{pstd}检验组的均值是否相等，假设协方差矩阵相等{p_end}
{phang2}{cmd:. mvtest means y1 y2, by(group)}{p_end}

{pstd}检验前3组的均值是否相等，允许异方差性{p_end}
{phang2}{cmd:. mvtest means y1 y2 if group<4, by(group) heterogeneous}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse genderpsych}{p_end}

{pstd}检验组的协方差矩阵是否相等{p_end}
{phang2}{cmd:. mvtest covariances y1 y2 y3 y4, by(gender)}{p_end}

{pstd}检验组的相关矩阵是否相等{p_end}
{phang2}{cmd:. mvtest correlations y1 y2 y3 y4, by(gender)}{p_end}
    {hline}


{marker reference}{...}
{title:参考文献}

{marker MKB1979}{...}
{phang}
Mardia, K. V., J. T. Kent, 和 J. M. Bibby. 1979.
{it:Multivariate Analysis}. 伦敦：学术出版社。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mvtest.sthlp>}