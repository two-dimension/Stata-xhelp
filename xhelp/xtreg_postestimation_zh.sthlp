{smcl}
{* *! version 1.3.7  19oct2017}{...}
{viewerdialog "predict (re/be/fe/mle)" "dialog xtrefe_p"}{...}
{viewerdialog "predict (pa)" "dialog xtreg_pa_p"}{...}
{viewerdialog xttest0 "dialog xttest0"}{...}
{vieweralsosee "[XT] xtreg postestimation" "mansection XT xtregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtreg" "help xtreg_zh"}{...}
{viewerjumpto "后估计命令" "xtreg postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "xtreg_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "xtreg postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "xtreg postestimation##syntax_margins"}{...}
{viewerjumpto "xttest0" "xtreg postestimation##syntax_xttest0"}{...}
{viewerjumpto "示例" "xtreg postestimation##examples"}{...}
{viewerjumpto "参考文献" "xtreg postestimation##reference"}
{help xtreg_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[XT] xtreg postestimation} {hline 2}}xtreg 的后估计工具{p_end}
{p2col:}({mansection XT xtregpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
以下后估计命令在 {cmd:xtreg} 之后特别重要：

{synoptset 19}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{cmd:{helpb xtreg_postestimation##xttest0:xttest0}}}Breusch 和 Pagan 的随机效应 LM 检验{p_end}
{synoptline}
{p2colreset}{...}

{phang}
以下标准后估计命令也可用：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
{p2coldent :* {bf:{help estat ic}}}Akaike 和 Schwarz 的贝叶斯信息准则 (AIC 和 BIC){p_end}
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast_star2
INCLUDE help post_hausman
INCLUDE help post_lincom
INCLUDE help post_lrtest_star
{synopt:{helpb xtreg_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb xtreg postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{phang}
* {cmd:estat ic} 和 {cmd:lrtest} 不适用于带有 {cmd:pa} 或 {cmd:re} 选项的 {cmd:xtreg}。{p_end}
{phang}
+ {cmd:forecast} 不适用于 {cmd:mi} 估计结果。{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection XT xtregpostestimationRemarksandexamples:备注和示例}

        {mansection XT xtregpostestimationMethodsandformulas:方法和公式}

{pstd}
上述章节未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测语法}

{phang}
对于除按人口平均模型以外的所有模型

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} 
{it:statistic} {opt nooff:set}]


{phang}
人口平均模型

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} 
{it:PA_statistic} {opt nooff:set}]


{marker statistic}{...}
{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab:主}
{synopt :{opt xb}}a + xb，拟合值；默认值{p_end}
{synopt :{opt stdp}}拟合值的标准误{p_end}
{synopt :{opt ue}}u_i + e_it，结合残差{p_end}
{p2coldent :* {opt xbu}}a + xb + u_i，包含效应的预测{p_end}
{p2coldent :* {opt u}}u_i，固定或随机误差成分{p_end}
{p2coldent :* {opt e}}e_it，总体误差成分{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help unstarred


{marker pastatistic}{...}
{synoptset 17 tabbed}{...}
{synopthdr :PA_statistic}
{synoptline}
{syntab:主}
{synopt :{opt mu}}{depvar} 的预测值；考虑 {opt offset()}{p_end}
{synopt :{opt rate}}{depvar} 的预测值{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synopt :{opt sc:ore}}关于 xb 的对数似然的第一导数{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新的变量，包含诸如拟合值、标准误、预测值、线性预测和方程级分数等预测结果。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{opt xb} 计算线性预测，即 a + xb。 这是除人口平均模型外的所有模型的默认设置。

{phang}
{opt stdp} 计算线性预测的标准误。
对于固定效应模型，这排除了因对 u_i 的估计不确定性所导致的方差。

{phang}
{opt mu} 和 {opt rate} 都计算 {depvar} 的预测值。
{opt mu} 考虑了 {opt offset()}，而 {opt rate} 忽略这些调整。 如果您未指定 {opt offset()}，则 {opt mu} 和 {cmd:rate} 是等价的。 {opt mu} 是人口平均模型的默认值。

{phang}
{opt ue} 计算 u_i + e_it 的预测。

{phang}
{opt xbu} 计算 a + xb + u_i 的预测，包括固定或随机成分的预测。

{phang}
{opt u} 计算 u_i 的预测，即估计的固定或随机效应。

{phang}
{opt e} 计算 e_it 的预测。

{phang}
{opt score} 计算方程级分数。

{phang}
{opt nooffset} 仅在您为 {cmd:xtreg, pa} 指定了 {opth offset(varname)} 时相关。 它修改 {cmd:predict} 的计算，使其忽略偏移变量；线性预测被视为 xb 而不是 xb + offset。


INCLUDE help syntax_margins

{phang}
对于除人口平均模型外的所有模型

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt xb}}a + xb，拟合值；默认值{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt ue}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt xbu}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt u}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt e}}与 {cmd:margins} 不允许{p_end}
{synoptline}
{p2colreset}{...}

{phang}
人口平均模型

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt mu}}{depvar} 的预测值；考虑 {opt offset()}{p_end}
{synopt :{opt rate}}{depvar} 的预测值{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt sc:ore}}与 {cmd:margins} 不允许{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计拟合值、概率和线性预测的响应边际。


{marker syntax_xttest0}{...}
{marker xttest0}{...}
{title:xttest0 的语法}

        {cmd:xttest0}


{marker menu_xttest0}{...}
{title:xttest0 的菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 线性模型 >}
     {bf:随机效应 Lagrange 乘数检验}


{marker des_xttest0}{...}
{title:xttest0 的描述}

{pstd}
{cmd:xttest0} 在 {cmd:xtreg, re} 之后使用，提供 
{help xtreg_postestimation##BP1980:Breusch 和 Pagan (1980)}
的随机效应 Lagrange 乘数检验，该检验假设 Var(v_i)=0。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse nlswork}{p_end}
{phang2}{cmd:. xtset idcode}{p_end}

{pstd}拟合随机效应模型{p_end}
{phang2}{cmd:. xtreg ln_w grade age c.age#c.age ttl_exp c.ttl_exp#c.ttl_exp}
   {cmd:tenure c.tenure#c.tenure 2.race not_smsa south, re}

{pstd}存储随机效应结果以供后用{p_end}
{phang2}{cmd:. estimates store random_effects}{p_end}

{pstd}Breusch 和 Pagan 的 Lagrangian 乘数检验随机效应{p_end}
{phang2}{cmd:. xttest0}

{pstd}拟合固定效应模型{p_end}
{phang2}{cmd:. xtreg ln_w grade age c.age#c.age ttl_exp c.ttl_exp#c.ttl_exp}
   {cmd:tenure c.tenure#c.tenure 2.race not_smsa south, fe}

{pstd}Hausman 规范检验{p_end}
{phang2}{cmd:. hausman . random_effects}{p_end}


{marker reference}{...}
{title:参考文献}

{marker BP1980}{...}
{phang}
Breusch, T. S., 和 A. R. Pagan. 1980. Lagrange 乘数检验及其在计量经济学模型规范中的应用。 
{it:经济研究评论} 47: 239-253。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtreg_postestimation.sthlp>}