{smcl}
{* *! version 1.1.17  19oct2017}{...}
{viewerdialog mvtest "dialog mvtest"}{...}
{vieweralsosee "[MV] mvtest normality" "mansection MV mvtestnormality"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] sktest" "help sktest_zh"}{...}
{vieweralsosee "[R] swilk" "help swilk_zh"}{...}
{viewerjumpto "Syntax" "mvtest_normality_zh##syntax"}{...}
{viewerjumpto "Menu" "mvtest_normality_zh##menu"}{...}
{viewerjumpto "Description" "mvtest_normality_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mvtest_normality_zh##linkspdf"}{...}
{viewerjumpto "Options" "mvtest_normality_zh##options"}{...}
{viewerjumpto "Notes" "mvtest_normality_zh##notes"}{...}
{viewerjumpto "Examples" "mvtest_normality_zh##examples"}{...}
{viewerjumpto "Stored results" "mvtest_normality_zh##results"}{...}
{viewerjumpto "References" "mvtest_normality_zh##references"}
{help mvtest_normality:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[MV] mvtest normality} {hline 2}}多元正态性检验{p_end}
{p2col:}({mansection MV mvtestnormality:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 25 2}
{cmd:mvtest} {cmdab:norm:ality} {varlist} {ifin} 
[{it:{help mvtest normality##weight:weight}}]
[{cmd:,} {it:options}]

{synoptset 15 tabbed}{...}
{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab:选项}
{synopt:{opt uni:variate}}显示单变量正态性检验 ({cmd:sktest}){p_end}
{synopt:{opt bi:variate}}显示双变量正态性检验
	(Doornik-Hansen) {p_end}
{synopt:{opt st:ats(stats)}}要计算的统计量{p_end}
{synoptline}

{synoptset 15}{...}
{marker statistics}{...}
{synopthdr:统计量}
{synoptline}
{synopt:{opt dh:ansen}}Doornik-Hansen 综合检验；默认选项{p_end}
{synopt:{opt hz:irkler}}Henze-Zirkler 一致性检验{p_end}
{synopt:{opt ku:rtosis}}Mardia 的多元峰度检验{p_end}
{synopt:{opt sk:ewness}}Mardia 的多元偏度检验{p_end}
{synopt:{opt all}}此处列出的所有检验{p_end}
{synoptline}

{p 4 6 2}
{cmd:bootstrap}、{cmd:by}、{cmd:jackknife}、{cmd:rolling} 和 {cmd:statsby} 是允许的；请参阅 {help prefix_zh}.{p_end}
{p 4 6 2}
权重不允许与 {help bootstrap_zh} 前缀一起使用.{p_end}
{p 4 6 2}
{cmd:aweight}s 不允许与 {help jackknife_zh} 前缀一起使用.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}s 是允许的；请参阅 {help weight_zh}。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元分析 > MANOVA、多元回归,}
           {bf:及相关 > 多元均值、协方差和}
           {bf:正态性检验}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mvtest normality} 执行单变量、双变量和多元正态性检验。

{pstd}
有关更多多元检验，请参阅 {manhelp mvtest MV}。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection MV mvtestnormalityQuickstart:快速入门}

        {mansection MV mvtestnormalityRemarksandexamples:备注和示例}

        {mansection MV mvtestnormalityMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:选项}

{phang}
{cmd:univariate}
指定显示单变量正态性检验，来自 {help sktest_zh}。

{phang}
{cmd:bivariate}
指定显示每对变量的 {help mvtest normality##DH2008:Doornik-Hansen (2008)} 
双变量正态性检验。

{phang}
{opt stats(stats)} 指定一个或多个多元正态性的检验统计量。多个 {it:stats} 用空格分隔。
以下 {it:stats} 可用：

{phang3}
{opt dhansen} 产生 {help mvtest normality##DH2008:Doornik-Hansen (2008)} 
综合检验。

{phang3}
{opt hzirkler} 产生 Henze-Zirkler 的 
({help mvtest normality##HZ1990:1990}) 一致性检验。

{phang3}
{opt kurtosis} 产生基于 Mardia 的 
({help mvtest normality##M1970:1970}) 多元峰度度量的检验。

{phang3}
{opt skewness} 产生基于 Mardia 的 
({help mvtest normality##M1970:1970}) 多元偏度度量的检验。

{phang3}
{opt all} 是一个方便的简写，表示
{cmd:stats(dhansen hzirkler kurtosis skewness)}。


{marker notes}{...}
{title:备注}

{pstd}
Doornik-Hansen ({help mvtest normality##DH2008:2008}) 检验和 Mardia 的 
({help mvtest normality##M1970:1970}) 多元峰度检验的计算时间与观测值数量大致成正比。 
相反，Henze-Zirkler ({help mvtest normality##HZ1990:1990}) 检验和 Mardia 的 
({help mvtest normality##M1970:1970}) 多元偏度检验的计算时间大致与观测值数量的平方成正比。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse iris}{p_end}
{phang2}{cmd:. keep if iris==1}{p_end}

{pstd}显示 Doornik-Hansen 综合检验{p_end}
{phang2}{cmd:. mvtest normality pet* sep*}

{pstd}与上述相同，但还显示单变量正态性检验{p_end}
{phang2}{cmd:. mvtest normality pet* sep*, univariate}

{pstd}显示单变量、双变量和多元正态性检验{p_end}
{phang2}
{cmd:. mvtest normality pet* sep*, univariate bivariate stats(all)}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:mvtest normality} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(p_dh)}}Doornik-Hansen 检验的 p 值 ({cmd:stats(dhansen)}){p_end}
{synopt:{cmd:r(df_dh)}}卡方检验的自由度 chi2_dh
	({cmd:stats(dhansen)}){p_end}
{synopt:{cmd:r(chi2_dh)}}Doornik-Hansen 统计量 ({cmd:stats(dhansen)}){p_end}
{synopt:{cmd:r(rank_hz)}}协方差矩阵的秩
	({cmd:stats(hzirkler)}){p_end}
{synopt:{cmd:r(p_hz)}}双侧 Hanze-Zirkler 检验的 p 值 
	({cmd:stats(hzirkler)}){p_end}
{synopt:{cmd:r(z_hz)}}与 hz 相关的正态变量
	({cmd:stats(hzirkler)}){p_end}
{synopt:{cmd:r(V_hz)}}log(hz) 的期望方差
	({cmd:stats(hzirkler)}){p_end}
{synopt:{cmd:r(E_hz)}}log(hz) 的期望值 ({cmd:stats(hzirkler)}){p_end}
{synopt:{cmd:r(hz)}}Henze-Zirkler 离差统计量
	({cmd:stats(hzirkler)}){p_end}
{synopt:{cmd:r(rank_mkurt)}}协方差矩阵的秩
	({cmd:stats(kurtosis)}){p_end}
{synopt:{cmd:r(p_mkurt)}}Mardia 多元峰度检验的 p 值
	({cmd:stats(kurtosis)}){p_end}
{synopt:{cmd:r(z_mkurt)}}与 Mardia mKurtosis 相关的正态变量
	({cmd:stats(kurtosis)}){p_end}
{synopt:{cmd:r(chi2_mkurt)}}Mardia mKurtosis 的卡方值
	({cmd:stats(kurtosis)}){p_end}
{synopt:{cmd:r(mkurt)}}Mardia mKurtosis 检验统计量
	({cmd:stats(kurtosis)}){p_end}
{synopt:{cmd:r(rank_mskew)}}Mardia mSkewness 检验的秩
	({cmd:stats(skewness)}){p_end}
{synopt:{cmd:r(p_mskew)}}Mardia 的多元偏度检验的 p 值
	({cmd:stats(skewness)}){p_end}
{synopt:{cmd:r(df_mskew)}}Mardia mSkewness 检验的自由度
	({cmd:stats(skewness)}){p_end}
{synopt:{cmd:r(chi2_mskew)}}Mardia mSkewness 检验的卡方值
	({cmd:stats(skewness)}){p_end}
{synopt:{cmd:r(mskew)}}Mardia mSkewness 检验统计量
	({cmd:stats(skewness)}){p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(U_dh)}}包含正交化变量的偏度和峰度的矩阵
	(用于 Doornik-Hansen 检验): b1, b2, z(b1), 和
	z(b2) ({cmd:stats(dhansen)}){p_end}
{synopt:{cmd:r(Btest)}}双变量检验统计量 ({cmd:bivariate}){p_end}
{synopt:{cmd:r(Utest)}}单变量检验统计量 ({cmd:univariate}){p_end}


{marker references}{...}
{title:参考文献}

{marker DH2008}{...}
{phang}
Doornik, J. A., 和 H. Hansen. 2008.
单变量和多元正态性的综合检验。
{it:Oxford Bulletin of Economics and Statistics} 70: 927-939.

{marker HZ1990}{...}
{phang}
Henze, N., 和 B. Zirkler. 1990.
一类不变一致性的多元正态性检验。
{it:Communications in Statistics, Theory and Methods} 19: 3595-3617.

{marker M1970}{...}
{phang}
Mardia, K. V. 1970.
多元偏度和峰度的度量及其应用。
{it:Biometrika} 57: 519-530.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mvtest_normality.sthlp>}