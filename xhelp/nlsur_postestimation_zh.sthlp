{smcl}
{* *! version 1.2.6  19oct2017}{...}
{viewerdialog predict "dialog nlsur_p"}{...}
{vieweralsosee "[R] nlsur postestimation" "mansection R nlsurpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] nlsur" "help nlsur_zh"}{...}
{viewerjumpto "后估计命令" "nlsur postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "nlsur_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "nlsur postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "nlsur postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "nlsur postestimation##examples"}
{help nlsur_postestimation:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[R] nlsur postestimation} {hline 2}}nlsur 的后估计工具{p_end}
{p2col:}({mansection R nlsurpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {cmd:nlsur} 之后可用以下后估计命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast
INCLUDE help post_hausman
INCLUDE help post_lincom
INCLUDE help post_lrtest
{p2coldent:* {helpb nlsur_postestimation##margins:margins}}边际均值，
		预测边际，边际
                效果和平均边际效果{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb nlsur postestimation##predict:predict}}预测和残差{p_end}
INCLUDE help post_predictnl
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{phang}* 您必须在 {cmd:nlsur} 中指定 {cmd:variables()} 选项。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R nlsurpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} 
{dtype} 
{newvar} 
{ifin}
[{cmd:,} {opt eq:uation}{cmd:(#}{it:eqno}{cmd:)}
{opt y:hat} {opt r:esiduals}]

INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测值，如拟合值和残差的新变量。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{cmd:equation(#}{it:eqno}{cmd:)} 指定您所指的方程。 {cmd:equation(#1)} 意味着计算将应用于第一个方程， {cmd:equation(#2)} 意味着第二个，以此类推。如果您不指定 {opt equation()}，结果将与指定 {cmd:equation(#1)} 时相同。

{phang}
{opt yhat}，默认选项，计算指定方程的拟合值。

{phang}
{opt residuals} 计算指定方程的残差。


INCLUDE help syntax_margins1

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{opt y:hat}}拟合值；默认选项{p_end}
{synopt :{opt r:esiduals}}与 {cmd:margins} 不兼容{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:margins 的描述}

{pstd}
{cmd:margins} 估计拟合值的响应边际。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. nlsur (mpg = {b0} + {b1} / turn) (gear_ratio = {c0} + {c1}*length)}{p_end}

{pstd}计算第一个方程的拟合值{p_end}
{phang2}{cmd:. predict mpghat, equation(#1)}{p_end}

{pstd}计算第二个方程的残差{p_end}
{phang2}{cmd:. predict gearerr, residuals equation(#2)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse mfgcost, clear}{p_end}
{phang2}{cmd:. nlsur (s_k = {c -(}bk{c )-} + {c -(}dkk{c )-}*ln(pk/pm) +}
                       {cmd:{c -(}dkl{c )-}*ln(pl/pm) +}
                       {cmd:{c -(}dke{c )-}*ln(pe/pm))}
                {cmd:(s_l = {c -(}bl{c )-} + {c -(}dkl{c )-}*ln(pk/pm) +}
                       {cmd:{c -(}dll{c )-}*ln(pl/pm) +}
                       {cmd:{c -(}dle{c )-}*ln(pe/pm))}
                {cmd:(s_e = {c -(}be{c )-} + {c -(}dke{c )-}*ln(pk/pm) +}
                       {cmd:{c -(}dle{c )-}*ln(pl/pm) +}
                       {cmd:{c -(}dee{c )-}*ln(pe/pm)),}
                       {cmd:ifgnls variables(pk pm pl pe)}

{pstd}测量能源成本份额相对于能源价格变化的变化{p_end}
{phang2}{cmd:. margins, dydx(pe) predict(equation(#3))}{p_end}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <nlsur_postestimation.sthlp>}