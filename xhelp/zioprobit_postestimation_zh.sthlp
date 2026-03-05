{smcl}
{* *! version 1.0.4  04jun2018}{...}
{viewerdialog predict "dialog zioprobit_p"}{...}
{vieweralsosee "[R] zioprobit postestimation" "mansection R zioprobitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] zioprobit" "help zioprobit_zh"}{...}
{viewerjumpto "后续估计命令" "zioprobit postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "zioprobit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "zioprobit postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "zioprobit postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "zioprobit postestimation##examples"}
{help zioprobit_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[R] zioprobit postestimation} {hline 2}}zioprobit 的后续估计工具{p_end}
{p2col:}({mansection R zioprobitpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后续估计命令}

{pstd}
在执行 {opt zioprobit} 后可用的后续估计命令如下：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_svy_estat
INCLUDE help post_estimates
INCLUDE help post_forecast_star
INCLUDE help post_hausman_star
INCLUDE help post_lincom
INCLUDE help post_lrtest_star
{synopt:{helpb zioprobit_postestimation##margins:margins}}边际
	均值，预测边际，边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb zioprobit postestimation##predict:predict}}预测，残差，影响统计和其他诊断测量{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 不适合与 {cmd:svy} 估计结果一起使用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R zioprobitpostestimationRemarksandexamples:备注和示例}

        {mansection R zioprobitpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} | {newvar} | {it:{help newvarlist_zh}}{c )-}
{ifin}
[{cmd:,}
{it:statistic}
{opt o:utcome(outcome)}
{opt nooff:set}]

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help newvar_zh}}_reg {it:newvar}_infl {it:newvar}_0
... {it:newvar}_(H-1){c )-}
{ifin}{cmd:,} {opt sc:ores}

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :Main}
{synopt :{opt pm:argin}}边际水平的概率，Pr(y = h)；默认值{p_end}
{synopt :{opt pjoint1}}水平与参与的联合概率，Pr(y = h, s = 1){p_end}
{synopt :{opt pcond1}}在参与情况下的水平概率，Pr(y = h, s = 1){p_end}
{synopt :{opt ppar}}参与概率，Pr(s = 1){p_end}
{synopt :{opt pnpar}}不参与概率，Pr(s = 0){p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt xbinfl}}通货膨胀方程的线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误差{p_end}
{synopt :{opt stdpinfl}}通货膨胀方程的线性预测的标准误差{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
如果您不指定 {cmd:outcome()}，则 {cmd:pmargin} （指定一个新变量时）假设 {cmd:outcome(#1)}。（{p_end}
{p 4 6 2}
您可以使用 {cmd:pmargin}、{cmd:pjoint1} 和 {cmd:pcond1} 指定一个或 k 个新变量，其中 {it:k} 是结果的数量。{p_end}
{p 4 6 2}
您可以使用 {cmd:ppar}、{cmd:pnpar}、{cmd:xb}、{cmd:xbinfl}、{cmd:stdp} 和 {cmd:stdpinfl} 指定一个新变量。{p_end}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测值，如概率、线性预测和标准误差。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt pmargin}，默认值，计算预测的边际概率，Pr(y=h)。

{phang}
{opt pjoint1} 计算结果水平和参与的联合概率，Pr(y=h, s=1)。

{phang}
{opt pcond1} 计算在参与情况下的结果水平的预测概率，Pr(y=h|s=1)。

{pmore}
使用 {opt pmargin}、{opt pjoint1} 和 {opt pcond1}，您可以计算一个或所有结果水平的预测概率。当您指定一个新变量时，{opt predict} 计算第一个结果水平的概率。您可以指定 {cmd:outcome(#}{it:k}{cmd:)} 选项以获取第 {it:k} 个水平的概率。当您指定多个新变量或存根时，{opt predict} 计算所有结果水平的概率。一个新变量的 {opt predict} 行为相当于指定 {cmd:outcome(#1)}。
 
{phang} {opt ppar} 计算参与的预测边际概率，Pr(s=1)。

{phang}
{opt pnpar} 计算不参与的预测边际概率，Pr(s=0)。

{phang}
{opt xb} 计算回归方程的线性预测，如果在 {cmd:zioprobit} 中未指定 {opt offset()}，则为 xb，如果指定了 {cmd:offset()}，则为 xb + offset^b。

{phang}
{opt xbinfl} 计算通货膨胀方程的线性预测，如果在 {opt inflate()} 中未指定 {opt offset()}，则为 z(gamma)，如果在 {opt inflate()} 中指定了 {opt offset()}，则为 z(gamma) + offset^(gamma)。

{phang}
{opt stdp} 计算回归方程的线性预测的标准误差。

{phang}
{opt stdpinfl} 计算通货膨胀方程的线性预测的标准误差。

{phang}
{opt outcome(outcome)} 指定要计算预测概率的结果。 {opt outcome()} 应包含一个因变量的值或一个 {cmd:#1}、{cmd:#2} 等等， {cmd:#1} 意味着因变量的第一个类别， {cmd:#2} 意味着第二个类别，依此类推。 {cmd:outcome()} 仅允许与 {cmd:pmargin}、{cmd:pjoint1} 和 {cmd:pcond1} 一起使用。
 
{marker nooffset}{...}
{phang}
{opt nooffset} 仅在您使用 {opth offset(varname)} 与 {opt zioprobit} 或在 {opt inflate()} 选项中时相关。 该选项修改 {opt predict} 的计算，使其忽略偏移变量；例如，回归方程的线性预测被视为 xb，而不是 xb + offset^b。

{phang}
{opt scores} 计算方程级得分变量。

{pmore}
第一个新变量 {it:{help newvar_zh}}_reg 将包含关于回归方程的对数似然的导数。

{pmore}
第二个新变量 {it:{help newvar_zh}}_infl 将包含关于通货膨胀方程的对数似然的导数。

{pmore}
当因变量有 k 种不同值时，第三个新变量到第 k+1 个新变量将包含关于有序结果方程的对数似然的导数。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt pm:argin}}边际水平的概率，Pr(y = h)；默认值{p_end}
{synopt :{opt pjoint1}}水平与参与的联合概率，Pr(y = h, s = 1){p_end}
{synopt :{opt pcond1}}在参与情况下的水平概率，Pr(y = h, s = 1){p_end}
{synopt :{opt ppar}}参与概率，Pr(s = 1){p_end}
{synopt :{opt pnpar}}不参与概率，Pr(s = 0){p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt xbinfl}}通货膨胀方程的线性预测{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt stdpinfl}}与 {cmd:margins} 不允许{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt pmargin}、{opt pjoint1} 和 {opt pcond1} 默认为第一个结果。
{p_end}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计响应的边际概率和线性预测。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse tobacco}{p_end}
{phang2}{cmd:. zioprobit tobacco education income i.female age, inflate(education income i.parent age i.female i.religion)}{p_end}

{pstd}估计对于具有大学学位（17 年教育）和吸烟父母的个体的性别的预期边际效应，计算非参与的概率（成为真正的非吸烟者）{p_end}
{phang2}{cmd:. margins, predict(pnpar) dydx(female) at(education = 17 parent = 1)}

{pstd}估计在六个预设值（从 $10,000 到 $60,000）上收入的预期边际效应对于不参与的概率{p_end}
{phang2}{cmd:. margins, predict(pnpar) at(income = (1/6))}{p_end}

{pstd}计算在参与情况下消费水平的概率{p_end}
{phang2}{cmd:. predict prcond*, pcond1}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <zioprobit_postestimation.sthlp>}