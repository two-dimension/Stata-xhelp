{smcl}
{* *! version 1.2.6  19oct2017}{...}
{viewerdialog predict "dialog var_p"}{...}
{vieweralsosee "[TS] varbasic postestimation" "mansection TS varbasicpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] varbasic" "help varbasic_zh"}{...}
{viewerjumpto "后估计命令" "varbasic postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "varbasic_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "varbasic postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "varbasic postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "varbasic postestimation##examples"}
{help varbasic_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[TS] varbasic postestimation} {hline 2}}varbasic 的后估计工具{p_end}
{p2col:}({mansection TS varbasicpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
以下后估计命令在 {opt varbasic} 之后特别重要：

{synoptset 17}{...}
{synopt:命令}描述{p_end}
{synoptline}
{synopt:{helpb fcast compute}}获取动态预测{p_end}
{synopt:{helpb fcast graph}}图示由 {cmd:fcast compute} 获取的动态预测{p_end}
{synopt:{help irf_zh}}创建和分析 IRF 和 FEVD{p_end}
{synopt:{help vargranger_zh}}格兰杰因果检验{p_end}
{synopt:{help varlmar_zh}}残差自相关的 LM 检验{p_end}
{synopt:{help varnorm_zh}}检验残差是否正态分布{p_end}
{synopt:{help varsoc_zh}}滞后阶数选择标准{p_end}
{synopt:{help varstable_zh}}检查估计结果的稳定性条件{p_end}
{synopt:{help varwle_zh}}瓦尔德滞后排除统计量{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后估计命令也可用：

{synoptset 17}{...}
{synopt:命令}描述{p_end}
{synoptline}
包括 help post_estatic
包括 help post_estatsum
包括 help post_estatvce
包括 help post_estimates
包括 help post_forecast
包括 help post_lincom
包括 help post_lrtest
{synopt:{helpb varbasic_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包括 help post_marginsplot
包括 help post_nlcom
{p2col :{helpb varbasic postestimation##predict:预测}}预测、残差、影响统计量和其他诊断措施{p_end}
包括 help post_predictnl
包括 help post_test
包括 help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS varbasicpostestimationRemarksandexamples:备注和示例}

{pstd}
上述章节不包括在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}
[{cmd:,} {it:statistic}	{opt eq:uation(eqno|eqname)}]

{synoptset 17 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主要}
{synopt:{opt xb}}线性预测；默认值{p_end}
{synopt:{opt stdp}}线性预测的标准误差{p_end}
{synopt:{opt r:esiduals}}残差{p_end}
{synoptline}
{p2colreset}{...}
包括 help esample


包括 help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含诸如线性预测和残差的预测值。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb}（默认）计算指定方程的线性预测。

{phang}
{opt stdp} 计算指定方程的线性预测的标准误差。

{phang}
{opt residuals} 计算残差。

{phang}
{opt equation(eqno|eqname)} 指定您所引用的方程。

{pmore}
    {opt equation()} 填写一个 {it:eqno} 或 {it:eqname} 用于 {opt xb}、{opt stdp} 和 {opt residuals} 选项。例如，{cmd:equation(#1)} 表示计算第一个方程，{cmd:equation(#2)} 表示第二个，以此类推。您也可以通过名称引用方程；因此，{cmd:equation(income)} 表示引用名称为 income 的方程，{cmd:equation(hours)} 表示引用名称为 hours 的方程。

{pmore}
    如果您不指定 {opt equation()}，结果将与指定 {cmd:equation(#1)} 的结果相同。

{pstd}
有关在多方程估计命令后使用 {opt predict} 的更多信息，请参见 {manhelp predict R}。


包括 help syntax_margins1

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt:默认}每个方程的线性预测{p_end}
{synopt:{opt xb}}指定方程的线性预测{p_end}
{synopt:{opt stdp}}与 {cmd:margins} 不兼容{p_end}
{synopt:{opt r:esiduals}}与 {cmd:margins} 不兼容{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt xb} 默认为第一个方程。
{p_end}

包括 help notes_margins


包括 help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计线性预测的边际响应。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lutkepohl2}

{pstd}拟合 VAR 模型并绘制 OIRF{p_end}
{phang2}{cmd:. varbasic dln_inv dln_inc dln_consump}{p_end}

{pstd}执行残差自相关的拉格朗日乘子检验{p_end}
{phang2}{cmd:. varlmar}{p_end}

{pstd}检查 {cmd:var} 结果的稳定性{p_end}
{phang2}{cmd:. varstable}{p_end}

{pstd}计算 8 步动态预测{p_end}
{phang2}{cmd:. fcast compute ex_, step(8)}{p_end}

{pstd}图示由 {cmd:fcast compute} 计算的变量预测{p_end}
{phang2}{cmd:. fcast graph ex_dln_inv ex_dln_inc, observed}{p_end}

{pstd}获取方程 1 的线性预测{p_end}
{phang2}{cmd:. predict dln_inv_hat}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <varbasic_postestimation.sthlp>}