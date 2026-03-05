{smcl}
{* *! version 2.3.1  28apr2019}{...}
{viewerdialog predict "dialog nlogit_p"}{...}
{viewerdialog estat "dialog nlogit_estat"}{...}
{vieweralsosee "[CM] nlogit postestimation" "mansection CM nlogitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] nlogit" "help nlogit_zh"}{...}
{viewerjumpto "后估计命令" "nlogit postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "nlogit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "nlogit postestimation##syntax_predict"}{...}
{viewerjumpto "estat" "nlogit postestimation##syntax_estat"}{...}
{viewerjumpto "示例" "nlogit postestimation##examples"}
{help nlogit_postestimation:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[CM] nlogit postestimation} {hline 2}}nlogit 的后估计工具{p_end}
{p2col:}({mansection CM nlogitpostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在使用 {cmd:nlogit} 后，以下后估计命令特别重要：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb nlogit postestimation##estatalt:estat alternatives}}替代摘要统计{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后估计命令也可用：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_hausman
INCLUDE help post_lincom
INCLUDE help post_lrtest
INCLUDE help post_nlcom
{synopt :{helpb nlogit postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection CM nlogitpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic}
{opt hlevel(#)}]

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{c )-}
{ifin}
{cmd:,} {opt sc:ores}

{synoptset 20 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主要}
{synopt :{opt pr}}预测选择替代品的概率
         在层次的所有级别或在级别 {it:#}，其中 {it:#} 是由 
	 {opt hlevel(#)} 指定的；默认值{p_end}
{synopt :{opt xb}}所有层次的线性预测 
	或在级别 {it:#}，其中 {it:#} 是由 
	 {opt hlevel(#)} 指定的{p_end}
{synopt :{opt condp}}在层次的所有级别或在级别 {it:#} 的预测条件概率，
其中 {it:#} 是由 {opt hlevel(#)} 指定{p_end}
{synopt :{opt iv}}第 2 级到 {cmd:e(levels)} 的综合值 
或 {opt hlevel(#)}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
第一级替代品的综合值在估计中未使用；
因此，不会计算它。{p_end}
INCLUDE help esample
{p 4 6 2}
{cmd:predict} 按案例剔除缺失值，如果 {cmd:nlogit} 使用案例剔除（默认）；如果 {cmd:nlogit} 使用替代剔除（选项 {cmd:altwise}）， {cmd:predict} 使用替代剔除。


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测描述}

{pstd}
{cmd:predict} 创建一个新变量，包含诸如概率、线性预测、条件概率和综合值的预测。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主要}

{phang}
{opt pr} 计算在层次的每个级别选择每个替代品的概率。使用 {opt hlevel(#)} 选项
计算在级别 {it:#} 的替代概率。当未指定 {opt hlevel(#)} 时，必须提供 {it:j} 个新变量，
其中 {it:j} 是级别的数量，或使用 {it:stub}{cmd:*} 让 {cmd:predict} 生成带有前缀 {it:stub} 和编号从 1 到 {it:j} 的 {it:j} 个变量。 {cmd:pr} 选项为默认选项，如果仅给出一个新变量，则计算底层替代品的概率。否则，计算所有级别的概率，{it:stub}{cmd:*} 仍然有效。

{phang}
{opt xb} 计算每个替代品在各个级别的线性预测。使用 {opt hlevel(#)} 选项计算在级别 {it:#} 的线性预测。当未指定 {opt hlevel(#)} 时，必须提供 {it:j} 个新变量，
其中 {it:j} 是级别的数量，或使用 {it:stub}{cmd:*} 让 {cmd:predict} 生成带有前缀 {it:stub} 和编号从 1 到 {it:j} 的 {it:j} 个变量。

{phang}
{opt condp} 计算每个替代品在每个级别的条件概率。使用 {opt hlevel(#)} 选项计算在级别 {it:#} 的替代品的条件概率。当未指定 {opt hlevel(#)} 时，必须提供 {it:j} 个新变量，
其中 {it:j} 是级别的数量，或使用 {it:stub}{cmd:*} 让 {cmd:predict} 生成带有前缀 {it:stub} 和编号从 1 到 {it:j} 的 {it:j} 个变量。

{phang}
{opt iv} 计算每个替代品在每个级别的综合值。使用 {opt hlevel(#)} 选项计算在级别 {it:#} 的综合值。第一级没有综合值。如果未使用 {opt hlevel(#)}，则需要 {it:j}-1 个新变量，其中 {it:j} 是级别的数量，或使用 {it:stub}{cmd:*} 让 {cmd:predict} 生成带有前缀 {it:stub} 和编号从 2 到 {it:j} 的 {it:j}-1 个变量。有关综合值的定义，请参见 
{mansection CM nlogitMethodsandformulas:{it:方法和公式}} 在 {hi:[CM] nlogit} 中。

{phang}
{opt hlevel(#)} 仅计算层次级别 {it:#} 的预测。

{phang}
{opt scores} 计算 {cmd:e(b)} 中每个系数的得分。此选项需要的新变量列表长度等于 
{cmd:e(b)} 中列的数量。否则，使用 {it:stub}{cmd:*} 让 {cmd:predict} 生成带有前缀 {it:stub} 的编号变量。


{marker syntax_estat}{...}
{marker estatalt}{...}
{title:estat 语法}

{p 8 16 2}
{cmd:estat}
{opt alt:ernatives}


INCLUDE help menu_estat


{marker des_estat}{...}
{title:estat 描述}

{pstd}
{cmd:estat} {cmd:alternatives} 显示估计样本中每个层次的替代品摘要统计信息。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse restaurant}{p_end}
{phang2}{cmd:. nlogitgen type = restaurant(fast: Freebirds | MamasPizza,} 
    {cmd:family:  CafeEccell | LosNortenos | WingsNmore, fancy: Christophers |}
    {cmd:MadCows)}{p_end}
{phang2}{cmd:. nlogit chosen cost rating distance || type: income kids, }
    {cmd:base(family) || restaurant:, noconst case(family_id)}{p_end}

{pstd}计算底层替代品的概率{p_end}
{phang2}{cmd:. predict pr}{p_end}

{pstd}计算每个层次的概率{p_end}
{phang2}{cmd:. predict double p*, pr}{p_end}

{pstd}计算条件于第二级决策的底层替代品的概率{p_end}
{phang2}{cmd:. predict condp, condp hlevel(2)}{p_end}

{pstd}计算综合值{p_end}
{phang2}{cmd:. predict iv, iv}{p_end}

{pstd}总结第二级决策上的替代品{p_end}
{phang2}{cmd:. estat alternatives}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <nlogit_postestimation.sthlp>}