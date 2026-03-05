
{smcl}
{* *! version 1.1.5  29mar2013}{...}
{cmd:help dprobit postestimation}{...}
{right:对话框:  {dialog dprobit_p:predict}  {dialog dprobit_estat:estat}{space 7}}
{help dprobit_postestimation:English Version}
{hline}
{right:另见:  {help dprobit_zh}{space 14}}
{right:{help prdocumented_zh:之前记录的内容}}
{hline}
{pstd}
{cmd:dprobit} 依然可用，但自 Stata 11 起，已不再是 Stata 的正式部分。 这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。


{title:标题}

{p2colset 5 35 37 2}{...}
{p2col :{hi:[R] dprobit postestimation} {hline 2}}dprobit 的后估计工具{p_end}
{p2colreset}{...}


{title:描述}

{pstd}
以下后估计命令在使用 {cmd:dprobit} 后特别重要：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb logistic postestimation##estatclas:estat clas}}{opt estat classification} 报告各种汇总统计，包括分类表{p_end}
{synopt :{helpb logistic postestimation##estatgof:estat gof}}皮尔逊或霍斯梅尔-莱梅肖拟合优度检验{p_end}
{synopt :{helpb logistic postestimation##lroc:lroc}}绘制 ROC 曲线并计算曲线下面积{p_end}
{synopt :{helpb logistic postestimation##lsens:lsens}}绘制灵敏度和特异性与概率截止值的关系{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
这些命令在 {cmd:svy} 前缀之后不适用。
{p_end}

{pstd}
以下标准后估计命令也可用：

{synoptset 20 notes}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_adjust3par
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_svy_estat
INCLUDE help post_estimates
INCLUDE help post_hausman
INCLUDE help post_lincom
INCLUDE help post_linktest
INCLUDE help post_lrtest2par
INCLUDE help post_mfx
INCLUDE help post_nlcom
{synopt :{helpb dprobit postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}(1) {cmd:adjust} 不适用于时间序列运算符。{p_end}
INCLUDE help post_lrtest2par_msg


{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} 
[{cmd:,} {it:statistic} {opt nooff:set} {opt rule:s} {opt asif}]

{synoptset 11 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主要}
{synopt :{opt p:r}}正向结果的概率；默认值{p_end}
{synopt :{cmd:xb}}线性预测{p_end}
{synopt :{cmd:stdp}}线性预测的标准误{p_end}
{p2coldent :* {opt de:viance}}偏差残差{p_end}
{synopt :{opt sc:ore}}关于线性预测的对数似然的一阶导数{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help unstarred


INCLUDE help menu_predict


{title:预测的选项}

{dlgtab:主要}

{phang}
{opt pr} 是默认设置，计算正向结果的概率。

{phang}
{opt xb} 计算线性预测。

{phang}
{opt stdp} 计算线性预测的标准误。

{phang}
{opt deviance} 计算偏差残差。  

{phang}
{opt score} 计算方程级别的得分，即对数似然相对于线性预测的导数。

{phang}
{opt nooffset} 仅在您为 {opt dprobit} 指定了 {opth offset(varname)} 时相关。它修改 {opt predict} 的计算，使其忽略偏移变量；线性预测被视为 xb，而不是 xb + offset。

{phang}
{opt rules} 请求 Stata 在进行预测时使用任何用于识别模型的规则。默认情况下，Stata 对排除的观察值计算缺失值。

{phang}
{opt asif} 请求 Stata 忽略规则和排除标准，并对尽可能多的观察值进行预测，使用模型的估计参数。


{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse repair}{p_end}
{phang2}{cmd:. gen rep_is_1 = repair == 1}{p_end}
{phang2}{cmd:. gen rep_is_2 = repair == 2}{p_end}
{phang2}{cmd:. dprobit foreign rep_is_1 rep_is_2}{p_end}

{pstd}获得预测的概率{p_end}
{phang2}{cmd:. predict p}


{title:另见}

{psee}
手册:  {help prdocumented_zh:之前记录的内容}

{psee}
{space 2}帮助:  {manhelp dprobit R}; 
{manhelp logistic_postestimation R:logistic postestimation}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dprobit_postestimation.sthlp>}