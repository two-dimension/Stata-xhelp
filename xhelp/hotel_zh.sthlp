{smcl}
{* *! version 1.2.8  19oct2017}{...}
{viewerdialog hotelling "dialog hotelling"}{...}
{vieweralsosee "[MV] hotelling" "mansection MV hotelling"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] manova" "help manova_zh"}{...}
{vieweralsosee "[MV] mvtest means" "help mvtest_means_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[R] ttest" "help ttest_zh"}{...}
{viewerjumpto "Syntax" "hotel_zh##syntax"}{...}
{viewerjumpto "Menu" "hotel_zh##menu"}{...}
{viewerjumpto "Description" "hotel_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "hotel_zh##linkspdf"}{...}
{viewerjumpto "Options" "hotel_zh##options"}{...}
{viewerjumpto "Examples" "hotel_zh##examples"}{...}
{viewerjumpto "Stored results" "hotel_zh##results"}
{help hotel:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[MV] hotelling} {hline 2}}Hotelling 的 T-squared 广义均值检验{p_end}
{p2col:}({mansection MV hotelling:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{p 8 15 2}{cmd:hotelling} {varlist} {ifin} 
[{it:{help hotelling##weight:权重}}]
[{cmd:,} {opth by(varname)} {opt not:able}]

{marker weight}{...}
{pstd}
允许使用 {cmd:aweight} 和 {cmd:fweight}；参见 {help weights}。

{pstd}
注意：{cmd:hotel} 是 {cmd:hotelling} 的同义词。

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元分析 >}
     {bf:MANOVA，多元回归及相关 >}
     {bf:Hotelling 的广义均值检验}

{marker description}{...}
{title:描述}

{pstd}
{cmd:hotelling} 执行 Hotelling 的 T-squared 检验，以判断一组均值是否为零或在两个组之间是否相等。

{pstd}
请参阅 {manhelp mvtest_means MV:mvtest means}，了解 Hotelling 一样本检验的一般化、对于不假定两个组的协方差矩阵相同的两样本检验，以及超过两个组的检验。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV hotellingQuickstart:快速入门}

        {mansection MV hotellingRemarksandexamples:备注和示例}

        {mansection MV hotellingMethodsandformulas:方法和公式}

{pstd}
上面的部分不包含在此帮助文件中。

{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}{opth by(varname)} 指定一个变量以识别两个组；进行组间均值相等的检验。如果未指定 {cmd:by()}，则进行均值联合为零的检验。

{phang}{cmd:notable} 抑制打印被比较的均值表。

{marker examples}{...}
{title:示例}

{phang}{cmd:. webuse gasexp}{p_end}
{phang}{cmd:. gen diff1 = ampg1 - bmpg1}{p_end}
{phang}{cmd:. gen diff2 = ampg2 - bmpg2}{p_end}
{phang}{cmd:. hotelling diff1 diff2}{p_end}

{phang}{cmd:. webuse gasexp2, clear}{p_end}
{phang}{cmd:. hotelling mpg1 mpg2, by(additive)}{p_end}

{marker results}{...}
{title:存储结果}

{pstd}
{cmd:hotelling} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}} 观察值数量 {p_end}
{synopt:{cmd:r(k)}} 变量数量 {p_end}
{synopt:{cmd:r(T2)}} Hotelling 的 T-squared {p_end}
{synopt:{cmd:r(df)}} 自由度 {p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <hotel.sthlp>}