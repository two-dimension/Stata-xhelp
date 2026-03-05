{smcl}
{* *! version 1.1.16  19oct2017}{...}
{viewerdialog predict "dialog boxcox_p"}{...}
{vieweralsosee "[R] boxcox 后处理" "mansection R boxcoxpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] boxcox" "help boxcox_zh"}{...}
{viewerjumpto "后处理命令" "boxcox postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "boxcox_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "boxcox postestimation##syntax_predict"}{...}
{viewerjumpto "备注" "boxcox postestimation##remarks"}{...}
{viewerjumpto "示例" "boxcox postestimation##examples"}{...}
{viewerjumpto "参考文献" "boxcox postestimation##reference"}
{help boxcox_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[R] boxcox 后处理} {hline 2}}boxcox 的后处理工具{p_end}
{p2col:}({mansection R boxcoxpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后处理命令}

{pstd}
在运行 {cmd:boxcox} 之后，可以使用以下后处理命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_hausman
{p2coldent:* {bf:{help lincom_zh}}}对系数的线性组合进行点估计、标准误差、检验和推断{p_end}
{p2coldent:* {bf:{help nlcom_zh}}}对系数的非线性组合进行点估计、标准误差、检验和推断{p_end}
{synopt :{helpb boxcox postestimation##predict:预测}}预测、残差、影响统计和其他诊断措施{p_end}
{p2coldent:* {help test_zh}}对简单和复合线性假设进行瓦尔德检验{p_end}
{p2coldent:* {help testnl_zh}}对非线性假设进行瓦尔德检验{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* 推断仅对涉及 lambda 和 theta 的假设有效。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R boxcoxpostestimationRemarksandexamples:备注和示例}

        {mansection R boxcoxpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic} {it:options}]

{synoptset 17 tabbed}
{synopthdr:统计量}
{synoptline}
{syntab :主要}
{synopt :{opt yhat}}被预测的 y 值；默认值{p_end}
{synopt :{opt res:iduals}}残差{p_end}
{synoptline}

{synopthdr}
{synoptline}
{syntab :选项}
{synopt :{opt smear:ing}}使用涂抹方法计算统计量；默认值{p_end}
{synopt :{opt bt:ransform}}使用回归转换方法计算统计量{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测值，例如被预测值和残差。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt yhat}，默认情况下，计算因变量的预测值。

{phang}
{opt residuals} 计算残差，即观察值减去预测值。

{dlgtab:选项}

{phang}
{cmd:smearing} 使用 {cmd:yhat} 和 {cmd:residuals} 计算统计量，采用{help boxcox postestimation##D1983:Duan (1983)}提出的涂抹方法（有关此方法的描述，请参见 {mansection R boxcoxpostestimationMethodsandformulas:{it:方法和公式}}）。 {cmd:smearing} 是默认选项。

{phang}
{cmd:btransform} 使用回归转换方法计算统计量 {cmd:yhat} 和 {cmd:residuals}（有关此方法的描述，请参见 {mansection R boxcoxpostestimationMethodsandformulas:{it:方法和公式}}）。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:boxcox} 仅估计 lambda 和 theta 参数的方差（请参见 {mansection R boxcoxRemarksandexamplestechnote:技术说明} 在 {hi:[R] boxcox} 中），因此，跟随 {cmd:boxcox} 使用后处理命令的范围有限。
在 {cmd:lincom}、{cmd:nlcom}、{cmd:test} 和 {cmd:testnl} 中使用的公式依赖于估计的方差。因此，这些命令的使用是有限的，并且通常仅适用于对 lambda 和 theta 系数的推断。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse nhanes2}{p_end}
{phang2}{cmd:. boxcox bpdiast bmi tcresult, notrans(age sex) model(theta)}
        {cmd:lrtest}{p_end}

{pstd}使用默认的涂抹方法计算预测值{p_end}
{phang2}{cmd:. predict yhat}

{pstd}使用回归转换方法计算预测值{p_end}
{phang2}{cmd:. predict yhatb, btransform}{p_end}


{marker reference}{...}
{title:参考文献}

{marker D1983}{...}
{phang}
Duan, N. 1983. Smearing estimate: A nonparametric retransformation method.
{it:美国统计学会杂志} 78: 605-610.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <boxcox_postestimation.sthlp>}