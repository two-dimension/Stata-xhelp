{smcl}
{* *! version 1.3.4  15oct2018}{...}
{viewerdialog dstdize "dialog dstdize"}{...}
{viewerdialog istdize "dialog istdize"}{...}
{vieweralsosee "[R] dstdize" "mansection R dstdize"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] Epitab" "help epitab_zh"}{...}
{viewerjumpto "语法" "dstdize_zh##syntax"}{...}
{viewerjumpto "菜单" "dstdize_zh##menu"}{...}
{viewerjumpto "描述" "dstdize_zh##description"}{...}
{viewerjumpto "PDF文档链接" "dstdize_zh##linkspdf"}{...}
{viewerjumpto "dstdize 的选项" "dstdize_zh##options_dstdize"}{...}
{viewerjumpto "istdize 的选项" "dstdize_zh##options_istdize"}{...}
{viewerjumpto "示例" "dstdize_zh##examples"}{...}
{viewerjumpto "存储结果" "dstdize_zh##results"}
{help dstdize:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] dstdize} {hline 2}}直接和间接标准化{p_end}
{p2col:}({mansection R dstdize:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
直接标准化

{p 8 16 2}
{cmd:dstdize} {it:charvar} {it:popvar} {it:stratavars} {ifin}{cmd:,}
{opth by:(varlist:groupvars)} 
[{it:{help dstdize##dstdize_options:dstdize_options}}]


{phang}
间接标准化

{p 8 16 2}{cmd:istdize} {it:casevar_s} {it:popvar_s} {it:stratavars} {ifin}
{opt using} {it:{help filename_zh}}{cmd:,}
{{opt pop:vars(casevar_p popvar_p)} |{break}
{opt rate(ratevar_p {#|crudevar_p})}}
[{it:{help dstdize##istdize_options:istdize_options}}]


{phang}
{it:charvar} 是需要在不同子群体中标准化的特征。

{phang}
{it:popvar} 定义了标准化中使用的权重。

{phang}
{it:stratavars} 定义了在 {cmd:dstdize} 中权重要平均的层。对于 {cmd:istdize}，{it:stratavars} 定义了测量 {it:casevar_s} 的层。

{phang}
{it:casevar_s} 是研究人群中的病例数量的变量名。如果指定了 {opt by(groupvars)}，则 {it:casevar_s} 在每个由 {it:groupvars} 的组合定义的组内必须是常量或缺失。

{phang}
{it:popvar_s} 确定研究人群中每一层的受试者数量。

{phang}
{it:filename} 必须是一个 Stata 数据集，并包含 {it:popvar} 和 {it:stratavars}。

{synoptset 31 tabbed}{...}
{marker dstdize_options}{...}
{synopthdr :dstdize_options}
{synoptline}
{syntab :主要}
{p2coldent: * {opth "by(varlist:groupvars)"}}研究人群{p_end}
{synopt :{opth us:ing(filename)}}使用来自 Stata 数据集的标准人群{p_end}
{synopt :{opt ba:se(#|string)}}使用分组变量的值作为标准人群{p_end}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}

{syntab :选项}
{synopt :{opth sav:ing(filename)}}将计算的标准人群分布保存为 Stata 数据集{p_end}
{synopt :{opth f:ormat(%fmt)}}最终汇总表显示格式；默认值为 {cmd:%10.0g}{p_end}
{synopt :{opt pr:int}}包括标准人群的汇总表在输出中{p_end}
{synopt :{opt nores}}抑制将结果存储在 {opt r()} 中{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* {opt by(groupvars)} 是必需的。{p_end}

{synoptset 31 tabbed}{...}
{marker istdize_options}{...}
{synopthdr :istdize_options}
{synoptline}
{syntab :主要}
{p2coldent: * {opt pop:vars(casevar_p popvar_p)}}对于标准人群，{it:casevar_p} 为病例数量，{it:popvar_p} 为个人数量{p_end}
{p2coldent : * {opt rate(ratevar_p {#|crudevar_p})}}{it:ratevar_p} 为层特定率，{it:#} 或 {it:crudevar_p} 为粗发病率值或变量{p_end}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}

{syntab :选项}
{synopt :{opth "by(varlist:groupvars)"}}识别研究人群的变量{p_end}
{synopt :{opth f:ormat(%fmt)}}最终汇总表显示格式；默认值为 
{cmd:%10.0g}{p_end}
{synopt :{opt pr:int}}包含标准人群的汇总表在输出中{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2} * 必须指定 {opt popvars(casevar_p popvar_p)} 或 
{opt rate(ratevar_p {#|crudevar_p})}。


{marker menu}{...}
{title:菜单}

    {title:dstdize} 

{phang2}
{bf:统计 > 流行病学及相关 > 其他 > 直接标准化}

    {title:istdize}

{phang2}
{bf:统计 > 流行病学及相关 > 其他 > 间接标准化}


{marker description}{...}
{title:描述}

{pstd}
{cmd:dstdize} 生成标准化率，即各层特定率的加权平均值。

{pstd}
{cmd:istdize} 生成间接标准化率，当研究人群的层特定率不可用或不可靠时使用。

{pstd}
{cmd:istdize} 还计算研究人群的标准化死亡比（SMR）或标准化发病率的点估计和精确置信区间。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R dstdizeQuickstart:快速入门}

        {mansection R dstdizeRemarksandexamples:备注和示例}

        {mansection R dstdizeMethodsandformulas:方法和公式}

{pstd}
以上部分不包括在本帮助文件中。


{marker options_dstdize}{...}
{title:dstdize 的选项}

{dlgtab:主要}

{phang}
{opth "by(varlist:groupvars)"} 是 {cmd:dstdize} 命令的必需项；它指定识别研究人群的变量。如果指定了 {opt base()}，则 {opt by()} 组内只能有一个变量。如果没有此选项的变量，可以通过使用例如 {cmd:generate newvar=1} 生成一个，然后将 {cmd:newvar} 用作此选项的参数。

{phang}
{opth using(filename)} 或 {opt base(#|string)} 可用于指定标准人群。不能同时指定这两个选项。{opt using(filename)} 提供包含标准人群的 {cmd:.dta} 文件的名称。标准人群必须包含 {it:popvar} 和 {it:stratavars}。如果未指定 {opt using()}，将从数据中获取标准人群分布。{opt base(#|string)} 让您指定 {it:{help varlist_zh:groupvar}} 的一个值——可以是数值或字符串——用作标准人群。如果未指定 {opt base()} 或 {opt using()}，整个数据集将用于确定标准人群的估计。

{phang}
{opt level(#)} 指定调整率置信区间的置信水平，百分比。默认值为 {cmd:level(95)} 或通过 {helpb set level} 设置。

{dlgtab:选项}

{phang}
{opth saving(filename)} 将计算的标准人群分布保存为能够进行进一步分析的 Stata 数据集。

{phang}
{opth format(%fmt)} 指定显示最终摘要表的格式。默认值为 {cmd:%10.0g}。

{phang}
{opt print} 在显示研究人群结果之前包括标准人群的汇总表。

{phang}
{opt nores} 抑制将结果存储在 {opt r()} 中。此选项很少指定。一些结果存储在矩阵中。如果观察数超过矩阵能够容纳的数量，{cmd:dstdize} 将报告 "{err:无法分配矩阵}" 错误消息。在这种情况下，必须指定 {opt nores}。{opt nores} 选项不改变结果的计算方式，但指定结果不需要留存以供其他程序使用。


{marker options_istdize}{...}
{title:istdize 的选项}

{dlgtab:主要}

{phang}
{opt popvars(casevar_p popvar_p)} 或
{opt rate(ratevar_p {#|crudevar_p})} 必须与 {cmd:istdize} 一起指定。这两个选项只能选择其一。这些选项用于描述标准人群的数据。

{pmore}
使用 {opt popvars(casevar_p popvar_p)}，{it:casevar_p} 记录标准人群中每层的病例（死亡）数量，而 {it:popvar_p} 记录每层的个体总数（处于风险中的个体）。

{pmore}
使用 {opt rate(ratevar_p {#|crudevar_p})}，{it:ratevar_p} 包含层特定率。{it:#}|{it:crudevar_p} 指定粗发病率，通过变量名称或粗发病率值。如果使用粗发病率变量，必须对所有观察值使用相同的值，但可以对某些值缺失。

{phang}
{opt level(#)} 指定调整率置信区间的置信水平，百分比。默认值为 {cmd:level(95)} 或通过 {helpb set level} 设置。

{dlgtab:选项}

{phang}
{opth "by(varlist:groupvars)"} 指定识别研究人群的变量，当数据中存在多个时。如果未指定此选项，则整个研究人群视为一个组。

{phang} {opth format(%fmt)} 指定显示最终汇总表的格式。默认值为 {cmd:%10.0g}。

{phang}
{opt print} 在显示研究人群结果之前输出标准人群的汇总表。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse hbp}{p_end}
{phang2}{cmd:. generate pop = 1}{p_end}

{pstd}按 {cmd:city} 和 {cmd:year} 获取 {cmd:hbp} 的标准化率，使用 {cmd:age}、{cmd:race} 和 {cmd:sex} 的分布作为标准{p_end}
{phang2}{cmd:. dstdize hbp pop age race sex, by(city year)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse kahn, clear}{p_end}

{pstd}使用保存在 {cmd:popkahn.dta} 中的标准人群按 {cmd:state} 获取死亡率{p_end}
{phang2}{cmd:. istdize death pop age using}
       {cmd:https://www.stata-press.com/data/r16/popkahn,}
       {cmd:by(state) pop(deaths pop) print}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:dstdize} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(k)}}人群数量{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(by)}}在 {cmd:by()} 中指定的变量名{p_end}
{synopt:{cmd:r(c}{it:#}{cmd:)}}第 {it:#} 组的 {cmd:r(by)} 的值{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(se)}}1 x k 的调整率标准误向量{p_end}
{synopt:{cmd:r(ub_adj)}}1 x k 的调整率置信区间上限向量{p_end}
{synopt:{cmd:r(lb_adj)}}1 x k 的调整率置信区间下限向量{p_end}
{synopt:{cmd:r(Nobs)}}1 x k 观察数量向量{p_end}
{synopt:{cmd:r(crude)}}1 x k 的粗率向量 (*){p_end}
{synopt:{cmd:r(adj)}}1 x k 的调整率向量 (*){p_end}
{synopt:}{space 2}(*) 如果在一个组中观察数量为 0，则将存储 9 对应的粗率和调整率。{p_end}
{p2colreset}{...}

{pstd}
{cmd:istdize} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(k)}}人群数量{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(by)}}在 {cmd:by()} 中指定的变量名{p_end}
{synopt:{cmd:r(c}{it:#}{cmd:)}}第 {it:#} 组的 {cmd:r(by)} 的值{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(cases_obs)}}1 x k 的观察病例数量向量{p_end}
{synopt:{cmd:r(cases_exp)}}1 x k 的预期病例数量向量{p_end}
{synopt:{cmd:r(ub_adj)}}1 x k 的调整率置信区间上限向量{p_end}
{synopt:{cmd:r(lb_adj)}}1 x k 的调整率置信区间下限向量{p_end}
{synopt:{cmd:r(crude)}}1 x k 的粗率向量{p_end}
{synopt:{cmd:r(adj)}}1 x k 的调整率向量{p_end}
{synopt:{cmd:r(smr)}}1 x k 的 SMR 向量{p_end}
{synopt:{cmd:r(ub_smr)}}1 x k 的 SMR 置信区间上限向量{p_end}
{synopt:{cmd:r(lb_smr)}}1 x k 的 SMR 置信区间下限向量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dstdize.sthlp>}