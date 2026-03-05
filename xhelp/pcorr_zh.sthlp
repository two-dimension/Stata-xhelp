{smcl}
{* *! version 1.1.9  19oct2017}{...}
{viewerdialog pcorr "dialog pcorr"}{...}
{vieweralsosee "[R] pcorr" "mansection R pcorr"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] correlate" "help correlate_zh"}{...}
{vieweralsosee "[R] spearman" "help spearman_zh"}{...}
{viewerjumpto "Syntax" "pcorr_zh##syntax"}{...}
{viewerjumpto "Menu" "pcorr_zh##menu"}{...}
{viewerjumpto "Description" "pcorr_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "pcorr_zh##linkspdf"}{...}
{viewerjumpto "Examples" "pcorr_zh##examples"}{...}
{viewerjumpto "Stored results" "pcorr_zh##results"}
{help pcorr:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] pcorr} {hline 2}}偏相关和半偏相关系数{p_end}
{p2col:}({mansection R pcorr:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:pcorr} {it:{help varname_zh}} {varlist} {ifin}
[{it:{help pcorr##weight:权重}}]

{phang}
{it:varlist} 可以包含因子变量；参见 {help fvvarlist_zh}.{p_end}
{phang}
{it:varname} 和 {it:varlist} 可以包含时间序列运算符；参见 {help tsvarlist_zh}.{p_end}
{phang}
{opt by} 是允许的；参见 {manhelp by D}.{p_end}
{marker weight}{...}
{phang}
{opt aweight}s 和 {opt fweight}s 是允许的；参见 {help weight_zh}.


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 摘要、表格和检验 >}
     {bf:摘要和描述性统计 > 偏相关性}


{marker description}{...}
{title:描述}

{pstd}
{cmd:pcorr} 显示指定变量与 varlist 中每个变量的偏相关和半偏相关系数，去除了 varlist 中所有其他变量的影响。同时报告平方相关系数及其对应的显著性水平。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R pcorrQuickstart:快速开始}

        {mansection R pcorrRemarksandexamples:备注和示例}

        {mansection R pcorrMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{phang}{cmd:. sysuse auto}{p_end}
{phang}{cmd:. pcorr price mpg weight foreign}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:pcorr} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察值数量{p_end}
{synopt:{cmd:r(df)}}自由度{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(p_corr)}}偏相关系数向量{p_end}
{synopt:{cmd:r(sp_corr)}}半偏相关系数向量{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <pcorr.sthlp>}