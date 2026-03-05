{smcl}
{* *! version 1.3.4  15may2018}{...}
{viewerdialog ir "dialog ir"}{...}
{viewerdialog iri "dialog iri"}{...}
{vieweralsosee "[R] Epitab" "mansection R Epitab"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stcox" "help stcox_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bitest" "help bitest_zh"}{...}
{vieweralsosee "[R] ci" "help ci_zh"}{...}
{vieweralsosee "[R] dstdize" "help dstdize_zh"} {...}
{vieweralsosee "[R] poisson" "help poisson_zh"}{...}
{vieweralsosee "[R] tabulate twoway" "help tabulate_twoway_zh"}{...}
{vieweralsosee "[U] 19 Immediate commands" "help immed_zh"}{...}
{viewerjumpto "语法" "ir_zh##syntax"}{...}
{viewerjumpto "菜单" "ir_zh##menu"}{...}
{viewerjumpto "描述" "ir_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "ir_zh##linkspdf"}{...}
{viewerjumpto "选项" "ir_zh##options"}{...}
{viewerjumpto "示例" "ir_zh##examples"}{...}
{viewerjumpto "视频示例" "ir_zh##video"}{...}
{viewerjumpto "存储的结果" "ir_zh##results"}
{help ir:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] Epitab} {hline 2}}流行病学家的表格（ir 和 iri）
{p_end}
{p2col:}({mansection R Epitab:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}{cmd:ir} {it:var_case} {it:var_exposed} {it:var_time} {ifin}
[{it:{help ir##weight:weight}}]
[{cmd:,} {it:{help ir##ir_options:ir_options}}]

{p 8 14 2}{cmd:iri} {it:#a #b #N1 #N2} [{cmd:,} {opt l:evel(#)}]

{synoptset 24 tabbed}{...}
{marker ir_options}{...}
{synopthdr :ir_options}
{synoptline}
{syntab:选项}
{synopt :{cmd:by(}{varname} [{cmd:,} {opt mis:sing}]{cmd:)}}按 {it:varname} 分层{p_end}
{synopt :{opt es:tandard}}将外部权重与层内统计相结合{p_end}
{synopt :{opt is:tandard}}将内部权重与层内统计相结合{p_end}
{synopt :{opth s:tandard(varname)}}将用户指定的权重与层内统计相结合{p_end}
{synopt :{opt p:ool}}显示合并估计{p_end}
{synopt :{opt noc:rude}}不显示粗略估计{p_end}
{synopt :{opt noh:om}}不显示同质性检验{p_end}
{synopt :{opt ird}}计算标准发生率差{p_end}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p2colreset}{...}
{marker weight}{...}
{p 4 6 2}{opt fweight}允许使用；参见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

    {title:ir}
{phang2}
{bf:统计 > 流行病学及相关 > 流行病学家的表格 >}
       {bf:发生率比}

    {title:iri}

{phang2}
{bf:统计 > 流行病学及相关 > 流行病学家的表格 >}
        {bf:发生率比计算器}


{marker description}{...}
{title:描述}

{pstd}
{cmd:ir} 用于发生率（发生密度或人时）数据。
它计算发生率比和差值的点估计和置信区间，以及暴露人群和总人群的归因或预防分数。 {cmd:iri} 是 {cmd:ir} 的立即形式；参见 {help immed_zh}。 另见 {manhelp poisson R} 和 {manhelp stcox ST} 以获取相关命令。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R EpitabQuickstart:快速入门}

        {mansection R EpitabRemarksandexamples:备注与示例}

        {mansection R EpitabMethodsandformulas:方法与公式}

{pstd}
上述部分不包含在本帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:选项}

{phang}
{cmd:by(}{varname} [{cmd:,} {opt missing}]{cmd:)} 指定表格根据 {it:varname} 分层。 {it:varname} 中的缺失类别在分层分析中被省略，除非在 {cmd:by()} 中指定了 {cmd:missing} 选项。 显示层内统计，然后与 Mantel-Haenszel 权重相结合。 如果还指定了 {opt estandard}、{opt istandard} 或 {cmd:standard()}（见下文），则使用指定的权重替代 Mantel-Haenszel 权重。

{phang}
{opt estandard}、{opt istandard} 和 {opth standard(varname)} 请求将层内统计与外部、内部或用户指定的权重相结合，以生成标准化估计。 这些选项是相互排斥的，仅在 {opt by()} 也被指定时可以使用。 （当 {opt by()} 在没有这些选项的情况下指定时，使用 Mantel-Haenszel 权重。）

{pmore}
{opt estandard} 外部权重是未暴露对照的个体时间。

{pmore}
{cmd:istandard} 内部权重是暴露对照的个体时间。 {opt istandard} 可用于生成标准化死亡比 (SMRs) 等。

{pmore}
{opt standard(varname)} 允许用户指定的权重。 {it:varname} 在层内必须保持常数且为非负数。 {it:varname} 的比例无关紧要。

{phang}
{opt pool} 指定，在分层分析中，直接合并估计也显示。 合并估计是使用反方差权重得出的分层特定估计的加权平均值，反方差权重是分层特定估计方差的倒数。 {opt pool} 仅在 {opt by()} 也被指定时相关。

{phang}
{opt nocrude} 指定在分层分析中不显示粗略估计 -- 在不考虑层的情况下获得的估计。 {opt nocrude} 仅在 {opt by()} 也被指定时相关。

{phang}
{opt nohom} 指定在分层分析的输出中不包括同质性卡方检验。 该检验测试暴露效应在各层之间是否相同，可以针对任何合并估计--直接合并或 Mantel-Haenszel 进行。 {opt nohom} 仅在 {opt by()} 也被指定时相关。

{phang}
{opt ird} 仅可与 {opt estandard}、{opt istandard} 或 {opt standard()} 一起使用。 它请求 {cmd:ir} 计算标准化发生率差，而不是默认的发生率比。

{phang}
{opt level(#)} 指定置信区间的置信水平，以百分比表示。 默认值为 {cmd:level(95)} 或由 {helpb set level} 设置的值。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse irxmpl}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}计算发生率比、差值等{p_end}
{phang2}{cmd:. ir cases exposed time}

{pstd}上述命令的立即形式{p_end}
{phang2}{cmd:. iri 15 41 19017 28010}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse rm}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}对发生率比进行分层分析{p_end}
{phang2}{cmd:. ir deaths male pyears, by(age)}

{pstd}与上面相同，但报告 90% 置信区间{p_end}
{phang2}{cmd:. ir deaths male pyears, by(age) level(90)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse dollhill2}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}对发生率比进行分层分析，报告 90% 
置信区间{p_end}
{phang2}{cmd:. ir deaths smokes pyears, by(age) level(90)}

{pstd}对标准化发生率比进行分层分析， 
报告 90% 置信区间{p_end}
{phang2}{cmd:. ir deaths smokes pyears, by(age) level(90) istandard}

{pstd}与上面相同，但还显示直接合并估计{p_end}
{phang2}{cmd:. ir deaths smokes pyears, by(age) level(90) istandard pool}

{pstd}与上面相同，但计算标准化发生率差，而不是发生率比{p_end}
{phang2}{cmd:. ir deaths smokes pyears, by(age) level(90) istandard pool ird}

{pstd}对标准化发生率比进行分层分析，将权重与未暴露组的个体时间成比例{p_end}
{phang2}{cmd:. ir deaths smokes pyears, by(age) estandard}

{pstd}创建一个变量，始终等于 1{p_end}
{phang2}{cmd:. generate conswgt = 1}

{pstd}对标准化发生率比进行分层分析，使每个年龄类别的权重相等{p_end}
{phang2}{cmd:. ir deaths smokes pyears, by(age) standard(conswgt)}{p_end}
    {hline}


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=6JANRVFxqAw":发生率比计算器}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:ir} 和 {cmd:iri} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(p)}}单侧 p 值{p_end}
{synopt:{cmd:r(ird)}}发生率差{p_end}
{synopt:{cmd:r(lb_ird)}}发生率差置信区间的下界{p_end}
{synopt:{cmd:r(ub_ird)}}发生率差置信区间的上界{p_end}
{synopt:{cmd:r(irr)}}发生率比{p_end}
{synopt:{cmd:r(lb_irr)}}发生率比置信区间的下界{p_end}
{synopt:{cmd:r(ub_irr)}}发生率比置信区间的上界{p_end}
{synopt:{cmd:r(afe)}}暴露组中的归因（预防）分数{p_end}
{synopt:{cmd:r(lb_afe)}}归因分数置信区间的下界{p_end}
{synopt:{cmd:r(ub_afe)}}归因分数置信区间的上界{p_end}
{synopt:{cmd:r(afp)}}人群的归因分数{p_end}
{synopt:{cmd:r(crude)}}粗略估计 ({cmd:ir} 仅){p_end}
{synopt:{cmd:r(lb_crude)}}粗略估计置信区间的下界{p_end}
{synopt:{cmd:r(ub_crude)}}粗略估计置信区间的上界{p_end}
{synopt:{cmd:r(pooled)}}合并估计 ({cmd:ir} 仅){p_end}
{synopt:{cmd:r(lb_pooled)}}合并估计置信区间的下界{p_end}
{synopt:{cmd:r(ub_pooled)}}合并估计置信区间的上界{p_end}
{synopt:{cmd:r(chi2_mh)}}Mantel-Haenszel 同质性卡方 ({cmd:ir}
	仅){p_end}
{synopt:{cmd:r(chi2_p)}}合并同质性卡方{p_end}
{synopt:{cmd:r(df)}}自由度 ({cmd:ir} 仅){p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ir.sthlp>}