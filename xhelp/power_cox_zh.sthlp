{smcl}
{* *! version 1.0.11  27feb2019}{...}
{viewerdialog power "dialog power_cox"}{...}
{vieweralsosee "[PSS-2] power cox" "mansection PSS-2 powercox"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power exponential" "help power exponential"}{...}
{vieweralsosee "[PSS-2] power logrank" "help power logrank"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stcox" "help stcox_zh"}{...}
{vieweralsosee "[ST] sts test" "help sts test"}{...}
{vieweralsosee "[R] test" "help test_zh"}{...}
{viewerjumpto "Syntax" "power_cox_zh##syntax"}{...}
{viewerjumpto "Menu" "power_cox_zh##menu"}{...}
{viewerjumpto "Description" "power_cox_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_cox_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_cox_zh##options"}{...}
{viewerjumpto "Remarks: Using power cox" "power_cox_zh##remarks"}{...}
{viewerjumpto "Examples" "power_cox_zh##examples"}{...}
{viewerjumpto "Stored results""power_cox##results"}
{help power_cox:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[PSS-2] power cox} {hline 2}}Cox 比例风险模型的权力分析{p_end}
{p2col:}({mansection PSS-2 powercox:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
计算样本量

{p 8 20 2}
{opt power} {opt cox} [{it:b1}]
[{cmd:,} {opth p:ower(numlist)} 
{it:{help power_cox##synoptions:options}}] 


{phang}
计算检验的效能

{p 8 20 2}
{opt power} {opt cox} [{it:b1}]{cmd:,}  
{opth n(numlist)}
[{it:{help power_cox##synoptions:options}}]


{phang}
计算效应量（目标回归系数）

{p 8 20 2}
{opt power} {opt cox}{cmd:,}  
{opth n(numlist)} {opth p:ower(numlist)}
[{it:{help power_cox##synoptions:options}}]


{marker b1}{...}
{phang}
其中 {it:b1} 是所关注协变量的假设回归系数（效应量），旨在通过具有预设效能的测试来检测。 {it:b1} 可以作为一个数字或在括号中作为值的列表进行指定（见 {help numlist_zh}）。


{synoptset 30 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{syntab:主选项}
{p2coldent:* {opth a:lpha(numlist)}}显著性水平；默认为
   {cmd:alpha(0.05)}{p_end}
{p2coldent:* {opth p:ower(numlist)}}检验的效能；默认为 {cmd:power(0.8)}{p_end}
{p2coldent:* {opth b:eta(numlist)}}第二类错误的概率；默认为
   {cmd:beta(0.2)}{p_end}
{p2coldent:* {opth n(numlist)}}样本量；计算效能或效应量所需{p_end}
{synopt:{opt nfrac:tional}}允许使用分数样本量{p_end}
{p2coldent:* {opth hr:atio(numlist)}}与所关注协变量增加一个单位相关的风险比（指数化{it:b1}）；代替回归系数 {it:b1} 指定；默认为 {cmd:hratio(0.5)}{p_end}
{p2coldent:* {opth sd(numlist)}}所关注协变量的标准差；默认为 {cmd:sd(0.5)}{p_end}
{p2coldent:* {opth r2(numlist)}}与其他协变量的多重相关系数的平方；默认为 {cmd:r2(0)}{p_end}
{p2coldent:* {opth eventpr:ob(numlist)}}感兴趣事件（失败）的整体概率；默认为 {cmd:eventprob(1)}，表示没有删失{p_end}
{p2coldent:* {opth failpr:ob(numlist)}}{cmd:eventprob()} 的同义词{p_end}
{p2coldent:* {opth wdp:rob(numlist)}}预计撤回研究的受试者的比例；默认为 {cmd:wdprob(0)}{p_end}
{synopt:{cmdab:effect(}{it:{help power_cox##effect:效应}}{cmd:)}}指定显示的效应类型；默认为 {cmd:effect(coefficient)}{p_end}
包含 help pss_testmainopts2.ihlp

{syntab:表格}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_cox##tablespec:表格规格}}{cmd:)}]}抑制表格或以表格形式显示结果；见
{manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}保存表格数据到 {it:filename}；使用 {cmd:replace} 以覆盖现有的 {it:filename}{p_end}

包含 help pss_graphopts.ihlp

包含 help pss_reportopts.ihlp
{synoptline}
{p2colreset}{...}
包含 help pss_numlist.ihlp
{p 4 6 2}{cmd:notitle} 不会出现在对话框中。{p_end}


{synoptset 17}{...}
{marker effect}{...}
{synopthdr :效应}
{synoptline}
{synopt:{opt coef:ficient}}回归系数，{it:b1}；默认为{p_end}
{synopt:{opt hr:atio}}风险比，exp({it:b1}){p_end}
{synopt:{opt lnhr:atio}}对数风险比；{cmd:coefficient}的同义词{p_end}
{synoptline}


{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 是

{p 16 16 2}
{it:{help power_cox##column:列}}[{cmd::}{it:label}]
[{it:column}[{cmd::}{it:label}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:表格选项}}]

{pstd}
{it:column} 是以下定义的列之一，
而 {it:label} 是列标签（可能包含引号和复合引号）。


{synoptset 28}{...}
{marker column}{...}
{synopthdr :列}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}效能{p_end}
{synopt :{opt beta}}第二类错误概率{p_end}
{synopt :{opt N}}受试者数量{p_end}
{synopt :{opt delta}}效应量{p_end}
{synopt :{opt E}}事件的总数（失败）{p_end}
{synopt :{opt b1}}回归系数{p_end}
{synopt :{opt hratio}}风险比{p_end}
{synopt :{opt lnhratio}}对数风险比{p_end}
{synopt :{opt sd}}标准差{p_end}
{synopt :{opt R2}}多重相关系数的平方{p_end}
{synopt :{opt Pr_E}}事件的整体概率（失败）{p_end}
{synopt :{opt Pr_w}}撤回的概率{p_end}
{synopt :{opt target}}目标参数；{cmd:b1}的同义词{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}如果指定选项 {cmd:beta()} 则列 {cmd:beta} 在默认表中替代列 {cmd:power} 显示。{p_end}
{p 4 6 2}如果指定回归系数，则列 {cmd:b1} 在默认表中替代列 {cmd:hratio} 显示。{p_end}
{p 4 6 2}只有在指定时，列 {cmd:R2} 和 {cmd:Pr_w} 才会在默认表中显示。{p_end}


包含 help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:power cox} 计算使用 Cox 比例风险（PH）模型的生存分析的样本量、效能或效应量。 结果用于测试一个协变量（二元或连续）对 adjusted针对其他预测指标的失败时间的影响。效应量可以表示为回归系数（或对数风险比）或风险比。该命令可以考虑所关注协变量与其他模型协变量之间的依赖关系，并且可以对删失和研究受试者的撤回进行调整计算。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection PSS-2 powercoxQuickstart:快速入门}

        {mansection PSS-2 powercoxRemarksandexamples:备注和示例}

        {mansection PSS-2 powercoxMethodsandformulas:方法和公式}

{pstd}
以上部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主选项}

{phang}
{cmd:alpha()}, {cmd:power()}, {cmd:beta()}, {cmd:n()}, {cmd:nfractional}; 
见 {manhelp power##mainopts PSS-2: power}。 {cmd:nfractional} 选项仅用于样本量确定。

{phang}
{opth hratio(numlist)} 指定与所关注协变量增加一个单位时的风险比（或指数化回归系数）。此值定义效应量或所关注协变量对响应的最小临床显著效应，需在 Cox PH 模型中通过具有一定效能的测试检测。

{pmore}
可以将效应量指定为回归系数 {it:b1}，这是命令参数，或在 {cmd:hratio()} 中指定为风险比。默认值为 {cmd:hratio(0.5)}。如果指定 {opt hratio(#)}，则回归系数计算为 {it:b1} = ln({it:#})。如果指定回归系数 {it:b1}，则风险比计算为 exp({it:b1})。

{pmore}
此选项在效应量确定中不被允许。

{phang}
{opth sd(numlist)} 指定所关注协变量的标准差。默认值为 {cmd:sd(0.5)}。

{phang}
{opth r2(numlist)} 指定所关注协变量与 Cox PH 模型中其他预测指标的多重相关系数的平方。默认值为 {cmd:r2(0)}，意味着所关注协变量与其他协变量独立。此选项定义了由所关注协变量对 Cox 模型中其他协变量的回归解释的方差比例（参见 {manhelp regress R}）。

{phang}
{opth eventprob(numlist)} 指定在研究中经历感兴趣的事件（或失败，或不被删失）的受试者的总体概率。默认值为 {cmd:eventprob(1)}，意味着所有受试者都会经历事件（或失败）；即，没有受试者的删失发生。

{phang}
{opth failprob(numlist)} 是 {opt eventprob()} 的同义词。

{phang}
{opth wdprob(numlist)} 指定预计撤回研究的受试者比例。默认值为 {cmd:wdprob(0)}。{cmd:wdprob()} 仅用于样本量计算。

{phang}
{opt effect(effect)} 指定输出中所报告的效应量类型为 {cmd:delta}。 {it:effect} 是 {cmd:coefficient}、{cmd:hratio} 或 {cmd:lnhratio} 中的一个。默认情况下，效应量 {cmd:delta} 为回归系数，{cmd:effect(coefficient)}。  

{phang}
{cmd:direction()}, {cmd:onesided}, {cmd:parallel}; 见 
{manhelp power##mainopts PSS-2: power}。
{cmd:direction(lower)} 为默认值。

包含 help pss_taboptsdes.ihlp

包含 help pss_graphoptsdes.ihlp
另见 {it:{mansection PSS-2 powercoxSyntaxcolumn:列}} 表格中用于图形的符号列表。

{pstd}
以下选项可用于 {cmd:power cox}，但未显示在对话框中：

包含 help pss_reportoptsdes.ihlp


{marker remarks}{...}
{title:备注: 使用 power cox}

{pstd}
{cmd:power cox} 计算一项回归系数在 Cox PH 模型中的样本量、效能或效应量，恒定其他协变量的系数。所有计算均在双侧假设检验中进行，默认显著性水平设为 0.05。您可以通过指定 {cmd:alpha()} 选项更改显著性水平。您可以指定 {cmd:onesided} 选项以请求单侧检验。

{pstd}
要计算样本量，您需要在 {cmd:power()} 选项中指定效应量和（可选）检验的效能。默认效能设为 0.8。默认情况下，计算的样本量向上取整。您可以指定 {cmd:nfractional} 选项查看对应的分数样本量；请参阅 {mansection PSS-4 UnbalanceddesignsRemarksandexamplesFractionalsamplesizes:{it:分数样本量}} 在 {bf:[PSS-4] Unbalanced designs} 中的示例。 {cmd:nfractional} 选项仅用于样本量确定。  

{pstd}
要计算效能，您必须在 {cmd:n()} 选项中指定样本量和效应量。

{pstd}
效应量可以在命令参数 {it:b1} 中作为回归系数指定，或在 {cmd:hratio()} 选项中作为风险比指定。如果都未指定，则假定风险比为 0.5。

{pstd}
要计算效应量，可以将其表示为回归系数（对数风险比）或风险比，您必须在 {cmd:n()} 选项中指定样本量；在 {cmd:power()} 选项中指定效能，以及（可选）效应的方向。默认情况是，下方向 {cmd:direction(lower)}，这意味着目标回归系数假定为负。这相当于风险比小于1。您可以通过指定 {cmd:direction(upper)} 选项将方向更改为上方向，这意味着目标回归系数假定为正。这相当于风险比大于1。

{pstd}
如前所述，{cmd:power cox} 的效应量可以表示为回归系数或，等价地，对数风险比，或者作为风险比。默认情况下，输出中的效应量标记为 {cmd:delta}，对应于回归系数。您可以通过指定 {cmd:effect()} 选项进行更改：{cmd:effect(coefficient)}（默认）报告回归系数，{cmd:effect(hratio)} 报告风险比，{cmd:effect(lnhratio)} 报告对数风险比。  

{pstd}
所关注协变量的标准差默认设为 0.5，可以通过指定 {cmd:sd()} 选项更改。在 Cox 模型中有其他协变量的情况下，您可以使用 {cmd:r2()} 选项指定所关注协变量和模型中其他协变量之间的相关性。

{pstd}
所有计算假定没有删失。在存在删失的情况下，您可以使用 {cmd:eventprob()} 选项指定事件或失败的总体概率。在计算样本量时，您还可以通过在 {cmd:wdprob()} 选项中指定预计的撤回比例来调整研究中的撤回情况。


{marker examples}{...}
{title:示例}

    {title:示例: 计算样本量}

{pstd}
计算检测具有二元协变量的 0.5 风险降低所需的失败次数。默认情况下，风险比为 0.5，对应于回归系数 ln(0.5) = -0.6931；所关注协变量的标准差为 0.5；显著性水平为 5%；并且效能为 80%。将使用双侧检验。

{phang2}{cmd:. power cox}

{pstd}
与上述相同，但我们使用回归系数而不是风险比。

{phang2}{cmd:. power cox -0.6931}

{pstd}
我们计算以一元检验检测回归系数 -1 所需的样本量，协变量标准差为 0.3。

{phang2}{cmd:. power cox -1, sd(0.3) onesided }

{pstd}
与上述相同，但我们假设在删失情况下整体事件的概率为 0.85。

{phang2}{cmd:. power cox -1, sd(0.3) eventprob(0.85) onesided }

{pstd}
与上述相同，但我们假设所关注协变量与其他协变量的相关性为 R2 = 0.3。

{phang2}{cmd:. power cox -1, sd(0.3) eventprob(0.85) r2(0.3) onesided }

    {title:示例: 计算效能}

{pstd}
继续上述示例，我们相信我们只能招募 150 名受试者。我们调查在这种情况下检验的效能。

{phang2}{cmd:. power cox -1, n(150) sd(0.3) eventprob(0.85) r2(0.3) onesided }

    {title:示例: 最小可检测的回归系数}

{pstd}
继续上述示例，确定在样本量为 150 的情况下以 90% 效能检测回归系数的最小可检测值；默认情况下，目标回归系数假定为负。

{phang2}{cmd:. power cox, n(150) power(0.9) sd(0.3) eventprob(0.85) r2(0.3) onesided }


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:power cox} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(alpha)}}显著性水平{p_end}
{synopt:{cmd:r(power)}}效能{p_end}
{synopt:{cmd:r(beta)}}第二类错误的概率{p_end}
{synopt:{cmd:r(delta)}}效应量{p_end}
{synopt:{cmd:r(N)}}样本量{p_end}
{synopt:{cmd:r(nfractional)}}{cmd:1} 如果指定 {cmd:nfractional}，否则为 {cmd:0}{p_end}
{synopt:{cmd:r(onesided)}}{cmd:1} 表示单侧检验，{cmd:0} 否则{p_end}
{synopt:{cmd:r(E)}}事件的总数（失败）{p_end}
{synopt:{cmd:r(hratio)}}在备择假设下的风险比{p_end}
{synopt:{cmd:r(b1)}}在备择假设下的回归系数{p_end}
{synopt:{cmd:r(sd)}}标准差{p_end}
{synopt:{cmd:r(R2)}}平方的多重相关（如果指定）{p_end}
{synopt:{cmd:r(Pr_E)}}事件的概率（失败，如果指定）{p_end}
{synopt:{cmd:r(Pr_w)}}撤回的比例（如果指定）{p_end}
包含 help pss_rrestab_sc.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:cox}{p_end}
{synopt:{cmd:r(effect)}}{cmd:coefficient}、{cmd:hratio} 或
    {cmd:lnhratio}{p_end}
{synopt:{cmd:r(direction)}}{cmd:lower} 或 {cmd:upper}{p_end}
包含 help pss_rrestab_mac.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
包含 help pss_rrestab_mat.ihlp
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_cox.sthlp>}