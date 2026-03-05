{smcl}
{* *! version 1.3.5  15may2018}{...}
{viewerdialog cs "dialog cs"}{...}
{viewerdialog csi "dialog csi"}{...}
{vieweralsosee "[R] Epitab" "mansection R Epitab"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bitest" "help bitest_zh"}{...}
{vieweralsosee "[R] ci" "help ci_zh"}{...}
{vieweralsosee "[R] dstdize" "help dstdize_zh"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[R] tabulate twoway" "help tabulate_twoway_zh"}{...}
{vieweralsosee "[U] 19 Immediate commands" "help immed_zh"}{...}
{viewerjumpto "Syntax" "cs_zh##syntax"}{...}
{viewerjumpto "Menu" "cs_zh##menu"}{...}
{viewerjumpto "Description" "cs_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "cs_zh##linkspdf"}{...}
{viewerjumpto "Options for cs" "cs_zh##options_cs"}{...}
{viewerjumpto "Options for csi" "cs_zh##options_csi"}{...}
{viewerjumpto "Examples" "cs_zh##examples"}{...}
{viewerjumpto "Video example" "cs_zh##video"}{...}
{viewerjumpto "Stored results" "cs_zh##results"}{...}
{viewerjumpto "References" "cs_zh##references"}
{help cs:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] Epitab} {hline 2}}流行病学家的表格 (cs 和 csi)
{p_end}
{p2col:}({mansection R Epitab:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}{cmd:cs} {it:var_case var_exposed} {ifin}
[{it:{help cs##weight:weight}}]
[{cmd:,} {it:{help cs##cs_options:cs_options}}]

{p 8 14 2}{cmd:csi} {it:#a #b #c #d} [{cmd:,} {it:{help cs##csi_options:csi_options}}]

{synoptset 24 tabbed}{...}
{marker cs_options}{...}
{synopthdr :cs_options}
{synoptline}
{syntab:选项}
{synopt :{cmd:by(}{varlist} [{cmd:,} {opt mis:sing}]{cmd:)}}按 {it:varlist} 进行分层{p_end}
{synopt :{opt es:tandard}}将外部权重与分层统计组合{p_end}
{synopt :{opt is:tandard}}将内部权重与分层统计组合{p_end}
{synopt :{opth s:tandard(varname)}}将用户指定的权重与分层统计组合{p_end}
{synopt :{opt p:ool}}显示合并估计{p_end}
{synopt :{opt noc:rude}}不显示粗略估计{p_end}
{synopt :{opt noh:om}}不显示同质性检验{p_end}
{synopt :{opt rd}}计算标准化风险差{p_end}
{synopt :{opth b:inomial(varname)}}个体数量变量{p_end}
{synopt :{opt or}}报告优势比{p_end}
{synopt :{opt w:oolf}}使用 Woolf 近似法计算优势比的标准误和置信区间{p_end}
{synopt :{opt e:xact}}计算费舍尔精确 p 值{p_end}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 21}{...}
{marker csi_options}{...}
{synopthdr :csi_options}
{synoptline}
{synopt :{opt or}}报告优势比的计算{p_end}
{synopt :{opt w:oolf}}使用 Woolf 近似法计算优势比的标准误和置信区间{p_end}
{synopt :{opt e:xact}}计算费舍尔精确 p 值{p_end}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p2colreset}{...}
{marker weight}{...}
{p 4 6 2}{opt fweight}是被允许的；见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

    {title:cs}

{phang2}
{bf:统计 > 流行病学及相关 > 流行病学家的表格 >}
    {bf:队列研究风险比等}

    {title:csi}

{phang2}
{bf:统计 > 流行病学及相关 > 流行病学家的表格 >}
     {bf:队列研究风险比计算器}


{marker description}{...}
{title:描述}

{pstd}
{cmd:cs} 用于具有相等跟踪时间的队列研究数据，有时也用于横断面数据。风险是指成为病例的个体比例。它计算风险差、风险比和（可选）优势比的点估计和置信区间，以及暴露者和总人群的归因或预防分数。 {cmd:csi} 是 {cmd:cs} 的即时形式；见 {help immed_zh}。另请参见与之相关的命令 {manhelp logistic R}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R EpitabQuickstart:快速入门}

        {mansection R EpitabRemarksandexamples:备注和示例}

        {mansection R EpitabMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options_cs}{...}
{title:cs 的选项}

{dlgtab:选项}

{phang}
{cmd:by(}{varlist} [{cmd:,} {opt missing}]{cmd:)} 指定表格按 {it:varlist} 分层。 {it:varlist} 中的缺失类别将从分层分析中省略，除非在 {cmd:by()} 中指定 {cmd:missing} 选项。然后显示分层统计，并与 Mantel-Haenszel 权重组合。如果还指定了 {opt estandard}、{opt istandard} 或 {cmd:standard()}（见下文），则指定的权重将取代 Mantel-Haenszel 权重。

{phang}
{opt estandard}、{opt istandard} 和 {opth standard(varname)} 请求将分层统计与外部、内部或用户指定的权重结合，以产生标准化估计。这些选项相互排斥，仅在同时指定 {opt by()} 时使用。（当 {opt by()} 未与这些选项中的一个一起指定时，将使用 Mantel-Haenszel 权重。）

{pmore}
{opt estandard} 外部权重为未暴露者的总数。

{pmore}
{cmd:istandard} 内部权重为暴露对照组的总数。可以使用 {opt istandard} 来生成标准化死亡比（SMR）等。

{pmore}
{opt standard(varname)} 允许用户指定权重。 {it:varname} 必须在分层内包含常数且非负。 {it:varname} 的规模无关紧要。

{phang}
{opt pool} 指定在分层分析中也要显示直接合并的估计。合并估计是使用逆方差权重的分层特定估计的加权平均值，权重为分层特定估计的方差的逆值。 {opt pool} 仅在同时指定 {opt by()} 时相关。

{phang}
{opt nocrude} 指定在分层分析中不显示粗略估计 - 即不考虑层的估计。 {opt nocrude} 仅在同时指定 {opt by()} 时相关。

{phang}
{opt nohom} 指定不在分层分析的输出中包含同质性检验的卡方检验。此检验测试暴露效应是否在各层中相同，并可对任何合并的估计进行 - 直接合并或 Mantel-Haenszel。 {opt nohom} 仅在同时指定 {opt by()} 时相关。

{phang}
{opt rd} 仅可与 {opt estandard}、{opt istandard} 或 {opt standard()} 一起使用。它请求 {opt cs} 计算标准化风险差，而不是默认的风险比。

{phang}
{opth binomial(varname)} 提供二项频数记录的受试者数量（病例加对照）。对于个体和简单频数记录，此选项不使用。

{phang}
{opt or} 如果未指定 {opt by()}，则在报告风险比的同时报告优势比的计算。与 {opt by()} 一起使用时，{opt or} 指定制作组合优势比的 Mantel-Haenszel 估计，而不是 Mantel-Haenszel 风险比的估计。在这两种情况下，这是 {help cc_zh} 和 {helpb cci} 所执行的相同计算。通常，更推荐使用 {cmd:cc}、{cmd:cci} 或 {help tabodds_zh} 来计算优势比。

{phang}
{opt woolf} 请求使用 {help cs##W1955:Woolf (1955)} 近似法，也称为泰勒展开式，用于计算优势比的标准误和置信区间。默认情况下，使用 {cmd:or} 选项的 {cmd:cs} 报告 {help cs##C1956:Cornfield (1956)} 区间。

{phang}
{opt exact} 请求计算费舍尔精确 p 值，而不是卡方及其显著性水平。我们建议在样本较小的时候指定 {opt exact}。当最不频繁的单元包含 1,000 个案例或超过时，精确显著性水平与基于卡方的显著性水平之间没有明显差异，但精确显著性水平的计算将花费更长的时间。 {opt exact} 不影响是否计算精确置信区间。命令通常会在可以的地方计算精确置信区间，除非指定了 {opt cornfield} 或 {opt woolf}。

{phang}
{opt level(#)} 指定置信区间的置信水平，以百分比表示。默认值为 {cmd:level(95)}，或由 {helpb set level} 设置。


{marker options_csi}{...}
{title:csi 的选项}

{phang}
{opt or} 如果未指定 {opt by()}，则在报告风险比的同时报告优势比的计算。与 {opt by()} 一起使用时，{opt or} 指定制作组合优势比的 Mantel-Haenszel 估计，而不是 Mantel-Haenszel 风险比的估计。在这两种情况下，这是 {help cc_zh} 和 {helpb cci} 所执行的相同计算。通常，更推荐使用 {cmd:cc}、{cmd:cci} 或 {help tabodds_zh} 来计算优势比。

{phang}
{opt woolf} 请求使用 {help cs##W1955:Woolf (1955)} 近似法，也称为泰勒展开式，用于计算优势比的标准误和置信区间。默认情况下，使用 {cmd:or} 选项的 {cmd:csi} 报告 {help cs##C1956:Cornfield (1956)} 区间。

{phang}
{opt exact} 请求计算费舍尔精确 p 值，而不是卡方及其显著性水平。我们建议在样本较小的时候指定 {opt exact}。当最不频繁的单元包含 1,000 个案例或超过时，精确显著性水平与基于卡方的显著性水平之间没有明显差异，但精确显著性水平的计算将花费更长的时间。 {opt exact} 不影响是否计算精确置信区间。命令通常会在可以的地方计算精确置信区间，除非指定了 {opt cornfield} 或 {opt woolf}。

{phang}
{opt level(#)} 指定置信区间的置信水平，以百分比表示。默认值为 {cmd:level(95)}，或由 {helpb set level} 设置。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse csxmpl}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}计算风险差、风险比等{p_end}
{phang2}{cmd:. cs case exp [fw=pop]}

{pstd}上述命令的即时形式{p_end}
{phang2}{cmd:. csi 7 12 9 2}

{pstd}与上面相同，但计算费舍尔的精确 p 值而不是卡方{p_end}
{phang2}{cmd:. csi 7 12 9 2, exact}

{pstd}计算风险差、风险比等，并报告优势比{p_end}
{phang2}{cmd:. cs case exp [fw=pop], or}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse ugdp}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}对累积发生率数据进行分层分析{p_end}
{phang2}{cmd:. cs case exposed [fw=pop], by(age)}

{pstd}与上面相同，但报告优势比，而不是风险比{p_end}
{phang2}{cmd:. cs case exposed [fw=pop], by(age) or}

{pstd}使用内部加权标准化估计进行分层分析{p_end}
{phang2}{cmd:. cs case exposed [fw=pop], by(age) istandard}

{pstd}使用外部加权标准化估计进行分层分析{p_end}
{phang2}{cmd:. cs case exposed [fw=pop], by(age) estandard}

{pstd}创建一个始终等于 1 的变量{p_end}
{phang2}{cmd:. generate wgt = 1}

{pstd}对标准化风险比进行分层分析，并对每个年龄组进行相等加权{p_end}
{phang2}{cmd:. cs case exposed [fw=pop], by(age) standard(wgt)}

{pstd}对标准化风险差进行分层分析，并对每个年龄组进行相等加权{p_end}
{phang2}{cmd:. cs case exposed [fw=pop], by(age) standard(wgt) rd}{p_end}
    {hline}


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=ZYaYUpgahv4":风险比计算器}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:cs} 和 {cmd:csi} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(p)}}双侧 p 值{p_end}
{synopt:{cmd:r(rd)}}风险差{p_end}
{synopt:{cmd:r(lb_rd)}}风险差的置信区间下限{p_end}
{synopt:{cmd:r(ub_rd)}}风险差的置信区间上限{p_end}
{synopt:{cmd:r(rr)}}风险比{p_end}
{synopt:{cmd:r(lb_rr)}}风险比的置信区间下限{p_end}
{synopt:{cmd:r(ub_rr)}}风险比的置信区间上限{p_end}
{synopt:{cmd:r(or)}}优势比{p_end}
{synopt:{cmd:r(lb_or)}}优势比的置信区间下限{p_end}
{synopt:{cmd:r(ub_or)}}优势比的置信区间上限{p_end}
{synopt:{cmd:r(afe)}}暴露者的归因（预防）分数{p_end}
{synopt:{cmd:r(lb_afe)}}归因分数的置信区间下限{p_end}
{synopt:{cmd:r(ub_afe)}}归因分数的置信区间上限{p_end}
{synopt:{cmd:r(afp)}}人群的归因分数{p_end}
{synopt:{cmd:r(crude)}}粗略估计（仅 {cmd:cs}）{p_end}
{synopt:{cmd:r(lb_crude)}}粗略估计的置信区间下限{p_end}
{synopt:{cmd:r(ub_crude)}}粗略估计的置信区间上限{p_end}
{synopt:{cmd:r(pooled)}}合并估计（仅 {cmd:cs}）{p_end}
{synopt:{cmd:r(lb_pooled)}}合并估计的置信区间下限{p_end}
{synopt:{cmd:r(ub_pooled)}}合并估计的置信区间上限{p_end}
{synopt:{cmd:r(chi2_mh)}}Mantel-Haenszel 异质性卡方（仅 {cmd:cs}）{p_end}
{synopt:{cmd:r(chi2_p)}}合并异质性卡方{p_end}
{synopt:{cmd:r(df)}}自由度（仅 {cmd:cs}）{p_end}
{synopt:{cmd:r(chi2)}}卡方{p_end}
{synopt:{cmd:r(p_exact)}}双侧费舍尔精确 p 值（仅 {cmd:exact}）{p_end}
{synopt:{cmd:r(p1_exact)}}单侧费舍尔精确 p 值（仅 {cmd:exact}）{p_end}


{marker references}{...}
{title:参考文献}

{marker C1956}{...}
{phang}
Cornfield, J. 1956. 回顾性研究中出现的统计问题。
见第 4 卷 {it:第三届伯克利研讨会论文集}，编。
J. Neyman, 135-148. 加州伯克利：加州大学出版社。

{marker W1955}{...}
{phang}
Woolf, B. 1955. 关于估计血型疾病之间的关系。
{it:人类遗传学年鉴} 19: 251-253。
再版于
{it:流行病学思想的演变：概念和方法的注释读物}，
编。S. Greenland，第 108-110 页。马萨诸塞州纽顿洛尔瀑布：流行病学资源。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cs.sthlp>}