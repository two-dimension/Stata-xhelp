{smcl}
{* *! version 1.0.0  27feb2019}{...}
{viewerdialog "ciwidth" "dialog ciwidth_onemean"}{...}
{vieweralsosee "[PSS-3] ciwidth onemean" "mansection PSS-3 ciwidthonemean"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-3] ciwidth" "help ciwidth_zh"}{...}
{vieweralsosee "[PSS-3] ciwidth, graph" "help ciwidth graph"}{...}
{vieweralsosee "[PSS-3] ciwidth, table" "help ciwidth table"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power onemean" "help power onemean"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ci" "help ci_zh"}{...}
{viewerjumpto "Syntax" "ciwidth onemean##syntax"}{...}
{viewerjumpto "Menu" "ciwidth onemean##menu"}{...}
{viewerjumpto "Description" "ciwidth onemean##description"}{...}
{viewerjumpto "Links to PDF documentation" "ciwidth onemean##linkspdf"}{...}
{viewerjumpto "Options" "ciwidth onemean##options"}{...}
{viewerjumpto "Examples" "ciwidth onemean##examples"}{...}
{viewerjumpto "Stored results " "ciwidth onemean##results"}
{help ciwidth_onemean:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[PSS-3] ciwidth onemean} {hline 2}} 对于一个均值的置信区间进行精度分析 {p_end}
{p2col:}({mansection PSS-3 ciwidthonemean:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
计算样本大小

{p 8 16 2}
{cmd:ciwidth} {cmd:onemean,}
{opth w:idth(numlist)}
{opth probw:idth(numlist)}
[{help ciwidth onemean##options_table:{it:选项}}]


{pstd}
计算置信区间宽度

{p 8 16 2}
{opt ciwidth} {cmd:onemean,}
{opth probw:idth(numlist)}
{opth n(numlist)}
[{help ciwidth onemean##options_table:{it:选项}}]


{pstd}
计算置信区间宽度的概率

{p 8 16 2}
{opt ciwidth} {cmd:onemean,}
{opth w:idth(numlist)}
{opth n(numlist)}
[{help ciwidth onemean##options_table:{it:选项}}]


{marker options_table}{...}
{synoptset 30 tabbed}{...}
{synopthdr :选项}
{synoptline}
{syntab:主要}
INCLUDE help ciw_ciopts
INCLUDE help ciw_nopt
INCLUDE help ciw_nfracopt
{p2coldent:* {opth sd(numlist)}}标准差; 默认值为 {cmd:sd(1)}{p_end}
{synopt :{opt knownsd}}请求计算假设已知标准差; 默认假设为未知标准差{p_end}
{p2coldent:* {opth fpc(numlist)}}有限总体修正（FPC），作为抽样率或作为总体大小{p_end}
INCLUDE help ciw_sideopts

INCLUDE help ciw_tableopts

INCLUDE help ciw_graphopts

INCLUDE help ciw_iteropts
{synoptline}
INCLUDE help pss_numlist
{p 4 6 2}{cmd:notitle} 不会出现在对话框中。{p_end}

{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 是

{p 8 16 2}
{help ciwidth_onemean##column:{it:列}}[{cmd::}{it:标签}]
[{it:列}[{cmd::}{it:标签}] [...]]
[{cmd:,} {help ciwidth table##tableopts:{it:表选项}}]

{pstd}
{it:列} 是在
{help ciwidth_onemean##column:下文定义的列之一，而 {it:标签} 是列标签（可以包含引号和复合引号）。

{marker column}{...}
{synoptset 28}{...}
{synopthdr :列}
{synoptline}
{synopt :{cmd:level}}置信水平{p_end}
{synopt :{cmd:alpha}}显著性水平{p_end}
{synopt :{cmd:N}}受试者数量{p_end}
{synopt :{cmd:Pr_width}}置信区间宽度的概率{p_end}
{synopt :{cmd:width}}置信区间宽度{p_end}
{synopt :{cmd:sd}}标准差{p_end}
{synopt :{cmd:fpc}}FPC{p_end}
{* 没有这个符号，人口大小和}{...}
{* 抽样率没有意义就像手册一样}{...}
{synopt :{cmd:_all}}显示所有支持的列{p_end}
{synoptline}
{p 4 6 2}如果指定了 {cmd:alpha()}，则列 {cmd:alpha} 将在默认表中替代列 {cmd:level} 显示。{p_end}
{p 4 6 2}如果指定了 {cmd:fpc()}，则列 {cmd:fpc} 将在默认表中显示。


INCLUDE help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:ciwidth onemean} 计算样本大小、置信区间宽度以及置信区间宽度的概率。它可以根据给定的置信区间宽度和置信区间宽度的概率计算样本大小。也可以根据给定的样本大小和置信区间宽度的概率计算置信区间宽度。它还可以根据给定样本大小和置信区间宽度计算置信区间宽度的概率。另请参见 {help ciwidth_zh:[PSS-3] ciwidth} 以获取其他CI方法的PrSS分析。

{pstd}
有关单一样本均值检验的功效和样本量分析，请参阅 {helpb power onemean:[PSS-2] power onemean}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection PSS-3 ciwidthonemeanRemarksandexamples:备注和示例}

        {mansection PSS-3 ciwidthonemeanMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{marker mainopts}{...}
{dlgtab:主要}

{phang}
{opt level()}, {opt alpha()}, {opt probwidth()}, {opt width()}, {opt n()},
{opt nfractional}; 参见 {help ciwidth_zh:[PSS-3] ciwidth}。
{opt probwidth()} 不能与 {opt knownsd} 合并。
{opt nfractional} 选项仅允许在样本大小确定时使用。

{phang}
{opth sd(numlist)} 指定总体标准差或其估计值。 默认值为 {cmd:sd(1)}。 默认情况下， {opt sd()}指定未知总体标准差的估计值。如果指定了 {opt knownsd} ，则 {opt sd()} 指定已知的总体标准差值。

{phang}
{opt knownsd} 请求在计算中将标准差视为已知。 默认情况下，标准差被视为未知，并针对基于Student's t的置信区间进行计算。如果指定了 {opt knownsd} ，则使用基于常态的置信区间进行计算。 {opt knownsd} 不能与 {opt probwidth()} 合并，且在计算置信区间宽度的概率时不允许使用。

{phang}
{opth fpc(numlist)} 请求在计算中使用有限总体修正。 如果 {opt fpc()} 的值在 0 和 1 之间，则它被解释为抽样率 n/N，其中 N 是总体中的总单位数。当指定样本量 n 时，如果 {opt fpc()} 的值大于 n，则它被解释为总体大小，但在 1 和 n 之间的值是错误的。对于样本大小确定， {opt fpc()} 值大于 1 被解释为总体大小。在 {opt fpc()} 中混合抽样率和总体大小是错误的。

INCLUDE help ciw_sideoptsdes

INCLUDE help ciw_tableoptsdes

INCLUDE help ciw_graphoptsdes
另请参见 {mansection PSS-3 ciwidthonemeanSyntaxcolumn:列} 表以获取图表中使用的符号列表。

INCLUDE help ciw_initoptdes

INCLUDE help ciw_iteroptsdes

{pstd}
以下选项在 {cmd:ciwidth onemean} 可用，但不会在对话框中显示：

INCLUDE help ciw_nodboptdes


{marker examples}{...}
{title:示例}

    {title:示例: 计算样本大小}

{pstd}
    计算总体均值的双侧95%置信区间所需的样本大小（默认值），假设置信区间宽度为6，标准差为8，并且未来研究中置信区间宽度不超过6的概率为90%{p_end}
{phang2}{cmd:. ciwidth onemean, width(6) probwidth(0.9) sd(8)}

{pstd} 
    与上述相同，但针对上侧单侧90%的置信区间{p_end}
{phang2}{cmd:. ciwidth onemean, width(6) probwidth(0.9) sd(8) level(90) upper}

{pstd}
    指定替代置信区间宽度的列表{p_end}
{phang2}{cmd:. ciwidth onemean, width(6 8 10) probwidth(0.9) sd(8)}

{pstd}
    在假设已知的总体标准差为8的情况下计算所需的样本大小{p_end}
{phang2}{cmd:. ciwidth onemean, width(6) sd(8) knownsd}

{pstd}
    与上述相同，但允许小数样本大小{p_end}
{phang2}{cmd:. ciwidth onemean, width(6) sd(8) knownsd nfractional}


    {title:示例: 计算置信区间宽度}

{pstd}
    假设我们有50个受试者的样本，并且我们想要计算总体均值的双侧95%置信区间的宽度（默认值）；假设标准差为8，并且我们希望90%确定未来研究中的置信区间宽度不会超过估计宽度{p_end}
{phang2}{cmd:. ciwidth onemean, n(50) probwidth(0.9) sd(8)}

{pstd}
    与上述相同，以表格形式报告输出{p_end}
{phang2}{cmd:. ciwidth onemean, n(50) probwidth(0.9) sd(8) table}

{pstd}
    计算多个替代样本大小的置信区间宽度，并绘制结果{p_end}
{phang2}{cmd:. ciwidth onemean, n(70(10)100) probwidth(0.9) sd(8) graph}


    {title:示例: 计算置信区间宽度的概率}

{pstd}
    假设我们有80个受试者的样本，并且我们想要计算对于总体均值的双侧95%置信区间（默认值）宽度不超过4的概率；假设标准差为8{p_end}
{phang2}{cmd:. ciwidth onemean, n(80) width(4) sd(8)}

{pstd}
    计算几个替代样本大小和置信区间宽度的置信区间宽度的概率{p_end}
{phang2}{cmd:. ciwidth onemean, n(50(10)70) width(4 5 6) sd(10)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:ciwidth onemean} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt :{cmd:r(level)}}置信水平{p_end}
{synopt :{cmd:r(alpha)}}显著性水平{p_end}
{synopt :{cmd:r(N)}}总样本大小{p_end}
{synopt :{cmd:r(nfractional)}}{cmd:1} 如果指定了 {cmd:nfractional}，
{cmd:0} 否则{p_end}
{synopt :{cmd:r(onesided)}}{cmd:1} 表示单侧置信区间，{cmd:0} 否则{p_end}
{synopt :{cmd:r(Pr_width)}}置信区间宽度的概率{p_end}
{synopt :{cmd:r(Pr_width_a)}}置信区间宽度的实际概率（用于在指定了 {cmd:probwidth()} 时的样本大小确定）{p_end}
{synopt :{cmd:r(width)}}置信区间宽度{p_end}
{synopt :{cmd:r(width_a)}}实际置信区间宽度（用于在指定了 {cmd:knownsd} 时的样本大小确定）{p_end}
{synopt :{cmd:r(sd)}}标准差{p_end}
{synopt :{cmd:r(knownsd)}}{cmd:1} 如果指定了 {cmd:knownsd} 选项，
{cmd:0} 否则{p_end}
{synopt :{cmd:r(fpc)}}有限总体修正（如果指定）{p_end}
{synopt :{cmd:r(separator)}}表中分隔线之间的行数{p_end}
{synopt :{cmd:r(divider)}}{cmd:1} 如果请求在表中显示 {cmd:divider}，{cmd:0} 否则{p_end}
{synopt :{cmd:r(init)}}样本大小的初始值{p_end}
{synopt :{cmd:r(maxiter)}}最大迭代次数{p_end}
{synopt :{cmd:r(iter)}}执行的迭代次数{p_end}
{synopt :{cmd:r(tolerance)}}请求的参数容忍度{p_end}
{synopt :{cmd:r(deltax)}}最终参数容忍度{p_end}
{synopt :{cmd:r(ftolerance)}}请求的目标函数与零的距离{p_end}
{synopt :{cmd:r(function)}}目标函数与零的最终距离{p_end}
{synopt :{cmd:r(converged)}}{cmd:1} 如果迭代算法收敛， {cmd:0} 否则{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt :{cmd:r(type)}}{cmd:ci}{p_end}
{synopt :{cmd:r(method)}}{cmd:onemean}{p_end}
{synopt :{cmd:r(onesidedci)}}{cmd:upper} 或 {cmd:lower} （适用于单侧置信区间）{p_end}
{synopt :{cmd:r(columns)}}显示的表列{p_end}
{synopt :{cmd:r(labels)}}表格列标签{p_end}
{synopt :{cmd:r(widths)}}表格列宽度{p_end}
{synopt :{cmd:r(formats)}}表格列格式{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt :{cmd:r(pss_table)}}结果表{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ciwidth_onemean.sthlp>}