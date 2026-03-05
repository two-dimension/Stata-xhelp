{smcl}
{* *! version 1.0.19  05mar2019}{...}
{viewerdialog "variance scale" "dialog power_twovar_var"}{...}
{viewerdialog "standard-deviation scale" "dialog power_twovar_sd"}{...}
{vieweralsosee "[PSS-2] power twovariances" "mansection PSS-2 powertwovariances"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] sdtest" "help sdtest_zh"}{...}
{viewerjumpto "Syntax" "power_twovariances_zh##syntax"}{...}
{viewerjumpto "Menu" "power_twovariances_zh##menu"}{...}
{viewerjumpto "Description" "power_twovariances_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_twovariances_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_twovariances_zh##options"}{...}
{viewerjumpto "Remarks: Using power twovariances" "power_twovariances_zh##remarks"}{...}
{viewerjumpto "Examples" "power_twovariances_zh##examples"}{...}
{viewerjumpto "Stored results""power_twovariances##stored_results"}
{help power_twovariances:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[PSS-2] power twovariances} {hline 2}}两样本方差比检验的功效分析{p_end}
{p2col:}({mansection PSS-2 powertwovariances:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
计算样本大小

{p 6 43 2}
方差量表

{p 8 43 2}
{opt power} {opt twovar:iances} {it:v1} {it:v2}
[{cmd:,} {opth p:ower(numlist)} 
{it:{help power_twovariances##synoptions:选项}}]


{p 6 43 2}
标准差量表

{p 8 43 2}
{opt power} {opt twovar:iances} {it:s1} {it:s2}
{cmd:,} {cmd:sd} [{opth p:ower(numlist)} 
{it:{help power_twovariances##synoptions:选项}}] 



{phang}
计算功效

{p 6 43 2}
方差量表

{p 8 43 2}
{opt power} {opt twovar:iances} {it:v1} {it:v2}{cmd:,} 
{opth n(numlist)} [{it:{help power_twovariances##synoptions:选项}}]


{p 6 43 2}
标准差量表

{p 8 43 2}
{opt power} {opt twovar:iances} {it:s1} {it:s2}{cmd:,} {cmd:sd}
{opth n(numlist)} [{it:{help power_twovariances##synoptions:选项}}]



{phang}
计算效应大小和目标参数 

{p 6 43 2}
实验组方差

{p 8 43 2}
{opt power} {opt twovar:iances} {it:v1}{cmd:,} {opth n(numlist)} 
{opth p:ower(numlist)} [{it:{help power_twovariances##synoptions:选项}}]


{p 6 43 2}
实验组标准差

{p 8 43 2}
{opt power} {opt twovar:iances} {it:s1}{cmd:,} {cmd:sd} {opth n(numlist)} 
{opth p:ower(numlist)} [{it:{help power_twovariances##synoptions:选项}}]


{phang}
其中 {it:v1} 和 {it:s1} 分别是对照（参考）组的方差和标准差，而 {it:v2} 和 {it:s2} 是实验（比较）组的方差和标准差。每个参数可以用一个数值或用括号中的数值列表来指定（请参见 {help numlist_zh}）。{p_end}


{synoptset 30 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{synopt: {opt sd}}请求使用标准差量表进行计算；默认使用方差量表{p_end}

{syntab:主要}
INCLUDE help pss_twotestmainopts1.ihlp
{synopt: {opt nfrac:tional}}允许使用分数样本大小{p_end}
{p2coldent:* {opth ratio(numlist)}}方差比， {it:v2}/{it:v1}
（或标准差比， {it:s2}/{it:s1}，如果指定了选项 {cmd:sd}）；指定为实验组方差 {it:v2}（或标准差 {it:s2}）的替代{p_end}
INCLUDE help pss_testmainopts3.ihlp

{syntab:表}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_twovariances##tablespec:tablespec}}{cmd:)}]}抑制表格或将结果显示为表格；见
{manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}将表格数据保存到 {it:filename}；使用 {cmd:replace} 替换现有的 {it:filename}{p_end}

INCLUDE help pss_graphopts.ihlp

{syntab:迭代}
{synopt: {opt init(#)}}样本大小或实验组方差的初始值{p_end}
INCLUDE help pss_iteropts.ihlp

INCLUDE help pss_reportopts.ihlp
{synoptline}
{p2colreset}{...}
INCLUDE help pss_numlist.ihlp
{p 4 6 2}{cmd:sd} 在对话框中不出现；{cmd:sd} 的指定由所选对话框自动完成。{p_end}
{p 4 6 2}{cmd:notitle} 在对话框中不出现。{p_end}

{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 是

{p 16 16 2}
{it:{help power_twovariances##column:column}}[{cmd::}{it:label}]
[{it:column}[{cmd::}{it:label}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:tableopts}}]

{pstd}
{it:column} 是下面定义的列之一， {it:label} 是列标签（可以包含引号和复合引号）。

{synoptset 28}{...}
{marker column}{...}
{synopthdr :列}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}功效{p_end}
{synopt :{opt beta}}第二类错误概率{p_end}
{synopt :{opt N}}受试者总数{p_end}
{synopt :{opt N1}}对照组中的受试者数量{p_end}
{synopt :{opt N2}}实验组中的受试者数量{p_end}
{synopt :{opt nratio}}样本大小比例，实验组与对照组{p_end}
{synopt :{opt delta}}效应大小{p_end}
{synopt :{opt v1}}对照组方差{p_end}
{synopt :{opt v2}}实验组方差{p_end}
{synopt :{opt s1}}对照组标准差{p_end}
{synopt :{opt s2}}实验组标准差{p_end}
{synopt :{opt ratio}}实验组方差与对照组方差的比率，或如果指定了 {cmd:sd} 的话，实验组标准差与对照组标准差的比率{p_end}
{synopt :{opt target}}目标参数； {cmd:v2} 的同义词{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}如果指定了列 {cmd:beta}，则在默认表中显示该列，而不是列 {cmd:power}。{p_end}
{p 4 6 2}如果指定了  {cmd:sd} 选项，列 {cmd:s1} 和 {cmd:s2} 将在默认表中替代列 {cmd:v1} 和 {cmd:v2} 显示。{p_end}
{p 4 6 2}如果指定了列 {cmd:ratio}，则在默认表中显示该列。如果指定了 {cmd:sd} 选项，此列包含标准差的比率。否则，此列包含方差的比率。

INCLUDE help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:power twovariances} 计算两样本方差检验的样本大小、功效或实验组方差（或标准差）。默认情况下，它为给定功效和对照组及实验组方差的值计算样本大小。或者，它可以为给定样本大小和对照组及实验组方差的值计算功效，或为给定样本大小、功效和对照组方差计算实验组方差。另请参见 {manhelp power PSS-2} 关于使用假设检验的一般介绍 {cmd:power} 命令。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection PSS-2 powertwovariancesQuickstart:快速入门}

        {mansection PSS-2 powertwovariancesRemarksandexamples:备注和示例}

        {mansection PSS-2 powertwovariancesMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt sd} 指定使用标准差量表进行计算。默认是使用方差量表。

{dlgtab:主要}

{phang}
{cmd:alpha()}, {cmd:power()}, {cmd:beta()}, {cmd:n()}, {cmd:n1()},
{cmd:n2()}, {cmd:nratio()}, {cmd:compute()}, {cmd:nfractional};
见 {manhelp power##mainopts PSS-2:power}。

{phang}
{opt ratio(numlist)} 指定实验组方差与对照组方差的比率 {it:v2}/{it:v1}，或者如果指定了 {cmd:sd} 选项，指定标准差的比率 {it:s2}/{it:s1}。你可以将实验组方差 {it:v2} 指定为命令参数，或者在 {cmd:ratio()} 中指定方差的比率。如果你指定 {opt ratio(#)}，则实验组方差计算为 {it:v2} = {it:v1} x {it:#}。该选项不允许用于效应大小的确定。

{phang}
{cmd:direction()}, {cmd:onesided}, {cmd:parallel}; 见
{manhelp power##mainopts PSS-2:power}。

INCLUDE help pss_taboptsdes.ihlp

INCLUDE help pss_graphoptsdes.ihlp
另请参见 {mansection PSS-2 powertwovariancesSyntaxcolumn:column} 表中有关图表所用符号的列表。

{dlgtab:迭代}

{phang}
{opt init(#)} 指定估计参数的初始值。对于样本大小确定，估计参数可以是对照组大小 n1，或者如果指定了 {cmd:compute(N2)}，则为实验组大小 n2。用于效应大小确定时，估计参数为实验组方差 {it:v2}，或者如果指定了 {cmd:sd} 选项，则为实验组标准差 {it:s2}。两侧检验的方差和标准差的默认初始值是从对应的单侧检验的闭式解中获得，显著性水平为 alpha/2。卡方检验的样本大小的默认初始值是根据对应的闭式正态近似的。

INCLUDE help pss_iteroptsdes.ihlp

{pstd}
以下选项可以与 {cmd:power twovariances} 一起使用，但在对话框中未显示：

INCLUDE help pss_reportoptsdes.ihlp


{marker remarks}{...}
{title:备注：使用 power twovariances}

{pstd}
{cmd:power twovariances} 计算两样本方差比检验的样本大小、功效或实验组方差。所有计算均针对双侧假设检验进行，默认显著性水平设置为 0.05。你可以通过指定 {cmd:alpha()} 选项来改变显著性水平。你可以指定 {cmd:onesided} 选项请求单侧检验。默认情况下，所有计算假设为平衡或均等分配设计；详情请见 {manlink PSS-4 Unbalanced designs} 描述如何指定不平衡设计。

{pstd}
下面我们描述如何在方差度量中使用 {cmd:power twovariances}。当指定 {cmd:sd} 选项时，标准差度量中的相应用法相同，只需将方差 {it:v1} 和 {it:v2} 替换为相应的标准差 {it:s1} 和 {it:s2}。注意，使用方差和标准差量表的计算结果相同；区别仅在于参数的指定。

{pstd}
要计算总样本大小，必须分别指定对照组和实验组的方差 {it:v1} 和 {it:v2}，并且可以选择性地在 {cmd:power()} 选项中指定检验的功效。默认功效设置为 0.8。

{pstd}
你可以计算其中一组的样本大小，而给定另一组的样本大小。要计算对照组样本大小，你必须指定 {cmd:compute(N1)} 选项，并在 {cmd:n2()} 选项中指定实验组的样本大小。同样，要计算实验组的样本大小，你必须指定 {cmd:compute(N2)} 选项，并在 {cmd:n1()} 选项中指定对照组的样本大小。

{pstd}
要计算功效，你必须在 {cmd:n()} 选项中指定总样本大小，并指定对照组和实验组的方差 {it:v1} 和 {it:v2}。

{pstd}
在计算样本大小或功效时，除了实验组方差 {it:v2} 外，你还可以在 {cmd:ratio()} 选项中指定实验组方差与对照组方差的比率 {it:v2/v1}。

{pstd}
要计算效应大小，实验组方差与对照组方差的比率，以及实验组方差，你必须在 {cmd:n()} 选项中指定总样本大小，在 {cmd:power()} 选项中指定功效，对照组方差 {it:v1}，并可选择指定效应的方向。默认情况下，方向为上，{cmd:direction(upper)}，这意味着实验组方差假设大于指定的对照组值。你可以通过指定 {cmd:direction(lower)} 选项将方向更改为下，这意味着实验组方差假设小于指定的对照组值。

{pstd}
在计算功效或效应大小时，你可以在 {cmd:n1()} 和 {cmd:n2()} 中指定个别组大小，或者指定其中一个组大小和 {cmd:nratio()}。

另请参见 {mansection PSS-4 Unbalanced designs Remarks and examples Two samples: {it:Two samples}} 以获取更多详情。


{marker examples}{...}
{title:示例}

    {title:示例：计算样本大小}

{pstd}
    计算在对照组方差为 1.5 时，检测实验组方差为 3 所需的样本大小，使用双侧检验；假设显著性水平为 5%，功效为 80%，并且组分配相等{p_end}
{phang2}{cmd:. power twovariances 1.5 3}

{pstd}
    同上，假设实验组将是对照组的两倍{p_end}
{phang2}{cmd:. power twovariances 1.5 3, nratio(2)}

{pstd}
    同第一个示例，使用 {cmd:ratio()} 选项指定实验组方差为对照组方差的两倍{p_end}
{phang2}{cmd:. power twovariances 1.5, ratio(2)}

{pstd}
    同第一个示例，指定对照组将有 60 个观察值{p_end}
{phang2}{cmd:. power twovariances 1.5 3, n1(60) compute(N2)}

{pstd}
    同第一个示例，但使用单侧检验和 10% 的显著性水平{p_end}
{phang2}{cmd:. power twovariances 1.5 3, alpha(0.1) onesided}

{pstd}
    同第一个示例，指定标准差而非方差 [sqrt(3) = 1.7320]{p_end}
{phang2}{cmd:. power twovariances 1 1.7320, sd}

{pstd}
    计算一系列实验组方差和功效的总样本大小，并绘制结果图{p_end}
{phang2}{cmd:. power twovariances 1.5 (2(0.1)4), power(0.8 0.9) graph}


    {title:示例：计算功效}

{pstd}
    假设我们有一个 50 个受试者的样本，我们希望计算双侧检验的功效，以检测实验组方差为 3，假设对照组方差为 4；假设这两组有相等的观察数和 5% 的显著性水平（默认值）{p_end}
{phang2}{cmd:. power twovariances 4 3, n(50)}

{pstd}
    同上，但对照组有 20 个观察值，实验组有 30 个观察值{p_end}
{phang2}{cmd:. power twovariances 4 3, n1(20) n2(30)}

{pstd}
    同上{p_end}
{phang2}{cmd:. power twovariances 4 3, n1(20) nratio(1.5)}

{pstd}
    同上{p_end}
{phang2}{cmd:. power twovariances 4 3, n2(30) nratio(1.5)}

{pstd}
    计算一系列样本大小的功效，并绘制结果图{p_end}
{phang2}{cmd:. power twovariances 4 3, n(50(10)100) graph}


    {title:示例：计算实验组方差}

{pstd}
    计算在对照组方差为 2 的情况下，可以通过双侧检验以 80% 的功效检测到的实验组方差的最小值，总样本为 100 名受试者；假设两组观察数相等，并且显著性水平为 5%（默认值）{p_end}
{phang2}{cmd:. power twovariances 2, n(100) power(0.8)}

{pstd}
    同上{p_end}
{phang2}{cmd:. power twovariances 2, n(100) power(0.8) direction(upper)}

{pstd}
    计算可以检测到的低于对照组方差 2 的最大实验组方差{p_end}
{phang2}{cmd:. power twovariances 2, n(100) power(0.8) direction(lower)}


{marker stored_results}{...}
{title:存储结果}

{pstd}
{cmd:power twovariances} 在 {cmd:r()} 中存储以下结果：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
INCLUDE help pss_rrestwotest_sc.ihlp
{synopt:{cmd: r(v1)}}对照组方差{p_end}
{synopt:{cmd: r(v2)}}实验组方差{p_end}
{synopt:{cmd: r(ratio)}}实验组与对照组方差的比率（如果指定了 {cmd:sd}，则为标准差）{p_end}
INCLUDE help pss_rrestab_sc.ihlp
{synopt:{cmd: r(init)}}样本大小、实验组方差或标准差的初始值{p_end}
INCLUDE help pss_rresiter_sc.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:twovariances}{p_end}
{synopt:{cmd:r(scale)}}{cmd:variance} 或 {cmd:standard deviation}{p_end}
INCLUDE help pss_rrestest_mac.ihlp
INCLUDE help pss_rrestab_mac.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
INCLUDE help pss_rrestab_mat.ihlp

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_twovariances.sthlp>}