{smcl}
{* *! version 1.2.5  19sep2018}{...}
{viewerdialog predict "dialog vec_p"}{...}
{vieweralsosee "[TS] vec postestimation" "mansection TS vecpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] vec" "help vec_zh"}{...}
{vieweralsosee "[TS] vec intro" "help vec_intro_zh"}{...}
{viewerjumpto "Postestimation commands" "vec postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "vec_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "vec postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "vec postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "vec postestimation##examples"}
{help vec_postestimation:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[TS] vec postestimation} {hline 2}} vec 的后估计工具{p_end}
{p2col:}({mansection TS vecpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在执行 {cmd:vec} 后，以下后估计命令特别重要：

{synoptset 19}{...}
{p2col :命令}描述{p_end}
{synoptline}
{synopt :{helpb fcast compute}}获取动态预测{p_end}
{synopt :{helpb fcast graph}}绘制从 {cmd:fcast compute} 获得的动态预测图{p_end}
{synopt :{help irf_zh}}创建和分析 IRF 和 FEVD{p_end}
{synopt :{help veclmar_zh}}对残差进行自相关的 LM 检验{p_end}
{synopt :{help vecnorm_zh}}检验残差的正态分布{p_end}
{synopt :{help vecstable_zh}}检查估计的稳定性条件{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后估计命令也可用：

{synoptset 19}{...}
{p2col :命令}描述{p_end}
{synoptline}
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast
INCLUDE help post_lincom
INCLUDE help post_lrtest
{synopt:{helpb vec_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb vec postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
{synopt :{help predictnl_zh}}点估计、标准误、检验和广义预测的推断{p_end}
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS vecpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 19 2}
{cmd:predict} {dtype} {newvar} {ifin} 
  [{cmd:,} {it:statistic}
 {opt eq:uation}{cmd:(}{it:eqno}|{it:eqname}{cmd:)}]

{synoptset 19 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:Main}
{synopt :{cmd:xb}}指定方程的拟合值；默认值{p_end}
{synopt :{cmd:stdp}}线性预测的标准误{p_end}
{synopt :{opt r:esiduals}}残差{p_end}
{synopt :{cmd:ce}}指定协整方程的预测值{p_end}
{synopt :{opt l:evels}}内生变量水平的一步预测{p_end}
{synopt :{opth u:sece(varlist:varlist_ce)}}使用先前预测的协整方程计算预测{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}这些统计量在样本内和样本外都可用；如果仅想要估计样本的结果，请输入
{cmd:predict} {it:...} {cmd:if} {cmd:e(sample)} {it:...}。


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测的新的变量，例如期望值、残差和协整方程。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:Main}

{phang}
{opt xb}，默认情况下，计算指定方程的拟合值。 VECM 的形式意味着这些拟合值是对第一差分变量的一步预测。

{phang}
{opt stdp} 计算指定方程线性预测的标准误。

{phang}
{opt residuals} 计算指定方程的 VECM 残差。

{phang}
{opt ce} 计算指定协整方程的预测值。

{phang}
{opt levels} 计算请求方程内生变量水平的一步预测。

{phang}
{opth usece:(varlist:varlist_ce)} 指定使用 {it:varlist_ce} 中名称保存的先前预测的协整方程来计算预测。 {it:varlist_ce} 中的变量数量必须等于模型中指定的协整方程的数量。

{phang}
{opt equation(eqno|eqname)} 指定您所指的方程。

{pmore}
{opt equation()} 用一个 {it:eqno} 或 {it:eqname} 填充 {opt xb}、{opt residuals}、{opt stdp}、{opt ce} 和 {opt levels} 选项。 {cmd:equation(#1}) 意味着计算将针对第一方程进行， {cmd:equation(#2)} 意味着第二个方程，以此类推。您还可以通过其名称引用方程。 {cmd:equation(D_income)} 指向名为 D_income 的方程，而 {cmd:equation(_ce1)} 指向由 {cmd:vec} 命名的第一个协整方程，名为 _ce1。

{pmore}
如果您未指定 {opt equation()}，则结果如同您指定了 {cmd:equation(#1)}。

{phang}
有关在多个方程估计命令后使用 {cmd:predict} 的更多信息，请参见 {manhelp predict R}。


INCLUDE help syntax_margins

{synoptset 19}{...}
{synopthdr :statistic}
{synoptline}
{synopt:default}每个方程的线性预测{p_end}
{synopt:{opt xb}}指定方程的线性预测{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不兼容{p_end}
{synopt :{opt r:esiduals}}与 {cmd:margins} 不兼容{p_end}
{synopt :{opt ce}}与 {cmd:margins} 不兼容{p_end}
{synopt :{opt l:evels}}与 {cmd:margins} 不兼容{p_end}
{synopt :{opt u:sece(varlist_ce)}}与 {cmd:margins} 不兼容{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt xb} 默认为第一个方程。
{p_end}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:margins 的描述}

{pstd}
{cmd:margins} 估计线性预测的响应边际。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse urates}

{pstd}拟合 VECM，包括模型中的限制常数，使用 2 个协整方程{p_end}
{phang2}{cmd:. vec missouri indiana kentucky illinois, trend(rconstant) rank(2)}
{p_end}

{pstd}在 {cmd:vec} 之后检验干扰的正态分布{p_end}
{phang2}{cmd:. vecnorm}{p_end}

{pstd}执行残差自相关的拉格朗日乘数检验{p_end}
{phang2}{cmd:. veclmar}{p_end}

{pstd}估计 IRF 和 FEVD，使用 50 作为预测范围，并保存到 {cmd:vec1} 中的 {cmd:vecirfs.irf}{p_end}
{phang2}{cmd:. irf create vec1, set(vecirfs) step(50)}{p_end}

{pstd}绘制正交脉冲响应函数{p_end}
{phang2}{cmd:. irf graph oirf}{p_end}

{pstd}计算协整方程的预测值{p_end}
{phang2}{cmd:. predict ce, ce}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <vec_postestimation.sthlp>}