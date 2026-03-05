{smcl}
{* *! version 1.0.1  05mar2019}{...}
{viewerdialog "ciwidth" "dialog ciwidth_twomeans"}{...}
{vieweralsosee "[PSS-3] ciwidth twomeans" "mansection PSS-3 ciwidthtwomeans"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-3] ciwidth" "help ciwidth_zh"}{...}
{vieweralsosee "[PSS-3] ciwidth, graph" "help ciwidth graph"}{...}
{vieweralsosee "[PSS-3] ciwidth, table" "help ciwidth table"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power twomeans" "help power twomeans"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ttest" "help ttest_zh"}{...}
{vieweralsosee "[R] ztest" "help ztest_zh"}{...}
{viewerjumpto "Syntax" "ciwidth twomeans##syntax"}{...}
{viewerjumpto "Menu" "ciwidth twomeans##menu"}{...}
{viewerjumpto "Description" "ciwidth twomeans##description"}{...}
{viewerjumpto "Links to PDF documentation" "ciwidth twomeans##linkspdf"}{...}
{viewerjumpto "Options" "ciwidth twomeans##options"}{...}
{viewerjumpto "Examples" "ciwidth twomeans##examples"}{...}
{viewerjumpto "Stored results " "ciwidth twomeans##results"}
{help ciwidth_twomeans:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[PSS-3] ciwidth twomeans} {hline 2}}精确分析两个均值差异的置信区间{p_end}
{p2col:}({mansection PSS-3 ciwidthtwomeans:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
计算样本大小

{p 8 16 2}
{cmd:ciwidth} {cmd:twomeans,}
{opth w:idth(numlist)}
{opth probw:idth(numlist)}
[{help ciwidth twomeans##options_table:{it:选项}}]


{pstd}
计算置信区间宽度

{p 8 16 2}
{opt ciwidth} {cmd:twomeans,}
{opth probw:idth(numlist)}
{opth n(numlist)}
[{help ciwidth twomeans##options_table:{it:选项}}]


{pstd}
计算置信区间宽度的概率

{p 8 16 2}
{opt ciwidth} {cmd:twomeans,}
{opth w:idth(numlist)}
{opth n(numlist)}
[{help ciwidth twomeans##options_table:{it:选项}}]


{marker options_table}{...}
{synoptset 30 tabbed}{...}
{synopthdr :选项}
{synoptline}
{syntab:主要}
包含 help ciw_ciopts
{p2coldent:* {opth n(numlist)}}总样本大小；计算置信区间宽度和宽度概率所必需{p_end}
{p2coldent:* {opth n1(numlist)}}对照组的样本大小{p_end}
{p2coldent:* {opth n2(numlist)}}实验组的样本大小{p_end}
{p2coldent:* {opth nrat:io(numlist)}}样本大小的比率，{cmd:N2/N1}；
默认值为 {cmd:nratio(1)}，表示两组大小相等{p_end}
{synopt: {cmd:compute(N2}|{cmd:N2)}}给定 {cmd:N2} 或 {cmd:N1} 的情况下解决 {cmd:N1}{p_end}
包含 help ciw_nfracopt
{p2coldent:* {opth sd(numlist)}}对照组和实验组的共同标准差，假设两组的标准差相等；默认值为 {cmd:sd(1)}{p_end}
{p2coldent:* {opth sd1(numlist)}}对照组的标准差；
需要 {cmd:sd2()} 和 {cmd:knownsds}{p_end}
{p2coldent:* {opth sd2(numlist)}}实验组的标准差；
需要 {cmd:sd1()} 和 {cmd:knownsds}{p_end}
{synopt :{opt knownsds}}请求计算时假定已知标准差；默认情况下假定标准差未知{p_end}
包含 help ciw_sideopts

包含 help ciw_tableopts

包含 help ciw_graphopts

包含 help ciw_iteropts
{synoptline}
包含 help pss_numlist
{p 4 6 2}{cmd:notitle} 不会出现在对话框中。{p_end}

{marker tablespec}{...}
{pstd}
这是 {it:tablespec}

{p 8 16 2}
{help ciwidth_twomeans##column:{it:column}}[{cmd::}{it:label}]
[{it:column}[{cmd::}{it:label}] [...]]
[{cmd:,} {help ciwidth table##tableopts:{it:tableopts}}]

{pstd}
{it:column} 是下方定义的列之一，{it:label} 是列标签（可以包含引号和复合引号）。

{marker column}{...}
{synoptset 28}{...}
{synopthdr :列}
{synoptline}
{synopt :{cmd:level}}置信水平{p_end}
{synopt :{cmd:alpha}}显著性水平{p_end}
{synopt :{cmd:N}}受试者总数{p_end}
{synopt :{cmd:N1}}对照组的受试者数量{p_end}
{synopt :{cmd:N2}}实验组的受试者数量{p_end}
{synopt :{cmd:nratio}}样本大小的比率，实验组与对照组{p_end}
{synopt :{cmd:Pr_width}}置信区间宽度的概率{p_end}
{synopt :{cmd:width}}置信区间宽度{p_end}
{synopt :{cmd:sd}}共同标准差{p_end}
{synopt :{cmd:sd1}}对照组标准差{p_end}
{synopt :{cmd:sd2}}实验组标准差{p_end}
{synopt :{cmd:_all}}显示所有支持的列{p_end}
{synoptline}
{p 4 6 2}如果指定了 {cmd:alpha()}，则 {cmd:alpha} 列在默认表中代替 {cmd:level} 列显示。{p_end}
{p 4 6 2}如果指定了相应选项，则在默认表中显示列 {cmd:nratio}、{cmd:sd}、{cmd:sd1} 和 {cmd:sd2}。


包含 help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:ciwidth twomeans} 计算独立样本之间均值差异的置信区间的样本大小、置信区间宽度和宽度概率。它可以计算用于给定置信区间宽度和宽度概率的样本大小。或者，它可以计算给定样本大小和宽度概率的置信区间宽度。它还可以计算给定样本大小和置信区间宽度的宽度概率。另请参见 {help ciwidth_zh:[PSS-3] ciwidth} 以进行其他置信区间方法的 PrSS 分析。

{pstd}
有关两个样本均值检验的检验力和样本大小分析，请参见 {help power_twomeans_zh:[PSS-2] power twomeans}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection PSS-3 ciwidthtwomeansRemarksandexamples:备注和示例}

        {mansection PSS-3 ciwidthtwomeansMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{marker mainopts}{...}
{dlgtab:主要}

{phang}
{opt level()}, {opt alpha()}, {opt probwidth()}, {opt width()}, {opt n()},
{opt n1()}, {opt n2()}, {opt nratio()}, {opt compute()},
{opt nfractional}; 参见 {help ciwidth_zh:[PSS-3] ciwidth}。
{opt probwidth()} 可能无法与 {opt sd1()}、 {opt sd2()} 和 {opt knownsds} 组合使用。

{phang}
{opth sd(numlist)} 指定控制组和实验组的共同标准差，假定两组的标准差相等。默认值为 {cmd:sd(1)}。

{phang}
{opth sd1(numlist)} 指定对照组的标准差。如果您指定 {opt sd1()}，则还必须指定 {opt sd2()} 和 {opt knownsds}。
{opt sd1()} 可能无法与 {opt probwidth()} 组合使用。

{phang}
{opth sd2(numlist)} 指定实验组的标准差。如果您指定 {opt sd2()}，则还必须指定 {opt sd1()} 和 {opt knownsds}。
{opt sd2()} 可能无法与 {opt probwidth()} 组合使用。

{phang}
{opt knownsds} 请求将每组的标准差视为已知。在计算时，默认情况下将标准差视为未知，并为基于 t 的置信区间执行计算。如果指定了 {opt knownsds}，则执行基于正态的置信区间的计算。{opt knownsds} 可能无法与 {opt probwidth()} 组合使用，并在计算置信区间宽度的概率时不允许。

包含 help ciw_sideoptsdes

包含 help ciw_tableoptsdes

包含 help ciw_graphoptsdes
另请参见 {mansection PSS-3 ciwidthtwomeansSyntaxcolumn:column} 表，以获取图形中使用的符号列表。

{dlgtab:迭代}

{phang}
{opt init(#)} 指定用于样本大小确定的估计样本大小的初始值。估计样本大小是对照组大小 n1，或者如果指定了 {cmd:compute(N2)}，则为实验组大小 n2。默认情况下使用封闭形式正态近似来计算初始样本大小。

包含 help ciw_iteroptsdes

{pstd}
以下选项可与 {cmd:ciwidth twomeans} 一起使用，但未在对话框中显示：

包含 help ciw_nodboptdes


{marker examples}{...}
{title:示例}

    {title:示例：计算样本大小}

{pstd}
    计算两个均值之间的双侧 95% 置信区间所需的总样本大小（默认值），
    使宽度不大于 8的概率为 90%；假设组大小相等，且两组的标准差均为 4{p_end}
{phang2}{cmd:. ciwidth twomeans, width(6) probwidth(0.9) sd(4)}

{pstd}
    与上述相同，但用于下侧单侧置信区间{p_end}
{phang2}{cmd:. ciwidth twomeans, width(6) probwidth(0.9) sd(4) lower}

{pstd}
    假设标准差已知为对照组的 4 和实验组的 5，计算总样本大小{p_end}
{phang2}{cmd:. ciwidth twomeans, width(6) sd1(4) sd2(5) knownsds}

{pstd}
    与第一个示例相同，但指定实验组的观测数量是对照组的两倍{p_end}
{phang2}{cmd:. ciwidth twomeans, width(6) probwidth(0.9) sd(4) nratio(2)}

{pstd}
    与上述相同，但允许有分数样本大小{p_end}
{phang2}{cmd:. ciwidth twomeans, width(6) probwidth(0.9) sd(4)}
	{cmd:nratio(2) nfractional}

{pstd}
    使用与第一个示例相同的参数，找到实验组所需的样本大小，
    如果已知对照组有 25 个观测值{p_end}
{phang2}{cmd:. ciwidth twomeans, width(6) probwidth(0.9) sd(4) n1(25)}
       {cmd:compute(N2)}


    {title:示例：计算置信区间宽度}

{pstd}
    假设我们有一个样本总数为 80，并且想要计算
    两个均值的双侧 95% 置信区间的宽度（默认值），
    假设置信区间宽度在估计值范围内的概率为 90%，
    组大小相等，且共同标准差为 12{p_end}
{phang2}{cmd:. ciwidth twomeans, n(80) probwidth(0.9) sd(12)}

{pstd}
    与上述相同，假设对照组有 30 个观测值，实验组有 50 个观测值{p_end}
{phang2}{cmd:. ciwidth twomeans, n1(30) n2(50) probwidth(0.9) sd(12)}

{pstd}
    计算一系列样本大小的置信区间宽度，并绘制结果{p_end}
{phang2}{cmd:. ciwidth twomeans, n(50(10)80) probwidth(0.9) sd(12) graph}


    {title:示例：计算置信区间宽度的概率}

{pstd}
    假设我们有 60 个受试者的样本，我们想要计算
    对于双侧 95% 置信区间（默认值），
    实验组和对照组均值之间的置信区间宽度不大于 12 的概率；
    假设两组的观测数量相同，且标准差为 10{p_end}
{phang2}{cmd:. ciwidth twomeans, width(12) n(60) sd(10)}

{pstd}
    与上述相同，但对于一系列样本大小{p_end}
{phang2}{cmd:. ciwidth twomeans, width(12) n(40(2)60) sd(10)}

{pstd}
    使用与第一个示例相同的参数，但假定对照组有 25 个观测值，实验组有 35 个观测值{p_end}
{phang2}{cmd:. ciwidth twomeans, width(12) n1(25) n2(35) sd(10)}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:ciwidth twomeans} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt :{cmd:r(level)}}置信水平{p_end}
{synopt :{cmd:r(alpha)}}显著性水平{p_end}
{synopt :{cmd:r(N)}}总样本大小{p_end}
{synopt :{cmd:r(N_a)}}实际样本大小{p_end}
{synopt :{cmd:r(N1)}}对照组的样本大小{p_end}
{synopt :{cmd:r(N2)}}实验组的样本大小{p_end}
{synopt :{cmd:r(nratio)}}样本大小的比率，{cmd:N2/N1}{p_end}
{synopt :{cmd:r(nratio_a)}}实际样本大小比率{p_end}
{synopt :{cmd:r(nfractional)}}{cmd:1} 如果指定了 {cmd:nfractional}，
{cmd:0} 否则{p_end}
{synopt :{cmd:r(onesided)}}{cmd:1} 对于单侧置信区间，{cmd:0} 否则{p_end}
{synopt :{cmd:r(Pr_width)}}置信区间宽度的概率{p_end}
{synopt :{cmd:r(Pr_width_a)}}实际置信区间宽度的概率（当指定 {cmd:probwidth()} 时用于样本大小确定）{p_end}
{synopt :{cmd:r(width)}}置信区间宽度{p_end}
{synopt :{cmd:r(width_a)}}实际置信区间宽度（当指定 {cmd:knownsds} 时用于样本大小确定）{p_end}
{synopt :{cmd:r(sd)}}对照组和实验组的共同标准差{p_end}
{synopt :{cmd:r(sd1)}}对照组的标准差{p_end}
{synopt :{cmd:r(sd2)}}实验组的标准差{p_end}
{synopt :{cmd:r(knownsds)}}{cmd:1} 如果指定了选项 {cmd:knownsds}，
{cmd:0} 否则{p_end}
{synopt :{cmd:r(separator)}}表中分隔线之间的行数{p_end}
{synopt :{cmd:r(divider)}}{cmd:1} 如果请求表格中的 {cmd:divider}，{cmd:0} 否则{p_end}
{synopt :{cmd:r(init)}}样本大小的初始值{p_end}
{synopt :{cmd:r(maxiter)}}最大迭代次数{p_end}
{synopt :{cmd:r(iter)}}执行的迭代次数{p_end}
{synopt :{cmd:r(tolerance)}}请求的参数容差{p_end}
{synopt :{cmd:r(deltax)}}最终实现的参数容差{p_end}
{synopt :{cmd:r(ftolerance)}}请求的目标函数与零的距离{p_end}
{synopt :{cmd:r(function)}}目标函数最终与零的距离{p_end}
{synopt :{cmd:r(converged)}}{cmd:1} 如果迭代算法收敛，{cmd:0} 否则{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt :{cmd:r(type)}}{cmd:ci}{p_end}
{synopt :{cmd:r(method)}}{cmd:twomeans}{p_end}
{synopt :{cmd:r(onesidedci)}}{cmd:upper} 或 {cmd:lower}（对于单侧置信区间）{p_end}
{synopt :{cmd:r(columns)}}显示的表格列{p_end}
{synopt :{cmd:r(labels)}}表格列标签{p_end}
{synopt :{cmd:r(widths)}}表格列宽度{p_end}
{synopt :{cmd:r(formats)}}表格列格式{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt :{cmd:r(pss_table)}}结果表{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ciwidth_twomeans.sthlp>}