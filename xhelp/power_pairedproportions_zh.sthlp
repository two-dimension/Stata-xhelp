{smcl}
{* *! version 1.0.19  27feb2019}{...}
{viewerdialog "discordant proportions" "dialog power_pairedprop_discord"}{...}
{viewerdialog "marginal proportions" "dialog power_pairedprop_marginal"}{...}
{vieweralsosee "[PSS-2] power pairedproportions" "mansection PSS-2 powerpairedproportions"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] Epitab" "help epitab_zh"}{...}
{viewerjumpto "Syntax" "power_pairedproportions_zh##syntax"}{...}
{viewerjumpto "Menu" "power_pairedproportions_zh##menu"}{...}
{viewerjumpto "Description" "power_pairedproportions_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_pairedproportions_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_pairedproportions_zh##options"}{...}
{viewerjumpto "Remarks: Using power pairedproportions" "power_pairedproportions_zh##remarks"}{...}
{viewerjumpto "Examples" "power_pairedproportions_zh##examples"}{...}
{viewerjumpto "Stored results" "power_pairedproportions_zh##stored_results"}
{help power_pairedproportions:English Version}
{hline}{...}
{p2colset 1 36 38 2}{...}
{p2col:{bf:[PSS-2] power pairedproportions} {hline 2}}两个样本配对比例检验的功效分析{p_end}
{p2col:}({mansection PSS-2 powerpairedproportions:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
计算样本量

{p 6 43 2}
指定不一致的比例

{p 8 43 2}
{opt power} {opt pairedpr:oportions} {it:p12} {it:p21}
[{cmd:,} {opth p:ower(numlist)}
{it:{help power_pairedproportions##discordopts:不一致选项}}]


{p 6 43 2}
指定边际比例

{p 8 43 2}
{opt power} {opt pairedpr:oportions} {it:p1+} {it:p+1}{cmd:,}
{opth corr(numlist)} [{opth p:ower(numlist)}
{it:{help power_pairedproportions##margopts:边际选项}}]



{phang}
计算功效

{p 6 43 2}
指定不一致的比例

{p 8 43 2}
{opt power} {opt pairedpr:oportions} {it:p12} {it:p21}{cmd:,}
{opth n(numlist)} [{it:{help power_pairedproportions##discordopts:不一致选项}}]


{p 6 43 2}
指定边际比例

{p 8 43 2}
{opt power} {opt pairedpr:oportions} {it:p1+} {it:p+1}{cmd:,}
{opth corr(numlist)} {opth n(numlist)}
[{it:{help power_pairedproportions##margopts:边际选项}}]



{phang}
计算效应大小和目标不一致比例

{p 8 43 2}
{opt power} {opt pairedpr:oportions}{cmd:,}
{opth n(numlist)} {opth p:ower(numlist)}
{opth prdis:cordant(numlist)}
[{it:{help power_pairedproportions##discordopts:不一致选项}}]


{phang}
其中 {it:p12} 是第一次成功和第二次失败的概率，{it:p21} 是第一次失败和第二次成功的概率。每个比例代表一对不一致的配对概率。{it:p1+} 是第一次成功的边际概率，{it:p+1} 是第二次成功的边际概率。每个比例可以指定为一个数字或括号内的值列表（见 {help numlist_zh}）。

{synoptset 30 tabbed}{...}
{marker discordopts}{...}
{synopthdr:不一致选项}
{synoptline}
{syntab:主要}
INCLUDE help pss_testmainopts1.ihlp
{synopt: {opt nfrac:tional}}允许分数样本大小{p_end}
{p2coldent:* {opth prdis:cordant(numlist)}}不一致比例的总和，{it: p12}+{it:p21}{p_end}
{p2coldent:* {opth sum(numlist)}}{cmd:prdiscordant()}的同义词{p_end}
{p2coldent:* {opth diff(numlist)}}不一致比例之间的差异，{it: p21}-{it:p12}{p_end}
{p2coldent:* {opth ratio(numlist)}}不一致比例的比率，{it: p12}/{it:p21}{p_end}
{synopt: {cmd:effect({it:{help power_pairedproportions##syneffect:效应}})}}指定显示的效应类型；默认值为 {cmd:effect(diff)}{p_end}
INCLUDE help pss_testmainopts3.ihlp

{syntab:表格}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_onevariance##tablespec:表格规格}}{cmd:)}]}抑制表格或将结果显示为表格；请参见
{manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}将表格数据保存到 {it:filename}；使用 {cmd:replace} 替换现有的 {it:filename}{p_end}

INCLUDE help pss_graphopts.ihlp

{syntab:迭代}
{synopt: {opt init(#)}}样本大小或不一致比例之间差异的初始值{p_end}
INCLUDE help pss_iteropts.ihlp

INCLUDE help pss_reportopts.ihlp
{synoptline}
{p2colreset}{...}
INCLUDE help pss_numlist.ihlp
{p 4 6 2}{cmd:notitle} 不会出现在对话框中。{p_end}


{synoptset 30 tabbed}{...}
{marker margopts}{...}
{synopthdr:边际选项}
{synoptline}
{syntab:主要}
INCLUDE help pss_testmainopts1.ihlp
{synopt: {opt nfrac:tional}}允许分数样本大小{p_end}
{p2coldent:* {opth corr(numlist)}}配对观测值之间的相关性{p_end}
{p2coldent:* {opth diff(numlist)}}边际比例之间的差异，{it:p+1}-{it:p1+}{p_end}
{p2coldent:* {opth ratio(numlist)}}边际比例的比率，{it:p+1}/{it:p1+}{p_end}
{p2coldent:* {opth rr:isk(numlist)}}边际比例的相对风险，{it:p+1}/{it:p1+}{p_end}
{p2coldent:* {opth or:atio(numlist)}}赔率比，{c -(}{it:p+1}(1 - {it:p1+}){c )-}/{c -(}{it:p1+}(1 - {it:p+1}){c )-}{p_end}
{synopt: {opth effect:(power twoproportions##effectspec:效应)}}指定显示的效应类型；默认值为 {cmd:effect(diff)}{p_end}
INCLUDE help pss_testmainopts3.ihlp

{syntab:表格}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_twoproportions##tablespec:表格规格}}{cmd:)}]}抑制表格或将结果显示为表格；请参见
{manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}将表格数据保存到 {it:filename}；使用 {cmd:replace} 替换现有的 {it:filename}{p_end}

INCLUDE help pss_graphopts.ihlp

INCLUDE help pss_reportopts.ihlp
{synoptline}
{p2colreset}{...}
INCLUDE help pss_numlist.ihlp
{p 4 6 2}{cmd:notitle} 不会出现在对话框中。{p_end}


{marker syneffect}{...}
{synoptset 30}{...}
{syntab:{it:效应}}
{synoptline}
{synopt: {cmd:diff}}不一致比例之间的差异，{it:p21}-{it:p12}，或边际比例之间的差异，{it:p+1}-{it:p1+}；默认值{p_end}
{synopt: {cmd:ratio}}不一致比例的比率，{it:p21}/{it:p12}，或边际比例的比率，{it:p+1}/{it:p1+}{p_end}
{synopt: {opt rr:isk}}边际比例的相对风险，{it:p+1}/{it:p1+}；仅可与边际比例一起指定{p_end}
{synopt: {opt or:atio}}边际比例的赔率比，{c -(}{it:p+1}(1-{it:p1+}){c )-}/{c -(}{it:p1+}(1-{it:p+1}){c )-}；仅可与边际比例一起指定{p_end}
{synoptline}
{p2colreset}{...}

{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 为

{p 16 16 2}
{it:{help power_pairedproportions##column:列}}[{cmd::}{it:label}]
[{it:column}[{cmd::}{it:label}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:表格选项}}]

{pstd}
{it:column} 是下面定义的列之一，{it:label} 是列标签（可以包含引号和复合引号）。

{synoptset 30}{...}
{marker column}{...}
{synopthdr :列}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}功效{p_end}
{synopt :{opt beta}}第二类错误概率{p_end}
{synopt :{opt N}}受试者数量{p_end}
{synopt :{opt delta}}效应大小{p_end}
{synopt :{opt p12}}成功-失败比例{p_end}
{synopt :{opt p21}}失败-成功比例{p_end}
{synopt :{opt pmarg1}}第一次成功的比例{p_end}
{synopt :{opt pmarg2}}第二次成功的比例{p_end}
{synopt :{opt corr}}配对观测值之间的相关性{p_end}
{synopt :{opt prdiscordant}}不一致配对的比例{p_end}
{synopt :{opt sum}}不一致比例的总和{p_end}
{synopt :{opt diff}}配对比例之间的差异{p_end}
{synopt :}边际比例之间的差异{p_end}
{synopt :{opt ratio}}不一致比例的比率{p_end}
{synopt :}边际比例的比率{p_end}
{synopt :{opt rrisk}}边际比例的相对风险{p_end}
{synopt :{opt oratio}}边际比例的赔率比{p_end}
{synopt :{opt target}}目标参数；{cmd:p12}的同义词{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}如果指定了列 {cmd:beta}，则在默认的表格中显示 {cmd:power} 列。{p_end}
{p 4 6 2}如果指定了不一致比例，则在默认的表格中显示列 {cmd:p12} 和 {cmd:p21}。{p_end}
{p 4 6 2}如果指定了边际比例，则在默认的表格中显示列 {cmd:pmarg1}、{cmd:pmarg2} 和 {cmd:corr}。{p_end}
{p 4 6 2}如果指定了边际比例，则仅可使用列 {cmd:pmarg1}、{cmd:pmarg2}、{cmd:corr}、{cmd:rrisk} 和 {cmd:oratio}。{p_end}
{p 4 6 2}如果指定了，则在默认表格中显示列 {cmd:diff}、{cmd:ratio}、{cmd:prdiscordant}、{cmd:sum}、{cmd:rrisk} 和 {cmd:oratio}。


INCLUDE help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd: power pairedproportions} 计算两个样本配对比例检验（也称为 McNemar 检验）的样本量、功效或目标不一致比例。默认情况下，它会计算给定功效和不一致或边际比例值下的样本量。或者，它可以计算给定样本量和不一致或边际比例值下的功效，或可以计算给定样本量和功效下的目标不一致比例。另请参见 {cmd: power}，以获取有关使用假设检验的 {manhelp power PSS-2} 命令的一般介绍。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection PSS-2 powerpairedproportionsQuickstart:快速入门}

        {mansection PSS-2 powerpairedproportionsRemarksandexamples:备注和示例}

        {mansection PSS-2 powerpairedproportionsMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:alpha()}, {cmd:power()}, {cmd:beta()}, {cmd:n()}, {cmd:nfractional}; 请参见 
{manhelp power##mainopts PSS-2:power}。  
{opt nfractional} 选项仅允许用于样本量的确定。

{phang}
{opth prdiscordant(numlist)} 指定不一致配对的比例或不一致比例的总和，{it:p12}+{it:p21}。有关此选项的详细说明，请参见 {mansection PSS-2 powerpairedproportionsRemarksandexamplessub1:{it:指定效应的其他方式}}。

{phang}
{opth sum(numlist)} 是 {cmd:prdiscordant()} 的同义词。有关此选项的详细说明，请参见 {mansection PSS-2 powerpairedproportionsRemarksandexamplessub1:{it:指定效应的其他方式}}。

{phang}
{opth corr(numlist)} 指定配对观测值之间的相关性。如果指定了边际比例，则此选项是必需的。

{phang}
{opth diff(numlist)} 指定不一致比例之间的差异，{it:p21} - {it:p12}，或边际比例之间的差异，{it:p+1}-{it:p1+}。有关此选项的详细说明，请参见 {mansection PSS-2 powerpairedproportionsRemarksandexamplessub1:{it:指定效应的其他方式}}。

{phang}
{opth ratio(numlist)} 指定不一致比例的比率，{it:p21}/{it:p12}，或边际比例的比率，{it:p+1}/{it:p1+}。有关此选项的详细说明，请参见 {mansection PSS-2 powerpairedproportionsRemarksandexamplessub1:{it:指定效应的其他方式}}。

{phang}
{opth rrisk(numlist)} 指定边际比例的相对风险，{it:p+1}/{it:p1+}。有关此选项的详细说明，请参见 {mansection PSS-2 powerpairedproportionsRemarksandexamplessub1:{it:指定效应的其他方式}}。

{phang}
{opth oratio(numlist)} 指定边际比例的赔率比，{c -(}{it:p+1}(1-{it:p1+}){c )-}/{c -(}{it:p1+}(1-{it:p+1}){c )-}。有关此选项的详细说明，请参见 {mansection PSS-2 powerpairedproportionsRemarksandexamplessub1:{it:指定效应的其他方式}}。

{phang}
{opt effect(effect)} 指定在输出中报告的效应大小类型，标记为 {cmd:delta}。{it:effect} 是 {cmd:diff} 或 {cmd:ratio}（针对不一致比例）和 {cmd:diff}、{cmd:ratio}、{opt rr:isk} 或 {opt or:atio}（针对边际比例）之一。默认情况下，效应大小 {cmd:delta} 是比例之间的差异。如果指定了 {cmd:diff()}、{cmd:ratio()}、{cmd:rrisk()} 或 {cmd:oratio()}，效应大小 {cmd:delta} 将包含与指定选项相对应的效应。例如，如果指定了 {cmd:ratio()}，则 {cmd:delta} 将包含比例的比率。有关此选项的详细说明，请参见 {mansection PSS-2 powerpairedproportionsRemarksandexamplessub1:{it:指定效应的其他方式}}。

{phang}
{cmd:direction()},{cmd:onesided},{cmd:parallel}; 请参见
{manhelp power##mainopts PSS-2:power}。

INCLUDE help pss_taboptsdes.ihlp

INCLUDE help pss_graphoptsdes.ihlp
另请参见 {mansection PSS-2 powerpairedproportionsSyntaxcolumn:列} 表中的符号列表，使用于图表。

{dlgtab:迭代}

{phang}
{opt init(#)} 指定估计参数的初始值。估计的参数是样本量的确定或效应大小确定时不一致比例之间的差异。

INCLUDE help pss_iteroptsdes.ihlp

{pstd}
以下选项可与 {cmd:power pairedproportions} 一起使用，但未显示在对话框中：

INCLUDE help pss_reportoptsdes.ihlp


{marker remarks}{...}
{title:备注：使用 power pairedproportions}

{pstd}
{cmd: power pairedproportions} 计算两个样本配对比例检验的样本量、功效或目标不一致比例。所有计算均针对双侧假设检验，并且默认显著性水平设置为 0.05。您可以通过指定 {cmd: alpha()} 选项来更改显著性水平。您可以指定 {cmd: onesided} 选项请求单侧检验。

{pstd}
对于样本量和功效确定，{cmd:power pairedproportions} 提供多种指定希望检验所能检测到的效应大小的方法。下面我们描述此命令的使用方法，假设希望效应由两个不一致比例的值表示；请参见 {mansection PSS-2 powerpairedproportionsRemarksandexamplessub1:{it:指定效应的其他方式}} 了解其他规格。

{pstd}
要计算样本量，您必须指定不一致比例 {it:p12} 和 {it:p21}，可选择在 {cmd:power()} 选项中指定检验的功效。默认功效设置为 0.8。

{pstd}
要计算功效，您必须在 {cmd:n()} 选项中指定样本量和不一致比例 {it:p12} 和 {it:p21}。

{pstd}
效应大小的确定仅适用于不一致比例。要计算效应大小和目标不一致比例，您必须在 {cmd:n()} 选项中指定样本量，在 {cmd:power()} 选项中指定功效，在 {cmd:prdiscordant()} 选项中指定不一致比例的总和，并可选择效应的方向。方向默认为上界 {cmd:direction(upper)}，这意味着失败-成功比例 {it:p21} 假定大于指定的成功-失败比例 {it:p12}。您可以通过指定 {cmd:direction(lower)} 将方向更改为下界，这意味着 {it:p21} 假定小于 {it:p12}。

{pstd}
对于两个样本的配对比例检验，对效应大小有多种定义。{cmd:effect()} 选项指定 {cmd:power pairedproportions} 在报告效应大小时应使用的定义，该定义在 {cmd:power} 命令的输出中标记为 {cmd:delta}。

{pstd}
当您指定不一致比例时，提供的可用定义是..不一致比例之间的差异 {it:p21} - {it:p12}，{cmd:effect(diff)}，或不一致比例的比率 {it:p21}/{it:p12}，{cmd:effect(ratio)}。

{pstd}
当您指定边际比例时，提供的可用定义是..边际比例之间的差异 {it:p+1} - {it:p1+}，{cmd:effect(diff)}；边际比例的相对风险或比率 {it:p+1}/{it:p1+}，{cmd:effect(rrisk)} 或 {cmd:effect(ratio)}；或边际比例的赔率比 {c -(}{it:p+1}(1 - {it:p1+}){c )-}/{c -(}{it:p1+}(1 - {it:p+1}){c )-}，{cmd:effect(oratio)}。

{pstd}
当指定了 {cmd:effect()} 时，{cmd:power} 命令的输出中效应大小 {cmd:delta} 包含对应效应的估计，并相应标记。默认情况下，{cmd:delta} 对应于比例之间的差异。如果指定了 {cmd:diff()}、{cmd:ratio()}、{cmd:rrisk()} 或 {cmd:oratio()} 中的任何一个且未指定 {cmd:effect()}，则 {cmd:delta} 将包含与指定选项相对应的效应大小。

{pstd}
部分 {cmd:power pairedproportions} 的计算需要迭代。例如，双侧检验的样本量通过迭代求解非线性功效方程获得。用于迭代过程的样本量的默认初始值使用封闭形式的单侧公式获得。如果需要，您可以通过指定 {cmd:init()} 选项进行更改。有关控制迭代过程的其他选项，请参见 {manhelp power PSS-2} 的描述。


{marker examples}{...}
{title:示例}

    {title:示例：计算样本量}

{pstd}
    计算所需样本量以检测不一致比例 0.2 和 0.3，功效为 80%，使用双侧检验和 5% 的显著性水平（默认值）{p_end}
{phang2}{cmd:. power pairedproportions 0.2 0.3}

{pstd}
    同上，指定不一致比例的总和{p_end}
{phang2}{cmd:. power pairedproportions 0.2, prdiscord(0.5)}
        
{pstd}
    同上，功效增加到 0.90{p_end}
{phang2}{cmd:. power pairedproportions 0.2, prdiscord(0.5) power(0.9)}

{pstd}
    计算所需样本量，指定不一致比例之间差异为 0.4 和比率为 4{p_end}
{phang2}{cmd:. power pairedproportions, diff(0.4) ratio(4)}

{pstd}
    计算所需样本量以检测边际比例 0.1 和 0.25，相关性为 0.2，使用 5% 的双侧检验显著性水平（默认值）{p_end}
{phang2}{cmd:. power pairedproportions 0.1 0.25, corr(0.2)}

{pstd}
    对一系列边际比例和功效计算样本量，绘制结果{p_end}
{phang2}{cmd:. power pairedproportions 0.1 (0.2(0.1)0.7), corr(0.2)}
       {cmd:power(0.8 0.9) graph}


    {title:示例：计算功效}

{pstd}
    假设我们有 150 名受试者的样本，我们想计算 5% 显著性水平（默认值）下双侧假设检验的功效，以检测不一致比例 0.2 和 0.3。{p_end}
{phang2}{cmd:. power pairedproportions 0.2 0.3, n(150)}

{pstd}
    同上，报告效应大小为比率{p_end}
{phang2}{cmd:. power pairedproportions 0.2 0.3, n(150) effect(ratio)}

{pstd}
    对一系列不一致比例和样本量计算功效，绘制结果{p_end}
{phang2}{cmd:. power pairedproportions 0.1 (0.2 0.5 0.7), n(5(1)15) graph}


    {title:示例：计算目标不一致比例}

{pstd}
    计算在样本量为 100 的情况下，使用双侧检验以 80% 功效检测的不一致比例；假设不一致比例的总和为 0.4，并且显著性水平为 5%（默认值）{p_end}
{phang2}{cmd:. power pairedproportions, prdiscord(0.4) n(100) power(0.8)}

{pstd}
    同上，报告效应大小为比率{p_end}
{phang2}{cmd:. power pairedproportions, prdiscord(0.4) n(100) power(0.8)}
            {cmd:effect(ratio)}


{marker stored_results}{...}
{title:存储的结果}

{pstd}
{cmd:power pairedproportions} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd: r(alpha)}}显著性水平{p_end}
{synopt:{cmd: r(power)}}功效{p_end}
{synopt:{cmd: r(beta)}}第二类错误概率{p_end}
{synopt:{cmd: r(delta)}}效应大小{p_end}
{synopt:{cmd: r(N)}}样本量{p_end}
{synopt:{cmd: r(nfractional)}}{cmd:1} 如果指定了 {cmd:nfractional}，否则为 {cmd:0}{p_end}
{synopt:{cmd: r(onesided)}}{cmd:1} 表示单侧检验，{cmd:0} 否则{p_end}
{synopt: {cmd: r(p12)}}成功-失败比例（第一个不一致比例）{p_end}
{synopt: {cmd: r(p21)}}失败-成功比例（第二个不一致比例）{p_end}
{synopt:{cmd: r(pmarg1)}}第一次成功的比例（第一个边际比例）{p_end}
{synopt:{cmd: r(pmarg2)}}第二次成功的比例（第二个边际比例）{p_end}
{synopt: {cmd: r(corr)}}配对观测值之间的相关性{p_end}
{synopt: {cmd: r(diff)}}比例之间的差异{p_end}
{synopt: {cmd: r(ratio)}}比例的比率{p_end}
{synopt: {cmd:r(prdiscordant)}}不一致配对比例{p_end}
{synopt: {cmd: r(sum)}}不一致比例的总和{p_end}
{synopt: {cmd: r(rrisk)}}相对风险{p_end}
{synopt: {cmd: r(oratio)}}赔率比{p_end}
INCLUDE help pss_rrestab_sc.ihlp
{synopt: {cmd: r(init)}}样本大小或不一致比例之间差的初始值{p_end}
INCLUDE help pss_rresiter_sc.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(effect)}}{cmd:diff}、{cmd:ratio}、{cmd:oratio} 或 {cmd:rrisk}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:pairedproportions}
{p_end}
INCLUDE help pss_rrestest_mac.ihlp
INCLUDE help pss_rrestab_mac.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
INCLUDE help pss_rrestab_mat.ihlp

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_pairedproportions.sthlp>}