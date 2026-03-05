{smcl}
{* *! version 1.0.0  21jun2019}{...}
{vieweralsosee "[LASSO] lasso inference postestimation" "mansection lasso lassoinferencepostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[LASSO] Lasso inference intro" "mansection lasso Lassoinferenceintro"}{...}
{vieweralsosee "[LASSO] Inference examples" "mansection lasso Inferenceexamples"}{...}
{vieweralsosee "[LASSO] dslogit" "help dslogit_zh"}{...}
{vieweralsosee "[LASSO] dspoisson" "help dspoisson_zh"}{...}
{vieweralsosee "[LASSO] dsregress" "help dsregress_zh"}{...}
{vieweralsosee "[LASSO] poivregress" "help poivregress_zh"}{...}
{vieweralsosee "[LASSO] pologit" "help pologit_zh"}{...}
{vieweralsosee "[LASSO] popoisson" "help popoisson_zh"}{...}
{vieweralsosee "[LASSO] poregress" "help poregress_zh"}{...}
{vieweralsosee "[LASSO] xpoivregress" "help xpoivregress_zh"}{...}
{vieweralsosee "[LASSO] xpologit" "help xpologit_zh"}{...}
{vieweralsosee "[LASSO] xpopoisson" "help xpopoisson_zh"}{...}
{vieweralsosee "[LASSO] xporegress" "help xporegress_zh"}{...}
{viewerjumpto "Postestimation commands" "lasso_inference_postestimation_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "lasso_inference_postestimation_zh##linkspdf"}{...}
{viewerjumpto "Predictions" "lasso inference postestimation##syntax_predict"}
{help lasso_inference_postestimation:English Version}
{hline}{...}
{p2colset 1 43 45 2}{...}
{p2col:{bf:[LASSO] lasso inference postestimation} {hline 2}}Lasso推断模型的后估计工具{p_end}
{p2col:}({mansection LASSO lassoinferencepostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
以下后估计命令在执行 {cmd:ds}、{cmd:po} 和 {cmd:xpo} 命令后特别重要：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{p2coldent:* {help coefpath_zh}}绘制系数路径{p_end}
{p2coldent:* {help cvplot_zh}}绘制交叉验证函数{p_end}
{synopt :{help lassocoef_zh}}显示选定系数{p_end}
{synopt :{help lassoinfo_zh}}有关lasso估计结果的信息{p_end}
{synopt :{help lassoknots_zh}}系数选择和拟合度量的节点表{p_end}
{p2coldent:* {help lassoselect_zh}}选择备用lambda*（以及{cmd:elasticnet}的alpha*）{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:coefpath}、{cmd:cvplot}和{cmd:lassoselect}要求lasso的选择方法为 {cmd:selection(cv)} 或 {cmd:selection(adaptive)}。 请参见 {manhelp lasso_options LASSO:lasso options}。

{pstd}
以下标准后估计命令也可用：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatsum
INCLUDE help post_estatvce
{synopt :{help estimates_zh}}对估计结果进行分类{p_end}
{synopt :{help lincom_zh}}线性组合系数的点估计、标准误、检验和推断{p_end}
{synopt :{help nlcom_zh}}非线性组合系数的点估计、标准误、检验和推断{p_end}
{synopt :{helpb lasso inference postestimation##predict:predict}}预测{p_end}
{synopt :{help predictnl_zh}}广义预测的点估计{p_end}
INCLUDE help post_pwcompare
{synopt :{help test_zh}}对简单和复合线性假设的Wald检验{p_end}
{synopt :{help testnl_zh}}对非线性假设的Wald检验{p_end}
{synoptline}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection LASSO lassoinferencepostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker predict}{...}
{marker syntax_predict}{...}
{title:预测的语法}

{p 8 19 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含线性形式 X hat beta'，其中 hat beta 是变量的估计系数向量，不包括常数项。这是执行 {cmd:ds}、{cmd:po} 和 {cmd:xpo} 命令后可用的唯一类型的预测。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lasso_inference_postestimation.sthlp>}