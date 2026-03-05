{smcl}
{* *! version 1.1.8  11may2019}{...}
{viewerdialog pksumm "dialog pksumm"}{...}
{vieweralsosee "[R] pksumm" "mansection R pksumm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] pk" "help pk_zh"}{...}
{viewerjumpto "语法" "pksumm_zh##syntax"}{...}
{viewerjumpto "菜单" "pksumm_zh##menu"}{...}
{viewerjumpto "描述" "pksumm_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "pksumm_zh##linkspdf"}{...}
{viewerjumpto "选项" "pksumm_zh##options"}{...}
{viewerjumpto "备注" "pksumm_zh##remarks"}{...}
{viewerjumpto "示例" "pksumm_zh##examples"}
{help pksumm:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] pksumm} {hline 2}}汇总药代动力学数据{p_end}
{p2col:}({mansection R pksumm:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:pksumm} {it:id time concentration} {ifin} [{cmd:,} {it:options}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{synopt :{opt t:rapezoid}}使用梯形法计算 AUC_0,tmax；默认值为立方样条{p_end}
{synopt :{opt fit(#)}}使用 {it:#} 个点来估计 AUC_0,inf；默认值为
{cmd:fit(3)}{p_end}
{synopt :{opt notime:chk}}不检查所有受试者的随访时间是否相同{p_end}
{synopt :{opt nod:ots}}在计算过程中抑制点的显示{p_end}
{synopt :{opt g:raph}}绘制 {it:statistic} 的分布图{p_end}
{synopt :{opt stat(statistic)}}绘制指定的统计量；默认值为
{cmd:stat(auc)}{p_end}

{syntab :直方图, 密度图, Y 轴, X 轴, 标题, 图例, 总体}
{synopt :{it:histogram_options}}任何除了在 {cmd:by()} 中的选项，文档见于
{manhelp histogram R}{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 20}{...}
{marker statistic}
{synopthdr :统计量}
{synoptline}
{synopt :{opt auc}}浓度-时间曲线下的面积 (AUC_0,tmax)；默认值{p_end}
{synopt :{opt aucline}}使用线性延伸的 AUC_0,inf{p_end}
{synopt :{opt aucexp}}使用指数延伸的 AUC_0,inf{p_end}
{synopt :{opt auclog}}从 0 到正无穷的浓度-时间曲线下的面积，使用对数浓度进行线性拟合延伸{p_end}
{synopt :{opt half}}药物半衰期{p_end}
{synopt :{opt ke}}消除速率{p_end}
{synopt :{opt cmax}}最大浓度{p_end}
{synopt :{opt tmax}}最后浓度的时间{p_end}
{synopt :{opt tomc}}最大浓度的时间{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 流行病学及相关 > 其他 >}
    {bf:汇总药代动力学数据}


{marker description}{...}
{title:描述}

{pstd}
{cmd:pksumm} 根据每个药代动力学测量的经验分布的前四个矩获得汇总度量，并检验该测量的分布是否符合正态分布的原假设。

{pstd}
{cmd:pksumm} 是 pk 命令之一。请在阅读此条目之前先阅读 {help pk_zh}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R pksummQuickstart:快速入门}

        {mansection R pksummRemarksandexamples:备注和示例}

        {mansection R pksummMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt trapezoid} 指定使用梯形法计算 AUC_0,tmax。默认值为立方样条，通常在大多数情况下效果更好。当曲线不规则时，梯形法可能会取得更好的结果。

{phang}
{opt fit(#)} 指定用于拟合延伸以估计 AUC_0,inf 的点数，计数自最后一次测量开始。默认值为 {cmd:fit(3)}，即最后三个点。该默认值应视为最低要求；适当的点数将取决于数据。

{phang}
{opt notimechk} 抑制检查所有受试者的随访时间是否相同。默认情况下，{cmd:pksumm} 期望所有受试者的最大随访时间相等。

{phang}
{opt nodots} 在计算过程中抑制进度点的显示。默认情况下，每次调用计算药代动力学指标时都会显示一个点（句号）。

{phang}
{opt graph} 请求绘制由 {opt stat()} 指定的统计量的分布图。

{phang}
{opth stat:(pksumm##statistic:统计量)} 指定 {cmd:pksumm} 应绘制的统计量。默认值为 {cmd:stat(auc)}。如果未指定 {cmd:graph} 选项，则此选项会被忽略。

{dlgtab:直方图, 密度图, Y 轴, X 轴, 标题, 图例, 总体}

{phang}
{it:histogram_options} 是文档中列出的任何选项
{manhelp histogram R}，不包括 {cmd:by()}。对于 {cmd:pksumm}，
{cmd:fraction} 是默认值，而不是 {cmd:density}。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:pksumm} 为九个常见药代动力学测量的分布生成汇总统计。如果受试者超过八个，{cmd:pksumm} 还会对每个测量计算正态性检验。
{cmd:pksumm} 汇总的九个测量在 {help pksumm##statistic:上述} 中列出，并在 {mansection R pkexamineMethodsandformulas:{it:方法和公式}} 中描述。 

{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse pksumm}{p_end}

{phang}所有药代动力学指标的汇总统计{p_end}
{phang2}{cmd:. pksumm id time conc}{p_end}

{phang}绘制 AUC 的分布图{p_end}
{phang2}{cmd:. pksumm id time conc, graph bin(20)}{p_end}

{phang}绘制消除速率的分布图{p_end}
{phang2}{cmd:. pksumm id time conc, stat(ke) graph bin(20)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <pksumm.sthlp>}