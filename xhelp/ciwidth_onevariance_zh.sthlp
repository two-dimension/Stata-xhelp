{smcl}
{* *! version 1.0.0  27feb2019}{...}
{viewerdialog "variance scale" "dialog ciwidth_onevar_var"}{...}
{viewerdialog "standard deviation scale" "dialog ciwidth_onevar_sd"}{...}
{vieweralsosee "[PSS-3] ciwidth onevariance" "mansection PSS-3 ciwidthonevariance"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-3] ciwidth" "help ciwidth_zh"}{...}
{vieweralsosee "[PSS-3] ciwidth, graph" "help ciwidth graph"}{...}
{vieweralsosee "[PSS-3] ciwidth, table" "help ciwidth table"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power onevariance" "help power onevariance"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ci" "help ci_zh"}{...}
{viewerjumpto "Syntax" "ciwidth onevariance##syntax"}{...}
{viewerjumpto "Menu" "ciwidth onevariance##menu"}{...}
{viewerjumpto "Description" "ciwidth onevariance##description"}{...}
{viewerjumpto "Links to PDF documentation" "ciwidth onevariance##linkspdf"}{...}
{viewerjumpto "Options" "ciwidth onevariance##options"}{...}
{viewerjumpto "Examples" "ciwidth onevariance##examples"}{...}
{viewerjumpto "Stored results " "ciwidth onevariance##results"}
{help ciwidth_onevariance:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[PSS-3] ciwidth onevariance} {hline 2}}单一方差置信区间的精确度分析{p_end}
{p2col:}({mansection PSS-3 ciwidthonevariance:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
计算样本大小

{p 6 43 2}
方差规模

{p 8 43 2}
{cmd:ciwidth} {cmdab:onevar:iance} {it:v}{cmd:,}
{opth w:idth(numlist)}
{opth probw:idth(numlist)}
[{help ciwidth onevariance##options_table:{it:options}}]

{p 6 43 2}
标准差规模

{p 8 43 2}
{cmd:ciwidth} {cmdab:onevar:iance} {it:s}{cmd:,}
{opt sd}
{opth w:idth(numlist)}
{opth probw:idth(numlist)}
[{help ciwidth onevariance##options_table:{it:options}}]


{pstd}
计算置信区间宽度

{p 6 43 2}
方差规模

{p 8 43 2}
{opt ciwidth} {cmdab:onevar:iance} {it:v}{cmd:,}
{opth probw:idth(numlist)}
{opth n(numlist)}
[{help ciwidth onevariance##options_table:{it:options}}]

{p 6 43 2}
标准差规模

{p 8 43 2}
{opt ciwidth} {cmdab:onevar:iance} {it:s}{cmd:,}
{opt sd}
{opth probw:idth(numlist)}
{opth n(numlist)}
[{help ciwidth onevariance##options_table:{it:options}}]


{pstd}
计算置信区间宽度的概率

{p 6 43 2}
方差规模

{p 8 43 2}
{opt ciwidth} {cmdab:onevar:iance} {it:v}{cmd:,}
{opth w:idth(numlist)}
{opth n(numlist)}
[{help ciwidth onevariance##options_table:{it:options}}]

{p 6 43 2}
标准差规模

{p 8 43 2}
{opt ciwidth} {cmdab:onevar:iance} {it:s}{cmd:,}
{opt sd}
{opth w:idth(numlist)}
{opth n(numlist)}
[{help ciwidth onevariance##options_table:{it:options}}]


{phang}
其中 {it:v} 和 {it:s} 分别是方差和标准差。
每个参数可以指定为一个数字或一组值（见 {help numlist_zh}）。

{marker options_table}{...}
{synoptset 30 tabbed}{...}
{synopthdr :选项}
{synoptline}
{synopt: {opt sd}}要求使用标准差规模进行计算；默认是使用方差规模{p_end}
{syntab:Main}
INCLUDE help ciw_ciopts
INCLUDE help ciw_nopt
INCLUDE help ciw_nfracopt
INCLUDE help ciw_sideopts

INCLUDE help ciw_tableopts

INCLUDE help ciw_graphopts

INCLUDE help ciw_iteropts
{synoptline}
INCLUDE help pss_numlist
{p 4 6 2}{cmd:sd} 在对话框中不可见； {cmd:sd} 的指定由所选对话框自动完成。{p_end}
{p 4 6 2}{cmd:notitle} 在对话框中不可见。{p_end}

{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 是

{p 8 16 2}
{help ciwidth_onevariance##column:{it:column}}[{cmd::}{it:label}]
[{it:column}[{cmd::}{it:label}] [...]]
[{cmd:,} {help ciwidth table##tableopts:{it:tableopts}}]

{pstd}
{it:column} 是下面定义的列之一，{it:label} 是列标签（可以包含引号和复合引号）。

{marker column}{...}
{synoptset 28}{...}
{synopthdr :列}
{synoptline}
{synopt :{cmd:level}}置信水平{p_end}
{synopt :{cmd:alpha}}显著性水平{p_end}
{synopt :{cmd:N}}样本数量{p_end}
{synopt :{cmd:Pr_width}}置信区间宽度的概率{p_end}
{synopt :{cmd:width}}置信区间宽度{p_end}
{synopt :{cmd:v}}方差{p_end}
{synopt :{cmd:s}}标准差{p_end}
{synopt :{cmd:_all}}显示所有支持的列{p_end}
{synoptline}
{p 4 6 2}如果 {cmd:alpha()} 被指定，列 {cmd:alpha} 会在默认表中替代列 {cmd:level} 。{p_end}
{p 4 6 2}如果指定了选项 {cmd:sd}，列 {cmd:s} 会在默认表中替代列 {cmd:v} 。

INCLUDE help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:ciwidth onevariance} 计算样本大小、置信区间宽度及其概率。它可以计算给定置信区间宽度和置信区间宽度概率所需的样本大小。或者，它可以计算给定样本大小和置信区间宽度概率的置信区间宽度。它还可以计算给定样本大小和置信区间宽度的置信区间宽度概率。计算可用于方差或标准差。另见 {help ciwidth_zh:[PSS-3] ciwidth}，以获取其他置信区间方法的 PrSS 分析。

{pstd}
有关单样本方差检验的功效和样本大小分析，请参见 {helpb power onevariance:[PSS-2] power onevariance}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection PSS-3 ciwidthonevarianceRemarksandexamples:备注和示例}

        {mansection PSS-3 ciwidthonevarianceMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{marker mainopts}{...}
{phang}
{opt sd} 指定使用标准差规模进行计算。默认是使用方差规模。
在选择标准差对话框时，{opt sd} 选项的指定会自动完成。

{dlgtab:Main}

{phang}
{opt level()}, {opt alpha()}, {opt probwidth()}, {opt width()}, {opt n()},
{opt nfractional}; 见 {help ciwidth_zh:[PSS-3] ciwidth}。
{opt nfractional} 选项仅允许用于样本大小确定。

INCLUDE help ciw_sideoptsdes

INCLUDE help ciw_tableoptsdes

INCLUDE help ciw_graphoptsdes
另见 {mansection PSS-3 ciwidthonevarianceSyntaxcolumn:column} 表，获取图形中使用的符号列表。

INCLUDE help ciw_initoptdes

INCLUDE help ciw_iteroptsdes

{pstd}
以下选项可与 {cmd:ciwidth onevariance} 一起使用，但在对话框中不显示：

INCLUDE help ciw_nodboptdes


{marker examples}{...}
{title:示例}

    {title:示例：计算样本大小}

{pstd}
    计算所需样本大小，以获得一个双侧的 95% 置信区间 
    （默认为此）用于样本方差，其宽度不超过 1，且概率为 96%；假设 
    人口方差估计为 2{p_end}
{phang2}{cmd:. ciwidth onevariance 2, width(1) probwidth(0.96)}

{pstd}
    计算样本大小，以获得用于人口标准差的 95% 置信区间，
    而不是方差；假设人口标准差估计为 1.5{p_end}
{phang2}{cmd:. ciwidth onevariance 1.5, width(1)}
       {cmd:probwidth(0.96) sd}

{pstd}
    与第一个示例相同，但允许样本大小为小数{p_end}
{phang2}{cmd:. ciwidth onevariance 2, width(1) probwidth(0.96)}
       {cmd:nfractional}

{pstd}
    与第一个示例相同，但针对一个上侧单侧的 90%
    置信区间{p_end}
{phang2}{cmd:. ciwidth onevariance 2, width(1) probwidth(0.96)}
       {cmd:upper level(90)}


    {title:示例：计算置信区间宽度}

{pstd}
    假设我们有 90 个受试者的样本，我们想要 
    计算一个双侧的 95% 置信区间（默认为此），用于 
    人口方差；假设我们希望对未来研究的置信区间宽度 
    进行 96% 的确认，而且人口方差的估计为 2{p_end}
{phang2}{cmd:. ciwidth onevariance 2, n(90) probwidth(0.96)}

{pstd}
    计算标准差为 2 的置信区间宽度{p_end}
{phang2}{cmd:. ciwidth onevariance 2, n(80) probwidth(0.96) sd}

{pstd}
    计算多个不同样本大小的置信区间宽度{p_end}
{phang2}{cmd:. ciwidth onevariance 2, n(60(10)80) probwidth(0.96) sd}


    {title:示例：计算置信区间宽度的概率}

{pstd}
    假设我们有 100 个受试者的样本，我们想计算 
    一个双侧的 95% 置信区间（默认为此），用于人口 
    方差，且其宽度不大于 4；假设人口方差的估计为 6{p_end}
{phang2}{cmd:. ciwidth onevariance 6, width(4) n(100)}

{pstd}
    计算置信区间宽度为 1 的概率
    的 95% 置信区间；假设标准差为 4{p_end}
{phang2}{cmd:. ciwidth onevariance 4, width(1) n(100) sd}

{pstd}
    与第一个示例相同，但针对一个上侧单侧的 99%
    置信区间{p_end}
{phang2}{cmd:. ciwidth onevariance 6, width(4) n(100) level(99) upper}

{pstd}
    计算多个不同样本大小的置信区间宽度的概率，并绘制结果{p_end}
{phang2}{cmd:. ciwidth onevariance 6, width(4) n(80(5)100) graph}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:ciwidth onevariance} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt :{cmd:r(level)}}置信水平{p_end}
{synopt :{cmd:r(alpha)}}显著性水平{p_end}
{synopt :{cmd:r(N)}}总样本大小{p_end}
{synopt :{cmd:r(nfractional)}}{cmd:1} 如果指定了 {cmd:nfractional}，否则为 {cmd:0}{p_end}
{synopt :{cmd:r(onesided)}}{cmd:1} 表示为单侧置信区间，{cmd:0} 否则{p_end}
{synopt :{cmd:r(Pr_width)}}置信区间宽度的概率{p_end}
{synopt :{cmd:r(Pr_width_a)}}实际的置信区间宽度的概率（用于指定了 {cmd:probwidth()} 的样本大小估计）{p_end}
{synopt :{cmd:r(width)}}置信区间宽度{p_end}
{synopt :{cmd:r(v)}}方差{p_end}
{synopt :{cmd:r(s)}}标准差{p_end}
{synopt :{cmd:r(separator)}}表中分隔线之间的行数{p_end}
{synopt :{cmd:r(divider)}}{cmd:1} 如果在表中请求了 {cmd:divider}，否则为 {cmd:0}{p_end}
{synopt :{cmd:r(init)}}样本大小的初始值{p_end}
{synopt :{cmd:r(maxiter)}}最大迭代次数{p_end}
{synopt :{cmd:r(iter)}}已执行的迭代次数{p_end}
{synopt :{cmd:r(tolerance)}}请求的参数容差{p_end}
{synopt :{cmd:r(deltax)}}最终实现的参数容差{p_end}
{synopt :{cmd:r(ftolerance)}}请求的目标函数与零之间的距离{p_end}
{synopt :{cmd:r(function)}}目标函数与零之间的最终距离{p_end}
{synopt :{cmd:r(converged)}}{cmd:1} 如果迭代算法收敛，则为 {cmd:0} 否则{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt :{cmd:r(type)}}{cmd:ci}{p_end}
{synopt :{cmd:r(method)}}{cmd:onevariance}{p_end}
{synopt :{cmd:r(scale)}}{cmd:variance} 或 {cmd:standard deviation}{p_end}
{synopt :{cmd:r(onesidedci)}}{cmd:upper} 或 {cmd:lower} （针对单侧置信区间）{p_end}
{synopt :{cmd:r(columns)}}显示的表格列{p_end}
{synopt :{cmd:r(labels)}}表格列标签{p_end}
{synopt :{cmd:r(widths)}}表格列宽度{p_end}
{synopt :{cmd:r(formats)}}表格列格式{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt :{cmd:r(pss_table)}}结果表{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ciwidth_onevariance.sthlp>}