{smcl}
{* *! version 1.2.12  19sep2018}{...}
{viewerdialog "sts generate" "dialog sts_generate"}{...}
{vieweralsosee "[ST] sts generate" "mansection ST stsgenerate"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] sts" "help sts_zh"}{...}
{vieweralsosee "[ST] sts graph" "help sts_graph_zh"}{...}
{vieweralsosee "[ST] sts list" "help sts_list_zh"}{...}
{vieweralsosee "[ST] sts test" "help sts_test_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{viewerjumpto "语法" "sts_generate_zh##syntax"}{...}
{viewerjumpto "菜单" "sts_generate_zh##menu"}{...}
{viewerjumpto "描述" "sts_generate_zh##description"}{...}
{viewerjumpto "指向 PDF 文档的链接" "sts_generate_zh##linkspdf"}{...}
{viewerjumpto "函数" "sts_generate_zh##functions"}{...}
{viewerjumpto "选项" "sts_generate_zh##options"}{...}
{viewerjumpto "示例" "sts_generate_zh##examples"}
{help sts_generate:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[ST] sts generate} {hline 2}}创建包含生存者和相关函数的变量{p_end}
{p2col:}({mansection ST stsgenerate:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 21 2}{cmd:sts} {opt gen:erate} {newvar} {cmd:=}
{c -(} {opt s} | {cmd:se(s)} | {opt h} | {cmd:se(lls)} | {cmd:lb(s)} |
{cmd:ub(s)} | {opt na} | {cmd:se(na)} | {cmd:lb(na)} | {cmd:ub(na)} |
{opt n} | {opt d} {c )-} [{newvar} {cmd:=} {{it:...}} {it:...}] {ifin}
[{cmd:,} {it:options}]

{synoptset 21 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:选项}
{synopt :{opth by(varlist)}}针对 {it:varlist} 中的每个组分别计算{p_end}
{synopt :{opth ad:justfor(varlist)}}对 {it:varlist} 的零值进行调整{p_end}
{synopt :{opth st:rata(varlist)}}对 {it:varlist} 的不同组进行分层{p_end}
{synopt :{opt l:evel(#)}}设置信心水平；默认是 {cmd:level(95)}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
在使用 {cmd:sts generate} 之前必须 {cmd:stset} 您的数据；请参见
{manhelp stset ST}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 汇总统计、检验和表格 >}
       {bf:创建生存者、风险和其他变量}


{marker description}{...}
{title:描述}

{pstd}
{cmd:sts generate} 创建包含估计的生存（失败）函数、Nelson-Aalen 累积风险（综合风险）函数和相关函数的新变量。有关此命令的介绍，请参见 {manhelp sts ST}。

{pstd}
{cmd:sts generate} 可用于单记录或多记录、单失败或多失败的生存数据。


{marker linkspdf}{...}
{title:指向 PDF 文档的链接}

        {mansection ST stsgenerateQuickstart:快速入门}

        {mansection ST stsgenerateRemarksandexamples:备注和示例}

        {mansection ST stsgenerateMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker functions}{...}
{title:函数}

{dlgtab:主要}

{phang}
{cmd:s} 生成生存函数的 Kaplan-Meier 产品极限估计，或者如果指定了 {opt adjustfor()}，则生成来自 Cox 回归模型的基线生存函数。

{phang}
{cmd:se(s)} 生成 Greenwood 点估计的标准误。这一选项不能与 {opt adjustfor()} 一起使用。

{phang}
{cmd:h} 生成估计的风险成分 deltaH_j = H(t_j) - H(t_(j-1))，其中 t_j 是当前失败时间，t_(j-1) 是之前的时间。这主要是用于计算估计的累积风险 H(t_j) 的实用函数，但您可以通过 deltaH_j 的核平滑估计风险；详见 {manhelp sts_graph ST:sts graph}。它在每次发生失败时记录，并计算为 d_j/n_j，其中 d_j 是在时间 t_j 发生的失败数量，n_j 是在时间 t_j 发生失败之前的风险数量。

{phang}
{cmd:se(lls)} 生成 ln{c -(}-ln S(t){c )-} 的标准误。这一选项不能与 {opt adjustfor()} 一起使用。

{phang}
{cmd:lb(s)} 生成基于 ln{c -(}-ln S(t){c )-} 的 S(t) 信赖区间下限。这一选项不能与 {opt adjustfor()} 一起使用。

{phang}
{cmd:ub(s)} 生成相应的上限。这一选项不能与 {opt adjustfor()} 一起使用。

{phang}
{cmd:na} 生成累积风险函数的 Nelson-Aalen 估计。这一选项不能与 {cmd:adjustfor()} 一起使用。

{phang}
{cmd:se(na)} 生成 Nelson-Aalen 累积风险函数 H(t) 的点估计标准误。这一选项不能与 {opt adjustfor()} 一起使用。

{phang}
{cmd:lb(na)} 生成基于对数转换的累积风险函数的 H(t) 信赖区间下限。这一选项不能与 {opt adjustfor()} 一起使用。

{phang}
{cmd:ub(na)} 生成相应的上限。这一选项不能与 {opt adjustfor()} 一起使用。

{phang}
{cmd:n} 生成 n_j，表示在时间 t_j 前的风险数量。这一选项不能与 {opt adjustfor()} 一起使用。

{phang}
{cmd:d} 生成 d_j，表示在时间 t_j 发生的失败数量。这一选项不能与 {opt adjustfor()} 一起使用。


{marker options}{...}
{title:选项}

{dlgtab:选项}

{phang}
{opth by(varlist)} 对每个 by 分组执行独立计算。by 组由 {it:varlist} 中变量的相等值标识。{opt by()} 不能与 {opt strata()} 结合使用。

{phang}
{opth adjustfor(varlist)} 将生存（失败）或风险函数的估计调整为 {it:varlist} 的 0 值。此选项仅适用于 {opt s} 或 {opt h} 函数。有关如何调整与 0 不同的值的示例，请参见 {manhelp sts_graph ST:sts graph}。

{pmore}
如果您用 {opt adjustfor()} 和 {opt by()}，{cmd:sts} 将为每组拟合独立的 Cox 回归模型，使用 {opt adjustfor()} 变量作为协变量。然后检索分别计算的基线生存函数。

{pmore}
如果您用 {opt adjustfor()} 和 {opt strata()}，{cmd:sts} 将拟合分层的 Cox 回归模型，使用 {opt adjustfor()} 变量作为协变量。然后检索分层的基线生存函数。

{phang}
{opth strata(varlist)} 请求分层估计生存（失败）或风险函数，这些函数基于 {it:varlist} 中的变量。它需要指定 {opt adjustfor()}，并且不能与 {opt by()} 结合使用。

{phang}
{opt level(#)} 指定 {cmd:lb(s)}、{cmd:ub(s)}、{cmd:lb(na)} 和 {cmd:ub(na)} 函数的置信水平，作为百分比。默认是 {cmd:level(95)} 或者 {helpb set level} 设置的值。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse stan3}{p_end}
{phang2}{cmd:. stset}

{pstd}创建包含生存函数估计的变量 {cmd:surv}{p_end}
{phang2}{cmd:. sts generate surv = s}

{pstd}获取 {cmd:posttran} 的两个类别的生存函数估计并将其保存在变量 {cmd:surv_by}{p_end}
{phang2}{cmd:. sts generate surv_by = s, by(posttran)}

{pstd}获取在 {cmd:posttran} 上分层并调整了 {cmd:age} 的生存函数估计{p_end}
{phang2}{cmd:. sts generate surv_adj = s, strata(posttran) adjustfor(age)}

{pstd}创建变量 {cmd:cumh} 和 {cmd:cumh_se} 包含 Nelson-Aalen 估计值和 Nelson-Aalen 累积风险函数的点估计标准误{p_end}
{phang2}{cmd:. sts generate cumh = na cumh_se = se(na)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sts_generate.sthlp>}