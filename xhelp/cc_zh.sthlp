{smcl}
{* *! version 1.3.6  15may2018}{...}
{viewerdialog cc "dialog cc"}{...}
{viewerdialog cci "dialog cci"}{...}
{vieweralsosee "[R] Epitab" "mansection R Epitab"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bitest" "help bitest_zh"}{...}
{vieweralsosee "[R] ci" "help ci_zh"}{...}
{vieweralsosee "[R] dstdize" "help dstdize_zh"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[R] tabulate twoway" "help tabulate_twoway_zh"}{...}
{vieweralsosee "[U] 19 Immediate commands" "help immed_zh"}{...}
{viewerjumpto "Syntax" "cc_zh##syntax"}{...}
{viewerjumpto "Menu" "cc_zh##menu"}{...}
{viewerjumpto "Description" "cc_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "cc_zh##linkspdf"}{...}
{viewerjumpto "Options for cc" "cc_zh##options_cc"}{...}
{viewerjumpto "Options for cci" "cc_zh##options_cci"}{...}
{viewerjumpto "Examples" "cc_zh##examples"}{...}
{viewerjumpto "Video examples" "cc_zh##videos"}{...}
{viewerjumpto "Stored results" "cc_zh##results"}{...}
{viewerjumpto "References" "cc_zh##references"}
{help cc:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] Epitab} {hline 2}}流行病学家的表格 (cc 和 cci){p_end}
{p2col:}({mansection R Epitab:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}{cmd:cc} {it:var_case var_exposed} {ifin}
[{it:{help cc##weight:weight}}]
[{cmd:,} {it:{help cc##cc_options:cc_options}}]

{p 8 14 2}{cmd:cci} {it:#a #b #c #d} [{cmd:,} {it:{help cc##cci_options:cci_options}}]

{synoptset 24 tabbed}{...}
{marker cc_options}{...}
{synopthdr:cc_options}
{synoptline}
{syntab:选项}
{synopt :{cmd:by(}{varname} [{cmd:,} {opt mis:sing}]{cmd:)}}以 {it:varname} 分层{p_end}
{synopt :{opt es:tandard}}将外部权重与分层统计结合{p_end}
{synopt :{opt is:tandard}}将内部权重与分层统计结合{p_end}
{synopt :{opth s:tandard(varname)}}将用户指定的权重与分层统计结合{p_end}
{synopt :{opt p:ool}}显示合并估计{p_end}
{synopt :{opt noc:rude}}不显示粗略估计{p_end}
{synopt :{opt noh:om}}不显示同质性检验{p_end}
{synopt :{opt bd}}执行 Breslow-Day 同质性检验{p_end}
{synopt :{opt t:arone}}执行 Tarone 的同质性检验{p_end}
{synopt :{opth b:inomial(varname)}}样本数量变量{p_end}
{synopt :{opt co:rnfield}}使用 Cornfield 近似计算优势比的置信区间{p_end}
{synopt :{opt w:oolf}}使用 Woolf 近似计算优势比的标准误和置信区间{p_end}
{synopt :{opt e:xact}}计算 Fisher 的精确 p 值{p_end}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 21}{...}
{marker cci_options}{...}
{synopthdr :cci_options}
{synoptline}
{synopt :{opt co:rnfield}}使用 Cornfield 近似计算优势比的置信区间{p_end}
{synopt :{opt w:oolf}}使用 Woolf 近似计算优势比的标准误和置信区间{p_end}
{synopt :{opt e:xact}}计算 Fisher 的精确 p 值{p_end}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p2colreset}{...}
{marker weight}{...}
{p 4 6 2}{opt fweight} 被允许；见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

    {title:cc}

{phang2}
{bf:统计 > 流行病学及相关 > 流行病学家的表格 >}
      {bf:病例对照优势比}

    {title:cci}

{phang2}
{bf:统计 > 流行病学及相关 > 流行病学家的表格 >}
       {bf:病例对照优势比计算器}


{marker description}{...}
{title:描述}

{pstd}
{cmd:cc} 用于病例对照和横断面数据。它计算优势比的点估计和置信区间，以及暴露和总人群的归因或预防分数。
{cmd:cci} 是 {cmd:cc} 的即时形式；见 {help immed_zh}。另见 {manhelp logistic R} 以获取相关命令。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R EpitabQuickstart:快速入门}

        {mansection R EpitabRemarksandexamples:备注和示例}

        {mansection R EpitabMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options_cc}{...}
{title:cc 的选项}

{dlgtab:选项}

{phang}
{cmd:by(}{it:varname} [{cmd:,} {opt missing}]{cmd:)} 指定按 {it:varname} 分层。 {it:varname} 中的缺失类别在分层分析中被省略，除非在 {cmd:by()} 中指定了选项 {cmd:missing}。显示分层统计，然后与 Mantel-Haenszel 权重结合。如果也指定了 {opt estandard}、{opt istandard} 或 {cmd:standard()}（见下文），则使用指定的权重代替 Mantel-Haenszel 权重。

{phang}
{opt estandard}、{opt istandard} 和 {opth standard(varname)} 请求将分层统计与外部、内部或用户指定的权重结合以生成标准化估计。这些选项是互斥的，且仅可在还指定了 {opt by()} 时使用。（当在未指定这些选项的情况下使用 {opt by()} 时，将使用 Mantel-Haenszel 权重。）

{pmore}
{opt estandard} 外部权重是未暴露对照的数量。

{pmore}
{cmd:istandard} 内部权重是暴露对照的数量。 {opt istandard} 可用于生成，包括标准化死亡比 (SMRs)。

{pmore}
{opt standard(varname)} 允许用户指定权重。 {it:varname} 必须在每个层中包含常量并且非负。 {it:varname} 的规模无关紧要。

{phang}
{opt pool} 指定在分层分析中，也显示直接合并估计。合并估计是使用逆方差权重的分层特定估计的加权平均值，权重为分层特定估计的方差的逆数。 {opt pool} 只有在同时指定了 {opt by()} 时才相关。

{phang}
{opt nocrude} 指定在分层分析中不显示粗略估计——即不考虑层的估计。  {opt nocrude} 只有在同时指定了 {opt by()} 时才相关。

{phang}
{opt nohom} 指定在分层分析的输出中不包含同质性检验的卡方检验。 该检验用于测试暴露效应在各个层间是否相同，并且可对任何合并估计执行——直接合并或 Mantel-Haenszel。 {opt nohom} 只有在同时指定了 {opt by()} 时才相关。

{phang}
{opt bd} 指定在分层分析的输出中包含 Breslow 和 Day 的同质性检验的卡方检验。 该检验用于测试暴露效应在各个层间是否相同。 {opt bd} 只有在同时指定了 {opt by()} 时才相关。

{phang}
{opt tarone} 指定在分层分析的输出中包含 Tarone 的同质性检验的卡方。这是对 Breslow-Day 检验的修正，旨在测试暴露效应在各个层间是否相同。 {opt tarone} 只有在同时指定了 {opt by()} 时才相关。

{phang}
{opth binomial(varname)} 提供二项频率记录的样本数量（病例加对照）。对于个人和简单频率记录，此选项不使用。

{phang}
{opt cornfield} 请求使用 {help cc##C1956:Cornfield (1956)} 近似法计算优势比的置信区间。 默认情况下， {cmd:cc} 报告一个精确区间。

{phang}
{opt woolf} 请求使用 {help cc##W1955:Woolf (1955)} 近似法，也称为泰勒展开，用于计算优势比的标准误和置信区间。默认情况下，{cmd:cc} 报告一个精确区间。

{phang}
{opt exact} 请求计算 Fisher 的精确 p 值，而非卡方及其显著性水平。我们建议在样本较小的情况下指定 {opt exact}。当频数最少的单元包含 1,000 个病例或更多时，精确显著性水平与基于卡方的显著性水平之间不会有明显差异，但计算精确显著性水平将需要更长的时间。 {opt exact} 不影响是否计算精确置信区间。在可能的情况下，命令始终计算精确置信区间，除非指定了 {opt cornfield} 或 {opt woolf}。

{phang}
{opt level(#)} 指定置信区间的置信水平，作为百分比。 默认值为 {cmd:level(95)} 或由 {helpb set level} 设置。


{marker options_cci}{...}
{title:cci 的选项}

{phang}
{opt cornfield} 请求使用 {help cc##C1956:Cornfield (1956)} 近似法计算优势比的置信区间。默认情况下， {cmd:cci} 报告一个精确区间。

{phang}
{opt woolf} 请求使用 {help cc##W1955:Woolf (1955)} 近似法，也称为泰勒展开，用于计算优势比的标准误和置信区间。默认情况下， {cmd:cci} 报告一个精确区间。

{phang}
{opt exact} 请求计算 Fisher 的精确 p 值，而非卡方及其显著性水平。我们建议在样本较小的情况下指定 {opt exact}。当频数最少的单元包含 1,000 个病例或更多时，精确显著性水平与基于卡方的显著性水平之间不会有明显差异，但计算精确显著性水平将需要更长的时间。 {opt exact} 不影响是否计算精确置信区间。在可能的情况下，命令始终计算精确置信区间，除非指定了 {opt cornfield} 或 {opt woolf}。

{phang}
{opt level(#)} 指定置信区间的置信水平，作为百分比。 默认值为 {cmd:level(95)} 或由 {helpb set level} 设置。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse ccxmpl}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}计算优势比等{p_end}
{phang2}{cmd:. cc case exposed [fw=pop]}

{pstd}上述命令的即时形式{p_end}
{phang2}{cmd:. cci 4 386 4 1250}

{pstd}与以上相同，但计算 Fisher 的精确 p 值而不是卡方{p_end}
{phang2}{cmd:. cci 4 386 4 1250, exact}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse downs}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}进行优势比的分层分析{p_end}
{phang2}{cmd:. cc case exposed [fw=pop], by(age)}

{pstd}与上述相同，但报告 Tarone 的同质性检验的卡方{p_end}
{phang2}{cmd:. cc case exposed [fw=pop], by(age) tarone}{p_end}
    {hline}


{marker videos}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=RKWYNI7AORw":病例对照数据的优势比}

{phang}
{browse "http://www.youtube.com/watch?v=CHTfzJLSbWM":病例对照数据的分层分析}

{phang}
{browse "http://www.youtube.com/watch?v=A1c4ElvFHIE":优势比计算器}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:cc} 和 {cmd:cci} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(p)}}双侧 p 值{p_end}
{synopt:{cmd:r(p1_exact)}}Fisher 精确检验的单侧 p 值{p_end}
{synopt:{cmd:r(p_exact)}}Fisher 精确检验的双侧 p 值{p_end}
{synopt:{cmd:r(or)}}优势比{p_end}
{synopt:{cmd:r(lb_or)}}优势比的 CI 下界{p_end}
{synopt:{cmd:r(ub_or)}}优势比的 CI 上界{p_end}
{synopt:{cmd:r(afe)}}暴露组的归因 (预防) 分数{p_end}
{synopt:{cmd:r(lb_afe)}}归因分数的 CI 下界{p_end}
{synopt:{cmd:r(ub_afe)}}归因分数的 CI 上界{p_end}
{synopt:{cmd:r(afp)}}人群的归因分数{p_end}
{synopt:{cmd:r(crude)}}粗略估计 ({cmd:cc} 仅){p_end}
{synopt:{cmd:r(lb_crude)}}粗略估计的 CI 下界{p_end}
{synopt:{cmd:r(ub_crude)}}粗略估计的 CI 上界{p_end}
{synopt:{cmd:r(pooled)}}合并估计 ({cmd:cc} 仅){p_end}
{synopt:{cmd:r(lb_pooled)}}合并估计的 CI 下界{p_end}
{synopt:{cmd:r(ub_pooled)}}合并估计的 CI 上界{p_end}
{synopt:{cmd:r(chi2_p)}}合并的异质性卡方{p_end}
{synopt:{cmd:r(chi2_bd)}}Breslow-Day 卡方{p_end}
{synopt:{cmd:r(df_bd)}}Breslow-Day 卡方的自由度{p_end}
{synopt:{cmd:r(chi2_t)}}Tarone 卡方{p_end}
{synopt:{cmd:r(df_t)}}Tarone 卡方的自由度{p_end}
{synopt:{cmd:r(df)}}自由度{p_end}
{synopt:{cmd:r(chi2)}}卡方{p_end}


{marker references}{...}
{title:参考文献}

{marker C1956}{...}
{phang}
Cornfield, J. 1956. A statistical problem arising from retrospective studies. 
In Vol. 4 of {it:Proceedings of the Third Berkeley Symposium}, ed.
J. Neyman, 135-148. Berkeley, CA: University of California Press.

{marker W1955}{...}
{phang}
Woolf, B. 1955. On estimating the relation between blood group disease. 
{it:Annals of Human Genetics} 19: 251-253. 
Reprinted in 
{it:Evolution of Epidemiologic Ideas: Annotated Readings on Concepts and Methods}, 
ed. S. Greenland, pp. 108-110. Newton Lower Falls, MA: Epidemiology Resources.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cc.sthlp>}