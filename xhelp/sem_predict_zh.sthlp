{smcl}
{* *! version 1.0.11  31may2018}{...}
{viewerdialog predict "dialog sem_p"}{...}
{vieweralsosee "[SEM] predict after sem" "mansection SEM predictaftersem"}{...}
{findalias assempredict}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{vieweralsosee "[SEM] sem postestimation" "help sem_postestimation_zh"}{...}
{viewerjumpto "Syntax" "sem_predict_zh##syntax"}{...}
{viewerjumpto "Menu" "sem_predict_zh##menu"}{...}
{viewerjumpto "Description" "sem_predict_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_predict_zh##linkspdf"}{...}
{viewerjumpto "Options" "sem_predict_zh##options"}{...}
{viewerjumpto "Remarks" "sem_predict_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_predict_zh##examples"}{...}
{viewerjumpto "Reference" "sem_predict_zh##reference"}
{help sem_predict:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[SEM] predict after sem} {hline 2}}因子得分，线性预测等{p_end}
{p2col:}({mansection SEM predictaftersem:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{c )-}
{ifin} [{cmd:,} {it:options}]

{synoptset 18}{...}
{synopthdr:选项}
{synoptline}
{synopt :{opt xb}}对所有 OEn 变量进行线性预测；默认设置{p_end}
{synopt :{opth xb(varlist)}}对指定的 OEn 变量进行线性预测{p_end}

{synopt :{opt xblat:ent}}对所有 LEn 变量进行线性预测{p_end}
{synopt :{opth xblat:ent(varlist)}}对指定的 LEn 变量进行线性预测{p_end}

{synopt :{opt lat:ent}}对所有潜变量计算因子得分{p_end}
{synopt :{opth lat:ent(varlist)}}对指定的潜变量计算因子得分{p_end}

{synopt :{opt sc:ores}}计算对数似然的第一导数{p_end}
{synoptline}
{p 4 6 2}
关键：OEn = 观察到的内生变量；LEn = 潜在内生变量 {p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM（结构方程建模） > 预测}


{marker description}{...}
{title:描述}

{pstd}
{cmd:predict} 是 Stata 的标准后估计命令。
此条目涉及在 {cmd:sem} 之后使用 {cmd:predict}。
如果您使用 {cmd:gsem} 拟合模型，请参见 {help gsem_predict_zh:[SEM] predict after gsem}。

{pstd}
在 {cmd:sem} 之后，{cmd:predict} 会创建新变量，包含逐观测值的估计因子得分（即潜变量的预测值）和潜在及观察到的内生变量的预测值。允许进行样本外预测。

{pstd}
当在具有 {opt group()} 选项的 {cmd:sem} 拟合模型上使用 {cmd:predict} 时，结果将生成适当的组特定估计。允许样本外预测；对未包含在拟合模型时的组，将填补缺失值。

{pstd}
{cmd:predict} 允许两种语法。您可以键入

{phang2}{cmd:. predict} {it:stub}{cmd:*}{cmd:, ...}{p_end}

{pstd}
以创建名为 {it:stub}{cmd:1}，{it:stub}{cmd:2}，... 的变量，或者您可以键入

{phang2}{cmd:. predict var1 var2 ..., ...}{p_end}

{pstd}
以创建名为 {cmd:var1}，{cmd:var2}，... 的变量。

{pstd}
{cmd:predict} 不能与汇总统计数据进行使用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM predictaftersemRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:xb}
计算模型中所有观察到的内生变量的线性预测。如果未指定选项，则 {cmd:xb} 为默认值。

{phang}
{opth xb(varlist)}
计算指定变量的线性预测，所有指定变量必须是观察到的内生变量。

{phang}
{cmd:xblatent} 和 {opth xblatent(varlist)}
分别计算所有或指定的潜在内生变量的线性预测。

{phang}
{cmd:latent} 和 {opth latent(varlist)} 
分别计算所有或指定的潜在变量的因子得分。计算方法类似于回归评分；即，它生成基于模型中使用的观察变量的潜变量的均值。如果观察变量中发现缺失值，则仅依据具有观察值的变量进行条件估计。

{phang}{cmd:scores}
供程序员使用。它提供与参数相关的观测级对数似然的第一导数。

{p 8 8 2}
程序员：在单组 {cmd:sem} 中，未被约束为 0 的每个参数都有一个相关方程。因此，方程的数量，以及由 {cmd:predict} 创建的得分变量的数量，可能是很大的。


{marker remarks}{...}
{title:备注}

{pstd}
请参见 {findalias sempredict}。

{pstd}
潜变量的因子得分可以解释为缺失值插补的一种形式——将每个潜变量视为只有缺失值的观察变量。

{pstd}
当模型中存在潜变量时，{cmd:predict, xb} 的线性预测是通过在计算系数的线性组合之前，用因子得分替代每个潜变量来计算的。当因子得分包含测量误差时，这种方法将导致不一致的系数估计；请参见 {help sem_predict##Bollen1989:Bollen (1989}, 305-306)。 


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_1fmm}{p_end}
{phang2}{cmd:. sem (x1 x2 x3 x4 <- X)}{p_end}

{pstd}对所有观察到的内生变量进行线性预测{p_end}
{phang2}{cmd:. predict xb*, xb}{p_end}

{pstd}设置{p_end}
{phang2}{cmd:. drop xb*}{p_end}

{pstd}对 {cmd:x1} 和 {cmd:x2} 进行线性预测{p_end}
{phang2}{cmd:. predict xb1 xb2, xb(x1 x2)}{p_end}

{pstd}潜在变量 {cmd:X} 的因子得分{p_end}
{phang2}{cmd:. predict Fscore, latent(X)}{p_end}

{pstd}参数级得分{p_end}
{phang2}{cmd:. predict s*, scores}{p_end}


{marker reference}{...}
{title:参考文献}

{marker Bollen1989}{...}
{phang}
Bollen, K. A. 1989.  {it:有潜变量的结构方程}.  纽约：Wiley。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_predict.sthlp>}