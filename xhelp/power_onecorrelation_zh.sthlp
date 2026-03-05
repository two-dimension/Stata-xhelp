{smcl}
{* *! version 1.0.14  27feb2019}{...}
{viewerdialog power "dialog power_onecorr"}{...}
{vieweralsosee "[PSS-2] power onecorrelation" "mansection PSS-2 poweronecorrelation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] correlate" "help correlate_zh"}{...}
{viewerjumpto "Syntax" "power_onecorrelation_zh##syntax"}{...}
{viewerjumpto "Menu" "power_onecorrelation_zh##menu"}{...}
{viewerjumpto "Description" "power_onecorrelation_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_onecorrelation_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_onecorrelation_zh##options"}{...}
{viewerjumpto "Remarks: Using power onecorrelation" "power_onecorrelation_zh##remarks"}{...}
{viewerjumpto "Examples" "power_onecorrelation_zh##examples"}{...}
{viewerjumpto "Stored results" "power_onecorrelation_zh##stored_results"}
{help power_onecorrelation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[PSS-2] power onecorrelation} {hline 2}}单样本相关性检验的功效分析{p_end}
{p2col:}({mansection PSS-2 poweronecorrelation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
计算样本大小

{p 8 43 2}
{opt power} {opt onecorr:elation} {it:r0} {it:ra}
[{cmd:,} {opth p:ower(numlist)} 
{it:{help power_onecorrelation##synoptions:选项}}]


{phang}
计算功效 

{p 8 43 2}
{opt power} {opt onecorr:elation} {it:r0} {it:ra}{cmd:,} {opth n(numlist)} 
[{it:{help power_onecorrelation##synoptions:选项}}]


{phang}
计算效应大小和目标相关性

{p 8 43 2}
{opt power} {opt onecorr:elation} {it:r0}{cmd:,} {opth n(numlist)} 
{opth p:ower(numlist)} [{it:{help power_onecorrelation##synoptions:选项}}]


{phang}
其中 {it:r0} 是零假设下的（假定）相关性，{it:ra} 是替代（目标）相关性或替代假设下的相关性。{it:r0} 和 {it:ra} 可以指定为一个数字或括号中的值列表（详见 {help numlist_zh}）。{p_end}


{synoptset 30 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{syntab:主}
INCLUDE help pss_testmainopts1.ihlp
{synopt: {opt nfrac:tional}}允许使用分数样本大小{p_end}
{p2coldent:* {opth diff(numlist)}}替代相关性与零假设相关性之间的差异，{it:ra}-{it:r0}; 代替替代相关性 {it:ra} 进行指定{p_end}
INCLUDE help pss_testmainopts3.ihlp

{syntab:表格}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_onecorrelation##tablespec:表格规范}}{cmd:)}]}抑制表格或将结果显示为表格；参见 
{manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}将表格数据保存为 {it:filename}; 使用 {cmd:replace} 来覆盖现有的 {it:filename}{p_end}

INCLUDE help pss_graphopts.ihlp

{syntab:迭代}
{synopt: {opt init(#)}}样本大小或相关性的初始值{p_end}
INCLUDE help pss_iteropts.ihlp

INCLUDE help pss_reportopts.ihlp
{synoptline}
{p2colreset}{...}
INCLUDE help pss_numlist.ihlp
{p 4 6 2}{cmd:notitle} 不出现在对话框中。{p_end}

{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 是

{p 16 16 2}
{it:{help power_onecorrelation##column:列}}[{cmd::}{it:标签}]
[{it:列}[{cmd::}{it:标签}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:表格选项}}]

{pstd}
{it:列} 是下面定义的某一列，而 {it:标签} 是列的标签（可以包含引号和复合引号）。

{synoptset 28}{...}
{marker column}{...}
{synopthdr :列}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}功效{p_end}
{synopt :{opt beta}}II型错误概率{p_end}
{synopt :{opt N}}样本数{p_end}
{synopt :{opt delta}}效应大小{p_end}
{synopt :{opt r0}}零假设相关性{p_end}
{synopt :{opt ra}}替代假设相关性{p_end}
{synopt :{opt diff}}替代与零假设相关性之间的差异{p_end}
{synopt :{opt target}}目标参数；{cmd:ra} 的同义词{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}如果指定，则列 {cmd:beta} 在默认表中替代列 {cmd:power} 显示。{p_end}


INCLUDE help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:power} {cmd:onecorrelation} 用于计算单样本相关性检验的样本大小、功效或目标相关性。默认情况下，它为给定功效以及零假设和替代假设下的相关性参数值计算样本大小。或者，它可以为给定的样本大小及零假设和替代假设下的相关性值计算功效，或者为给定的样本大小、功效和零假设相关性计算目标相关性。
另请参见 {manhelp power PSS-2} 以获取有关使用假设检验的 {cmd:power} 命令的一般介绍。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection PSS-2 poweronecorrelationQuickstart:快速入门}

        {mansection PSS-2 poweronecorrelationRemarksandexamples:备注和示例}

        {mansection PSS-2 poweronecorrelationMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}
{cmd:alpha()}, {cmd:power()}, {cmd:beta()}, {cmd:n()}, {cmd:nfractional}; 参见
{manhelp power##mainopts PSS-2:power}。
{opt nfractional} 选项仅适用于样本大小的确定。

{phang}
{opth diff(numlist)} 指定替代相关性与零假设相关性之间的差异，{it:ra} - {it:r0}。您可以将替代相关性 {it:ra} 指定为命令参数，或在 {cmd:diff()} 选项中指定两者之间的差异。如果您指定 {opt diff(#)}，则计算得到的替代相关性为 {it:ra} = {it:r0} + {it:#}。此选项在效应大小的确定中不被允许。

{phang}
{cmd:direction()}, {cmd:onesided}, {cmd:parallel}; 参见
{manhelp power##mainopts PSS-2:power}。

INCLUDE help pss_taboptsdes.ihlp

INCLUDE help pss_graphoptsdes.ihlp
另请参见 {mansection PSS-2 poweronecorrelationSyntaxcolumn:列} 表，以获取图形使用的符号列表。

{dlgtab:迭代}

{phang}
{opt init(#)} 指定迭代过程的初始值。迭代用于计算双侧检验的样本大小或目标相关性。估计参数的默认初始值是根据使用显著性水平 alpha/2 的相应闭合形式单边计算得出的。

INCLUDE help pss_iteroptsdes.ihlp

{pstd}
以下选项适用于 {cmd:power onecorrelation}，但不显示在对话框中：

INCLUDE help pss_reportoptsdes.ihlp



{marker remarks}{...}
{title:备注：使用 power onecorrelation}

{pstd}
{cmd:power onecorrelation} 计算单样本相关性检验的样本大小、功效或目标相关性。所有计算均针对双侧假设检验执行，默认情况下显著性水平设为 0.05。您可以通过指定 {cmd:alpha()} 选项来更改显著性水平。您可以指定 {cmd:onesided} 选项来请求单侧检验。

{pstd}
要计算样本大小，必须分别指定零假设和替代假设下的相关性 {it:r0} 和 {it:ra}，并可选择在 {cmd:power()} 选项中指定检验的功效。默认功效设为 0.8。

{pstd}
要计算功效，您必须在 {cmd:n()} 选项中指定样本大小，并分别指定零假设和替代假设下的相关性 {it:r0} 和 {it:ra}。

{pstd}
在计算样本大小或功效时，您可以在 {cmd:diff()} 选项中指定替代相关性 {it:ra} 与零假设相关性 {it:r0} 之间的差异 {it:ra} - {it:r0}。

{pstd}
要计算效应大小（及目标相关性），您必须在 {cmd:n()} 选项中指定样本大小，在 {cmd:power()} 选项中指定功效，指定零假设相关性 {it:r0}，并可选择指定效应方向。默认情况下方向为上，即 {cmd:direction(upper)}，这意味着目标相关性被假定为大于指定的零值。这也等同于假定存在正效应大小。您可以通过指定 {cmd:direction(lower)} 选项将方向更改为下，即目标相关性被假定为小于指定的零值。这等同于假定存在负效应大小。

{pstd}
默认情况下，计算出的样本大小将向上取整。您可以指定 {cmd:nfractional} 选项以查看对应的分数样本大小；参见 {mansection PSS-4 UnbalanceddesignsRemarksandexamplesFractionalsamplesizes:{it:分数样本大小}} 中的 {bf:[PSS-4] 不平衡设计} 的示例。 {cmd:nfractional} 选项仅适用于样本大小的确定。

{pstd}
双侧检验的样本大小和效应大小的确定需要迭代。估计参数的默认初始值是根据使用显著性水平 alpha/2 的相应闭合形式单边计算得出的。您可以通过指定 {cmd:init()} 选项来更改默认初始值。有关控制迭代过程的其他选项的描述，请参见 {manhelp power PSS-2}。

{pstd}
在以下部分中，我们会描述 {cmd:power onecorrelation} 的用法，并附上计算样本大小、功效和目标相关性示例。


{marker examples}{...}
{title:示例}

    {title:示例：计算样本大小}

{pstd}
    计算检测相关性 0.5 所需的样本大小，功效 80%，使用双侧检验检验零假设相关性为 0；假设显著性水平为 5%（默认值）{p_end}
{phang2}{cmd:. power onecorrelation 0 0.5}

{pstd}
    与上述相同，要求功效 90%{p_end}
{phang2}{cmd:. power onecorrelation 0 0.5, power(0.9)}

{pstd}
    与上述相同，使用单侧检验{p_end}
{phang2}{cmd:. power onecorrelation 0 0.5, alpha(0.1) onesided}

{pstd}
    与第一个示例相同，只是零假设下的相关性为 0.2{p_end}
{phang2}{cmd:. power onecorrelation 0.2 0.5}

{pstd}
    计算一系列替代相关性和功效的样本大小，绘制结果图{p_end}
{phang2}{cmd:. power onecorrelation 0 (0.3(0.1)0.8), power(0.8 0.9) graph}


    {title:示例：计算功效}

{pstd}
    假设我们有 80 个被试样本，我们想要计算在零假设下相关性为 0 时检测到相关性为 0.5 的双侧检验的功效；假设显著性水平为 5%（默认值）{p_end}
{phang2}{cmd:. power onecorrelation 0 0.5, n(80)}

{pstd}
    计算一系列替代相关性和样本大小的功效，绘制结果图{p_end}
{phang2}{cmd:. power onecorrelation 0 (0.3 0.5), n(20(10)100) graph}


    {title:示例：计算目标相关性}

{pstd}
    计算在零假设下相关性为 0 的情况下，在 100 个样本中以 80% 功效检测到的双侧检验的相关性的最小值；假设显著性水平为 5%（默认值）{p_end}
{phang2}{cmd:. power onecorrelation 0, n(100) power(0.8)}

{pstd}
    与上述相同{p_end}
{phang2}{cmd:. power onecorrelation 0, n(100) power(0.8) direction(upper)}

{pstd}
    计算可以检测到的低于零假设的最大相关性{p_end}
{phang2}{cmd:. power onecorrelation 0, n(100) power(0.8) direction(lower)}


{marker stored_results}{...}
{title:存储结果}

{pstd}
{cmd:power onecorrelation} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd: r(alpha)}}显著性水平{p_end}
{synopt:{cmd: r(power)}}功效{p_end}
{synopt:{cmd: r(beta)}}II型错误的概率{p_end}
{synopt:{cmd: r(delta)}}效应大小{p_end}
{synopt:{cmd: r(N)}}样本大小{p_end}
{synopt:{cmd: r(nfractional)}}{cmd:1} 如果指定了 {cmd:nfractional}，否则为 {cmd:0}{p_end}
{synopt:{cmd: r(onesided)}}{cmd:1} 表示单侧检验，{cmd:0} 其他情况{p_end}
{synopt:{cmd: r(r0)}}零假设下的相关性{p_end}
{synopt:{cmd: r(ra)}}替代假设下的相关性{p_end}
{synopt:{cmd: r(diff)}}替代与零假设相关性之间的差异{p_end}
INCLUDE help pss_rrestab_sc.ihlp
{synopt:{cmd: r(init)}}样本大小或相关性的初始值{p_end}
INCLUDE help pss_rresiter_sc.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:onecorrelation}{p_end}
INCLUDE help pss_rrestest_mac.ihlp
INCLUDE help pss_rrestab_mac.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
INCLUDE help pss_rrestab_mat.ihlp

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_onecorrelation.sthlp>}