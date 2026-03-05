{smcl}
{* *! version 1.1.8  11may2019}{...}
{viewerdialog pkcollapse "dialog pkcollapse"}{...}
{vieweralsosee "[R] pkcollapse" "mansection R pkcollapse"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] pk" "help pk_zh"}{...}
{viewerjumpto "语法" "pkcollapse_zh##syntax"}{...}
{viewerjumpto "菜单" "pkcollapse_zh##menu"}{...}
{viewerjumpto "描述" "pkcollapse_zh##description"}{...}
{viewerjumpto "PDF文档链接" "pkcollapse_zh##linkspdf"}{...}
{viewerjumpto "选项" "pkcollapse_zh##options"}{...}
{viewerjumpto "示例" "pkcollapse_zh##examples"}
{help pkcollapse:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[R] pkcollapse} {hline 2}}生成药代动力学测量数据集{p_end}
{p2col:}({mansection R pkcollapse:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 19 2}
{cmd:pkcollapse} {it:time} {it:concentration} [{it:concentration} [...]] [{it:{help if_zh}}] {cmd:,}
 {opt id(id_var)} [{it:options}]

{synoptset 18 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{p2coldent :* {opt id(id_var)}}主题 ID 变量{p_end}
{synopt :{opth "stat(pkcollapse##measures:measures)"}}创建指定的
{it:measures}；默认是所有{p_end}
{synopt :{opt t:rapezoid}}使用梯形法则；默认是立方样条{p_end}
{synopt :{opt fit(#)}}使用 {it:#} 点来估计 AUC_0,inf；默认是
{cmd:fit(3)}{p_end}
{synopt :{opth keep(varlist)}}保留 {it:varlist} 中的变量{p_end}
{synopt :{opt force}}强制合并{p_end}
{synopt :{opt nod:ots}}在计算过程中抑制点的显示{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}*{opt id(id_var)} 是必需的。

{synoptset 18}{...}
{marker measures}{...}
{synopthdr :measures}
{synoptline}
{synopt :{opt auc}}AUC_0,tmax{p_end}
{synopt :{opt aucline}}AUC_0,inf 使用线性扩展{p_end}
{synopt :{opt aucexp}}AUC_0,inf 使用指数扩展{p_end}
{synopt :{opt auclog}}从 0 到 无穷大的浓度-时间曲线下的面积扩展到对数浓度的线性拟合{p_end}
{synopt :{opt half}}药物的半衰期{p_end}
{synopt :{opt ke}}消除速率{p_end}
{synopt :{opt cmax}}最大浓度{p_end}
{synopt :{opt tmax}}最后一次浓度的时间{p_end}
{synopt :{opt tomc}}最大浓度的时间{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 流行病学及相关 > 其他 >}
    {bf:生成药代动力学测量数据集}


{marker description}{...}
{title:描述}

{pstd}
{cmd:pkcollapse} 生成新的变量，其中包含感兴趣的药代动力学总结指标。
 
{pstd}
{cmd:pkcollapse} 是 pk 命令之一。在阅读此条目之前，请阅读 {help pk_zh}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R pkcollapseQuickstart:快速开始}

        {mansection R pkcollapseRemarksandexamples:备注和示例}

        {mansection R pkcollapseMethodsandformulas:方法与公式}

{pstd}
上述部分不包含在本帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt id(id_var)} 是必需的，并指定包含 {cmd:pkcollapse} 要操作的主题 ID 的变量。

{phang}
{opth stat:(pkcollapse##measures:measures)} 指定要生成的指标。默认是生成所有指标。

{phang}
{opt trapezoid} 告诉 Stata 在计算 AUC_0,tmax 时使用梯形法则。默认使用立方样条，对于大多数函数效果更好。当曲线不规则时，使用 {opt trapezoid} 可能会得到更好的结果。

{phang}
{opt fit(#)} 指定用于估计 AUC_0,inf 的点数。默认值为 {cmd:fit(3)}，即最后三个点。这个数字应视为最小值；适当的点数将取决于您的数据。

{phang}
{opth keep(varlist)} 指定在合并过程中要保留的变量。未在 {opt keep()} 选项中指定的变量将被丢弃。当指定 {opt keep()} 时，保留的变量会被检查以确保在 {it:id_var} 中所有变量值相同。

{phang}
{opt force} 强制合并，即使 {opt keep()} 变量在 {it:id_var} 中的值不同。

{phang}
{opt nodots} 在计算过程中抑制点的显示。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse pkdata}{p_end}

{pstd}创建包含所有总结药代动力学指标的数据集{p_end}
{phang2}{cmd:. pkcollapse time conc1 conc2, id(id)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse pkdata, clear}{p_end}

{pstd}创建包含 AUC 指标的数据集，并保留变量 {cmd:seq}{p_end}
{phang2}{cmd:. pkcollapse time conc1 conc2, id(id) keep(seq) stat(auc)}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <pkcollapse.sthlp>}