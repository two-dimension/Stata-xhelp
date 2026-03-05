{smcl}
{* *! version 1.1.5  14may2018}{...}
{viewerdialog "fp plot" "dialog fp_plot"}{...}
{viewerdialog "fp predict" "dialog fp_predict"}{...}
{vieweralsosee "[R] fp postestimation" "mansection R fppostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] fp" "help fp_zh"}{...}
{viewerjumpto "后估计命令" "fp postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "fp_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "fp postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "fp postestimation##syntax_margins"}{...}
{viewerjumpto "fp 绘图和 fp 预测" "fp postestimation##syntax_predictplot"}{...}
{viewerjumpto "示例" "fp postestimation##examples"}
{help fp_postestimation:English Version}
{hline}{...}
{p2colset 1 26 32 2}{...}
{p2col:{bf:[R] fp postestimation} {hline 2}}后估计工具 fp{p_end}
{p2col:}({mansection R fppostestimation:查看完整的 PDF 文档条目}){p_end}
{p2colreset}{...}

{marker description}{...}
{title:后估计命令}

{pstd}
以下后估计命令在 {cmd:fp} 后特别有用：

{synoptset 16}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb fp postestimation##syntax_predictplot:fp 绘图}}最近拟合的分数多项式模型的成分加残差图{p_end}
{synopt :{helpb fp postestimation##syntax_predictplot:fp 预测}}创建包含分数多项式的预测或标准误的变量{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
如果在 {it: est_cmd} 后可用，则还可以使用以下标准后估计命令：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含帮助 post_contrast
包含帮助 post_estatic
包含帮助 post_estatsum
包含帮助 post_estatvce
包含帮助 post_estimates
包含帮助 post_forecast
包含帮助 post_hausman
包含帮助 post_lincom
包含帮助 post_linktest
包含帮助 post_lrtest
{synopt:{helpb fp_postestimation##margins:margins}}边际均值、预测边际、边际效应及平均边际效应{p_end}
包含帮助 post_marginsplot
包含帮助 post_nlcom
{synopt :{helpb fp postestimation##predict:预测}}预测、残差、影响统计及其他诊断措施{p_end}
包含帮助 post_predictnl
包含帮助 post_pwcompare
包含帮助 post_suest
包含帮助 post_test
包含帮助 post_testnl
{synoptline}
{p2colreset}{...}

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R fppostestimationRemarksandexamples:备注和示例}

        {mansection R fppostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。

{marker syntax_predict}{...}
{marker predict}{...}
{title:预测}

{pstd}
{cmd:predict} 在 {cmd:fp} 后的行为由 {it:est_cmd} 决定。有关可用的 {cmd:predict} 选项，请参见相应的 {it:est_cmd} 后估计条目。

{pstd}
另请参见下面关于 {cmd:fp 预测} 的信息。

{marker syntax_margins}{...}
{marker margins}{...}
{title:边际}

{pstd}
{cmd:margins} 在 {cmd:fp} 后的行为由 {it:est_cmd} 决定。有关可用的 {cmd:margins} 选项，请参见相应的 {it:est_cmd} 后估计条目。

{marker syntax_predictplot}{...}
{title:fp 绘图和 fp 预测的语法}

{phang}
最近拟合的分数多项式模型的成分加残差图

{p 8 16 2}
{cmd:fp} {cmd:plot} {ifin}{cmd:,} {opt r:esiduals(res_option)}
[{it:{help fp postestimation##graph_options:graph_options}}]

{phang}
创建包含分数多项式的预测或标准误的变量

{p 8 16 2}
{cmd:fp} {cmd:predict} {dtype} {newvar} {ifin}
[{cmd:,} {it:{help fp postestimation##predict_options:predict_options}}]

{marker graph_options}{...}
{synoptset 27 tabbed}{...}
{synopthdr:图形选项}
{synoptline}
{syntab:主要}
{p2coldent :* {opt r:esiduals(res_option)}}{...}
    指定在 {it:est_cmd} 后 {cmd:predict} 中使用的残差选项名称，或
    {cmd:residuals(none)} 如果不想绘制残差{p_end}
{synopt :{opt eq:uation(eqno)}}{...}
    指定方程{p_end}
{synopt :{opt l:evel(#)}}{...}
    设置置信水平；默认值为 {cmd:level(95)}{p_end}

{syntab :绘图}
{synopt :{opth plotop:ts(scatter:scatter_options)}}{...}
    影响成分加残差散点的呈现{p_end}

{syntab :拟合线}
{synopt :{opth lineop:ts(cline_options)}}{...}
    影响拟合线的呈现{p_end}

{syntab :置信区间图}
{synopt :{opth ciop:ts(area_options)}}{...}
    影响置信带的呈现{p_end}

{syntab :添加图}
{synopt :{opth "addplot(addplot_option:plot)"}}{...}
    向生成的图中添加其他图形{p_end}

{syntab :Y 轴、X 轴、标题、图例、整体}
{synopt :{it:twoway_options}}{...}
    在 {manhelpi twoway_options G-3} 中文档化的任何选项，但不包括 {opt by()}。这包括图的标题选项（请参见 {manhelpi title_options G-3}）和将图保存到磁盘的选项（请参见 {manhelpi saving_option G-3}）。

{marker options_fp_predict}{...}
{title:fp 预测的选项}

{dlgtab:主要}

{phang}
{opt fp} 计算分数多项式，线性预测其他变量设置为零。这是默认值。

{phang}
{opt stdp} 计算分数多项式的标准误。

{phang}
{opt equation(eqno)}
    仅当您之前在 {it:est_cmd} 中拟合了多方程模型时才相关。它指定您所指的方程。

{pmore}
    {cmd:equation(#1)} 意味着计算将应用于第一个方程，{cmd:equation(#2)} 意味着第二个，依此类推。您也可以通过它们的名称引用方程：
    {cmd:equation(income)} 将引用方程名 {cmd:income}，
    而 {cmd:equation(hours)} 将引用名为 {cmd:hours} 的方程。

{pmore}
    如果您不指定 {cmd:equation()}，结果和您指定 {cmd:equation(#1)} 时是一样的。

{marker examples}{...}
{title:示例}

{phang}设置{p_end}
{phang2}{cmd:. webuse igg}{p_end}

{phang}拟合最佳的二阶分数多项式回归模型{p_end}
{phang2}{cmd:. fp <age>: regress sqrtigg <age>}{p_end}

{phang}生成成分加残差图以评估模型的拟合度{p_end}
{phang2}{cmd:. fp plot, r(residuals)}{p_end}

{phang}预测分数多项式的标准误{p_end}
{phang2}{cmd:. fp predict se, stdp}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fp_postestimation.sthlp>}