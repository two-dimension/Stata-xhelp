{smcl}
{* *! version 1.2.4  19oct2017}{...}
{viewerdialog predict "dialog var_p"}{...}
{vieweralsosee "[TS] var postestimation" "mansection TS varpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] var" "help var_zh"}{...}
{viewerjumpto "后估计命令" "var postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "var_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "var postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "var postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "var postestimation##examples"}
{help var_postestimation:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[TS] var postestimation} {hline 2}}var 的后估计工具{p_end}
{p2col:}({mansection TS varpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {opt var} 后，以下后估计命令特别重要：

{synoptset 17}{...}
{synopt:命令}描述{p_end}
{synoptline}
{synopt:{helpb fcast compute}}获取动态预测{p_end}
{synopt:{helpb fcast graph}}绘制由 {cmd:fcast compute} 获得的动态预测图{p_end}
{synopt:{help irf_zh}}创建和分析冲击响应函数和方差分解{p_end}
{synopt:{help vargranger_zh}}Granger 因果关系检验{p_end}
{synopt:{help varlmar_zh}}LM 测试残差的自相关性{p_end}
{synopt:{help varnorm_zh}}检验残差的正态分布{p_end}
{synopt:{help varsoc_zh}}滞后阶数选择标准{p_end}
{synopt:{help varstable_zh}}检查估计的稳定性条件{p_end}
{synopt:{help varwle_zh}}Wald 滞后排除统计量{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后估计命令也可用：

{synoptset 17}{...}
{synopt:命令}描述{p_end}
{synoptline}
包含帮助 post_estatic
包含帮助 post_estatsum
包含帮助 post_estatvce
包含帮助 post_estimates
包含帮助 post_forecast
包含帮助 post_lincom
包含帮助 post_lrtest
{synopt:{helpb var_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包含帮助 post_marginsplot
包含帮助 post_nlcom
{p2col :{helpb var postestimation##predict:predict}}预测、残差、影响统计量和其他诊断措施{p_end}
包含帮助 post_predictnl
包含帮助 post_test
包含帮助 post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF文档链接}

{mansection TS varpostestimationRemarksandexamples:备注和示例}

{mansection TS varpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}
[{cmd:,} {it:statistic} {opt eq:uation(eqno|eqname)}]

{synoptset 17 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主要}
{synopt:{opt xb}}线性预测；默认{p_end}
{synopt:{opt stdp}}线性预测的标准误差{p_end}
{synopt:{opt r:esiduals}}残差{p_end}
{synoptline}
{p2colreset}{...}
包含帮助 esample


包含帮助 menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含线性预测和残差等预测的新变量。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb}，默认情况下，计算指定方程的线性预测。

{phang}
{opt stdp} 计算指定方程的线性预测的标准误差。

{phang}
{opt residuals} 计算残差。

{phang}
{opt equation(eqno|eqname)} 指定您所引用的方程。

{pmore}
    {opt equation()} 需要填写一个 {it:eqno} 或 {it:eqname} 用于选项 {opt xb}、{opt stdp} 和 {opt residuals}。例如，{cmd:equation(#1)} 表示计算第一个方程，{cmd:equation(#2)} 表示第二个，以此类推。您也可以通过名称引用方程；例如，{cmd:equation(income)} 指的是名称为 income 的方程，{cmd:equation(hours)} 指的是名称为 hours 的方程。

{pmore}
    如果您未指定 {opt equation()}，结果与指定 {cmd:equation(#1)} 的结果相同。

{pstd}
有关在多方程估计命令后使用 {opt predict} 的更多信息，请参见 {manhelp predict R}。


包含帮助 syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt:default}每个方程的线性预测{p_end}
{synopt:{opt xb}}指定方程的线性预测{p_end}
{synopt:{opt stdp}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt:{opt r:esiduals}}不允许与 {cmd:margins} 一起使用{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt xb} 默认是第一方程。
{p_end}

包含帮助 notes_margins


包含帮助 menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计线性预测的响应边际。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lutkepohl2}{p_end}

{pstd}拟合一个向量自回归模型{p_end}
{phang2}{cmd:. var dln_inv dln_inc dln_consump}{p_end}

{pstd}检验 {cmd:var} 后的正态分布干扰{p_end}
{phang2}{cmd:. varnorm}

{pstd}获取 {cmd:var} 后的滞后阶数选择统计{p_end}
{phang2}{cmd:. varsoc}

{pstd}估计 IRF 和 FEVD，并在 {cmd:order1} 中保存到 {cmd:myirf1.irf}{p_end}
{phang2}{cmd:. irf create order1, set(myirf1)}

{pstd}绘制正交化冲击响应函数，使用 {cmd:dln_inc} 作为冲击变量，{cmd:dln_consump} 作为响应变量{p_end}
{phang2}{cmd:. irf graph oirf, impulse(dln_inc) response(dln_consump)}

{pstd}计算接下来的 4 个周期的预测{p_end}
{phang2}{cmd:. fcast compute f_, step(4)}

{pstd}绘制刚刚做出的预测{p_end}
{phang2}{cmd:. fcast graph f_dln_inv f_dln_inc f_dln_consump}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <var_postestimation.sthlp>}