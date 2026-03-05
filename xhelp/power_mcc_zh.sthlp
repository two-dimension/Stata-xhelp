{smcl}
{* *! version 1.0.14  04mar2019}{...}
{viewerdialog power "dialog power_mcc"}{...}
{vieweralsosee "[PSS-2] power mcc" "mansection PSS-2 powermcc"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power pairedproportions" "help power pairedproportions"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] clogit" "help clogit_zh"}{...}
{vieweralsosee "[R] Epitab" "help epitab_zh"}{...}
{vieweralsosee "[R] symmetry" "help symmetry_zh"}{...}
{viewerjumpto "Syntax" "power_mcc_zh##syntax"}{...}
{viewerjumpto "Menu" "power_mcc_zh##menu"}{...}
{viewerjumpto "Description" "power_mcc_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_mcc_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_mcc_zh##options"}{...}
{viewerjumpto "Remarks: Using power mcc" "power_mcc_zh##remarks"}{...}
{viewerjumpto "Examples" "power_mcc_zh##examples"}{...}
{viewerjumpto "Stored results""power_mcc##results"}
{help power_mcc:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[PSS-2] power mcc} {hline 2}}匹配病例对照研究的效能分析{p_end}
{p2col:}({mansection PSS-2 powermcc:查看完整PDF手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{phang}
计算样本量

{p 8 43 2}
{opt power} {opt mcc} {it:p0}{cmd:,} {opth or:atio(numlist)}
[{opth p:ower(numlist)} 
{it:{help power_mcc##synoptions:选项}}] 


{phang}
计算功效 

{p 8 43 2}
{opt power} {opt mcc} {it:p0}{cmd:,} {opth or:atio(numlist)}
{opth n(numlist)}  
[{it:{help power_mcc##synoptions:选项}}]


{phang}
计算目标优势比

{p 8 43 2}
{opt power} {opt mcc} {it:p0}{cmd:,} 
{opth p:ower(numlist)}  
{opth n(numlist)} 
[{it:{help power_mcc##synoptions:选项}}]


{phang}
其中 {it:p0} 是对照组患者的暴露概率。
{it:p0} 必须满足条件 0 < {it:p0} < 1，并且可以作为一个数字或一组括号中的值来指定
（参见 {help numlist_zh}）。

{synoptset 30 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{p2coldent:* {opth a:lpha(numlist)}}显著性水平；默认值为
   {cmd:alpha(0.05)}{p_end}
{p2coldent:* {opth p:ower(numlist)}}功效；默认值为 {cmd:power(0.8)}{p_end}
{p2coldent:* {opth b:eta(numlist)}}第二型错误概率；默认值为
   {cmd:beta(0.2)}{p_end}
{p2coldent:* {opth n(numlist)}}样本量；计算功效或
效应大小时必需{p_end}
{synopt: {opt nfrac:tional}}允许分数样本大小{p_end}
{p2coldent:* {opth or:atio(numlist)}}案例中相对于对照组的暴露优势比；计算功效或样本量时必需{p_end}
{p2coldent:* {opth m(numlist)}}每个案例的匹配对照数量；默认值为 {cmd:m(1)}{p_end}
{synopt: {cmd:compare}}所需案例数量的比率，适用于1:{it:M}设计相对于配对的1:1设计{p_end}
{p2coldent:* {opth corr(numlist)}}案例与对照组之间的暴露相关性；默认值为 {cmd:corr(0)}{p_end}
INCLUDE help pss_testmainopts3.ihlp

{syntab:表}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_mcc##tablespec:表规格}}{cmd:)}]}抑制表格或将结果显示为表格；见
{manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}将表格数据保存到 {it:filename}；使用 {cmd:replace} 覆盖现有 {it:filename}{p_end}

INCLUDE help pss_graphopts.ihlp

{syntab:迭代}
{synopt: {opt init(#)}}样本大小或效应大小的初始值{p_end}
INCLUDE help pss_iteropts.ihlp

INCLUDE help pss_reportopts.ihlp
{synoptline}
{p2colreset}{...}
INCLUDE help pss_numlist.ihlp
{p 4 6 2}{cmd:notitle} 不会出现在对话框中。{p_end}

{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 是

{p 16 16 2}
{it:{help power_mcc##column:列}}[{cmd::}{it:标签}]
[{it:列}[{cmd::}{it:标签}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:表选项}}]

{pstd}
{it:列} 是下面定义的列之一，
而 {it:标签} 是列标签（可能包含引号和复合引号）。

{synoptset 15}{...}
{marker column}{...}
{synopthdr :列}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}功效{p_end}
{synopt :{opt beta}}第二型错误概率{p_end}
{synopt :{opt N}}案例数量{p_end}
{synopt :{opt delta}}效应大小{p_end}
{synopt :{opt M}}匹配对照数量{p_end}
{synopt :{opt F_M}}相对于一个对照的案例数量与 {it:M} 对照的比率{p_end}
{synopt :{opt p0}}对照组的暴露概率{p_end}
{synopt :{opt p1}}案例中暴露的概率{p_end}
{synopt :{opt oratio}}优势比{p_end}
{synopt :{opt corr}}案例与对照组之间的暴露相关性{p_end}
{synopt :{opt target}}目标参数；{cmd:oratio}的同义词{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}如果指定了选项 {cmd:beta()}，则在默认表中显示列 {cmd:beta} 而不是列 {cmd:power}。{p_end}
{p 4 6 2}只有在指定了选项 {cmd:compare} 时，默认表中才显示列 {cmd:F_M}。{p_end}
{p 4 6 2}默认表中不显示列 {cmd:p1}。

INCLUDE help menu_pss

{marker description}{...}
{title:描述}

{pstd}
{cmd:power mcc} 计算1:{it:M} 匹配病例对照研究中风险因素与疾病之间关联的样本量、功效或效应大小（最小可检测的优势比）。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection PSS-2 powermccQuickstart:快速开始}

        {mansection PSS-2 powermccRemarksandexamples:备注和示例}

        {mansection PSS-2 powermccMethodsandformulas:方法和公式}

{pstd}
以上部分不包括在此帮助文件中。

{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:alpha()}, {cmd:power()}, {cmd:beta()}, {cmd:n()}, {cmd:nfractional}; 
见 {manhelp power##mainopts PSS-2: power}。在 {cmd:n()} 中的样本量是
匹配的病例对照组的组数，或等价于案例的数量。
{cmd:nfractional} 选项仅允许用于样本量确定。

{phang}
{opth oratio(numlist)} 指定案例中相对于对照组的暴露优势比。此选项是功效或样本量确定时的必需项，且在效应大小确定时不能指定。

{phang}
{opth m(numlist)} 指定每个案例的匹配对照数量。仅允许正整数。默认值为 {cmd:m(1)}，表示配对设计。

{phang}
{opt compare} 指定计算1:{it:M}设计所需的案例数量相对于配对的1:1设计的比率。
{cmd:compare} 选项只能在计算样本量时指定，并且在选项 {cmd:m()} 中指定的值为2或更大时。

{phang}
{opth corr(numlist)} 指定匹配案例与对照组之间的暴露相关系数 {rho}。 {cmd:corr()} 必须包含 -1 到 1 之间的数字。 默认值为 {cmd:corr(0)}，表示匹配案例与对照组之间没有相关性。 这个假设在实践中可能不现实；参见 
{mansection PSS-2 powermccRemarksandexamplesex3:示例 3} 在 
{bf:[PSS-2] power mcc} 中的讨论。

{phang}
{cmd:direction()}, {cmd:onesided}, {cmd:parallel}; 见 
{manhelp power##mainopts PSS-2: power}。

INCLUDE help pss_taboptsdes.ihlp

INCLUDE help pss_graphoptsdes.ihlp
另请参见 {bf:[PSS-2] power mcc} 中的 {mansection PSS-2 powermccSyntaxcolumn:列} 表，以获取图形使用的符号列表。

{dlgtab:迭代}

{phang}
{opt init(#)} 指定在需要迭代搜索时的样本量或效应大小的初始值。 计算双侧检验的样本量时，使用单侧检验的封闭形式样本量计算。 计算最小可检测的优势比的初始估计值是通过二分搜索获得的。

INCLUDE help pss_iteroptsdes.ihlp

{pstd}
以下选项可与 {cmd:power mcc} 一起使用，但未显示在对话框中：

INCLUDE help pss_reportoptsdes.ihlp

{marker remarks}{...}
{title:备注：使用 power mcc}

{pstd}
{cmd:power mcc} 为1:{it:M} 匹配病例对照研究计算样本大小、功效或效应大小（最小可检测的优势比），其中一个案例与 {it:M} 个对照匹配。所有计算均基于双侧假设检验，默认情况下显著性水平设置为 0.05。您可以通过指定 {cmd:alpha()} 选项来更改显著性水平。您可以指定 {cmd:onesided} 选项请求单侧检验。

{pstd}
要计算样本量，您必须指定对照组的暴露概率 {it:p0}；在选项 {cmd:oratio()} 中的暴露优势比 {theta}；并可选择在 {cmd:power()} 选项中指定检验的功效。默认功效设置为 0.8。返回的样本量估计值是匹配对的数量，或如果指定了选项 {cmd:m()}，则是匹配组的数量。这相当于案例的数量。在后面的内容中，我们简单地称之为案例的数量。

{pstd}
要计算功效，您必须在选项 {cmd:n()} 中指定样本量、对照组的暴露概率 {it:p0} 和在选项 {cmd:oratio()} 中的优势比。

{pstd}
要计算最小可检测的优势比，您必须在选项 {cmd:n()} 中指定样本量；在选项 {cmd:power()} 中的功效；对照组的暴露概率 {it:p0}; 并可选择效应的方向。默认情况下，方向设定为上（{cmd:direction(upper)}），这意味着假定案例的暴露概率大于指定对照组值。您可以通过指定 {cmd:direction(lower)} 选项将方向更改为下，表示假定案例的暴露概率低于指定对照组值。 {cmd:power mcc} 将效应大小定义为目标优势比。

{pstd}
默认情况下，所有计算都假定为 1:1 或配对设计，其中一个案例与一个对照匹配。您可以指定 {cmd:m()} 选项以适应每个案例多个匹配。

{pstd}
匹配病例对照主体之间的相关性默认设置为 0，但可以通过指定选项 {cmd:corr()} 来更改。

{pstd}
在样本量确定时，您可以指定 {cmd:compare} 选项计算使用 {it:M} 个匹配对照而不是一个所需案例数量的比率。

{pstd}
对于双侧检验的样本量确定和效应大小在 {it:M} > 1 的情况下，需要迭代。默认初始样本量值设置为封闭形式的单侧样本量。效应大小的初始值使用二分算法计算。您可以使用 {cmd:init()} 选项指定自己的值。请参见 {manhelp power PSS-2} 以获取控制迭代过程的其他选项的描述。

{marker examples}{...}
{title:示例}

    {title:示例：计算样本量}

{pstd}
我们计划一项研究，将肺癌患者与同龄、同性别和同种族的一名对照匹配。然后记录参与者的吸烟史。我们使用之前的研究确定对照概率为 0.22。我们要计算在功效为 0.8 且显著性水平为 0.05 时检测到优势比为 1.7 的最小样本量。首先，我们假设匹配的病例和对照之间没有暴露相关性。

{phang2}{cmd:. power mcc 0.22, oratio(1.7)}

{pstd}
其次，我们研究每个匹配的案例和对照之间的暴露相关性如何影响样本量。我们使用从 0 到 0.8 的相关性范围，以 0.1 的步长和 1、2 个匹配。我们按匹配数量绘制结果图。

{phang2}{cmd:. power mcc 0.22, oratio(1.7) m(1 2) corr(0(0.1)0.8) table graph(by(M))}


    {title:示例：计算功效}

{pstd}
使用上面的示例，我们调查在1:1匹配病例对照情景中只有300个受试者时检验的功效会是多少。我们假设案例和对照之间的暴露相关性为0.4。

{phang2}{cmd:. power mcc 0.22, oratio(1.7) corr(0.4) n(300)}

{pstd}
现在我们想知道如果我们每个案例匹配两个对照，功效将是多少。

{phang2}{cmd:. power mcc 0.22, oratio(1.7) corr(0.4) n(300) m(2)}


    {title:示例：最小可检测的优势比}

{pstd}
继续之前的示例，我们有1:2的匹配和300的样本量。我们希望确定在功效为0.8和显著性水平为0.05时的最小可检测优势比。

{phang2}{cmd:. power mcc 0.22, corr(0.4) n(300) m(2) power(0.80)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:power mcc} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd: r(alpha)}}显著性水平{p_end}
{synopt:{cmd: r(power)}}功效{p_end}
{synopt:{cmd: r(beta)}}第二类错误概率{p_end}
{synopt:{cmd: r(delta)}}效应大小{p_end}
{synopt:{cmd: r(N)}}样本大小{p_end}
{synopt:{cmd: r(nfractional)}}{cmd:1} 如果指定了 {cmd:nfractional}，否则为 {cmd:0}{p_end}
{synopt:{cmd: r(onesided)}}{cmd:1} 表示为单侧检验，{cmd:0} 否则{p_end}
{synopt:{cmd: r(p0)}}对照组的暴露概率{p_end}
{synopt:{cmd: r(M)}}每个案例的匹配对照数量{p_end}
{synopt:{cmd: r(F_M)}}相对于1:1配对设计的案例数量的比率{p_end}
{synopt:{cmd: r(oratio)}}优势比{p_end}
{synopt:{cmd: r(corr)}}匹配案例与对照组之间的暴露相关性{p_end}
{synopt:{cmd: r(init)}}样本大小或效应大小的初始值{p_end}
INCLUDE help pss_rresiter_sc.ihlp
INCLUDE help pss_rrestab_sc.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:mcc}{p_end}
INCLUDE help pss_rrestest_mac.ihlp
INCLUDE help pss_rrestab_mac.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
INCLUDE help pss_rrestab_mat.ihlp
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_mcc.sthlp>}