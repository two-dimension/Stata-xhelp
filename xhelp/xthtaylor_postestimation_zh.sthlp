{smcl}
{* *! version 1.2.5  19oct2017}{...}
{viewerdialog predict "dialog xtht_p"}{...}
{vieweralsosee "[XT] xthtaylor postestimation" "mansection XT xthtaylorpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xthtaylor" "help xthtaylor_zh"}{...}
{viewerjumpto "后估计命令" "xthtaylor postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "xthtaylor_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "xthtaylor postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "xthtaylor postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "xthtaylor postestimation##examples"}
{help xthtaylor_postestimation:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[XT] xthtaylor postestimation} {hline 2}}xthtaylor 的后估计工具{p_end}
{p2col:}({mansection XT xthtaylorpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在执行 {cmd:xthtaylor} 后，可以使用以下后估计命令：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 help post_estatsum
包含 help post_estatvce
包含 help post_estimates
包含 help post_forecast
包含 help post_hausman
包含 help post_lincom
{synopt:{helpb xthtaylor_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际效应{p_end}
包含 help post_marginsplot
包含 help post_nlcom
{synopt :{helpb xthtaylor postestimation##predict:predict}}预测、残差、影响统计量和其他诊断措施{p_end}
包含 help post_predictnl
包含 help post_test
包含 help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection XT xthtaylorpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic}]

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab:主要}
{synopt :{opt xb}}B*x[i,t] + G*z[i] 拟合值；默认值{p_end}
{synopt :{opt stdp}}拟合值的标准误{p_end}
{synopt :{opt ue}}u[i] + e[i,t]，组合残差{p_end}
{p2coldent :* {opt xbu}}B*x[i,t] + G*z[i] + u[i]，包含效应的预测{p_end}
{p2coldent :* {opt u}}u[i]，随机误差成分{p_end}
{p2coldent :* {opt e}}e[i,t]，特有误差成分的预测{p_end}
{synoptline}
{p2colreset}{...}
包含 help unstarred


包含 help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测的新变量，例如
拟合值、标准误、组合残差、预测、随机误差成分和特有误差成分。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb}，默认，计算线性预测，
即 B*x[i,t] + G*z[i]。

{phang}
{opt stdp} 计算线性预测的标准误。

{phang}
{opt ue} 计算 u[i] + e[i,t] 的预测。

{phang}
{opt xbu} 计算 B*x[i,t] + G*z[i] + u[i] 的预测，即
包含随机效应的预测。

{phang}
{opt u} 计算 u[i] 的预测，即估计的
随机效应。

{phang}
{opt e} 计算 e[i,t] 的预测。


包含 help syntax_margins1

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt xb}}B*x[i,t] + G*z[i] 拟合值；默认值{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不兼容{p_end}
{synopt :{opt ue}}与 {cmd:margins} 不兼容{p_end}
{synopt :{opt xbu}}与 {cmd:margins} 不兼容{p_end}
{synopt :{opt u}}与 {cmd:margins} 不兼容{p_end}
{synopt :{opt e}}与 {cmd:margins} 不兼容{p_end}
{synoptline}
{p2colreset}{...}

包含 help notes_margins


包含 help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计拟合值的反应边际。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse psidextract}{p_end}
{phang2}{cmd:. xthtaylor lwage wks south smsa ms exp exp2 occ ind union fem}
                {cmd:blk ed, endog(exp exp2 occ ind union ed) i(id)}{p_end}

{pstd}测试 {cmd:fem} 的系数是否等于 0{p_end}
{phang2}{cmd:. test fem = 0}

{pstd}测试 {cmd:fem} 和 {cmd:blk} 的系数是否共同等于 0
{p_end}
{phang2}{cmd:. test blk = 0, accumulate}

{pstd}线性预测{p_end}
{phang2}{cmd:. predict xb}

{pstd}包含随机效应的线性预测{p_end}
{phang2}{cmd:. predict xbandre, xbu}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xthtaylor_postestimation.sthlp>}