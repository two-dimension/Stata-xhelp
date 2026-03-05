{smcl}
{* *! version 1.2.5  19oct2017}{...}
{viewerdialog "predict (re/be/fe)" "dialog xtivp_1"}{...}
{viewerdialog "predict (fd)" "dialog xtivp_2"}{...}
{vieweralsosee "[XT] xtivreg postestimation" "mansection XT xtivregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtivreg" "help xtivreg_zh"}{...}
{viewerjumpto "后续估计命令" "xtivreg postestimation##description"}{...}
{viewerjumpto "预测" "xtivreg postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "xtivreg postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "xtivreg postestimation##examples"}
{help xtivreg_postestimation:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[XT] xtivreg postestimation} {hline 2}}xtivreg 的后续估计工具{p_end}
{p2col:}({mansection XT xtivregpostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后续估计命令}

{pstd}
在 {cmd:xtivreg} 之后可用的后续估计命令如下：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{p2coldent:* {bf:{help contrast_zh}}}对估计值的对比和 ANOVA 风格的联合检验{p_end}
包括 help post_estatsum
包括 help post_estatvce
包括 help post_estimates
包括 help post_forecast
包括 help post_hausman
包括 help post_lincom
{synopt:{helpb xtivreg_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际效应{p_end}
包括 help post_marginsplot
包括 help post_nlcom
{synopt :{helpb xtivreg postestimation##predict:predict}}预测、残差、影响统计和其他诊断指标{p_end}
包括 help post_predictnl
{p2coldent:* {bf:{help pwcompare_zh}}}估计值的成对比较{p_end}
包括 help post_test
包括 help post_testnl
{synoptline}
{p2colreset}{...}
{phang}
* {cmd:contrast} 和 {cmd:pwcompare} 不适用于 {cmd:xtivreg, fd}。{p_end}


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{phang}
对于所有但第一个差分估计器

{p 8 16 2}{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,}
{it:{help xtivreg postestimation##stat:statistic}}]


{phang}
第一个差分估计器

{p 8 16 2}{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} 
{it:{help xtivreg postestimation##fdstat:FD_statistic}}]

{marker stat}{...}
{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab:Main}
{synopt :{opt xb}}Z_(it)d，拟合值；默认值{p_end}
{synopt :{opt ue}}u_i + v_it，综合残差{p_end}
{p2coldent :* {opt xbu}}Z_(it)d + v_i，包括效应的预测{p_end}
{p2coldent :* {opt u}}u_i，固定或随机误差成分{p_end}
{p2coldent :* {opt e}}v_it，总体误差成分{p_end}
{synoptline}
{p2colreset}{...}
包括 help unstarred

{marker fdstat}{...}
{synoptset 17 tabbed}{...}
{synopthdr :FD_statistic}
{synoptline}
{syntab:Main}
{synopt :{opt xb}}xb，第一个差分模型的拟合值；默认值{p_end}
{synopt :{opt e}}第一个差分的总体误差成分{p_end}
{synoptline}
{p2colreset}{...}
包括 help esample


包括 help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测的新的变量，例如拟合值和预测。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:Main}

{phang}
{opt xb}，默认情况下，计算线性预测，即 Z_(it)d。

{phang}
{opt ue} 计算 u_i + v_it 的预测。这在第一个差分模型之后不可用。

{phang}
{opt xbu} 计算 Z_(it)d + v_i 的预测，即包括固定或随机成分的预测。这在第一个差分模型之后不可用。

{phang}
{opt u} 计算 u_i 的预测，即估计的固定或随机效应。这在第一个差分模型之后不可用。

{phang}
{opt e} 计算 v_it 的预测。


包括 help syntax_margins1

{phang}
对于所有但第一个差分估计器

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt xb}}Z_(it)d，拟合值；默认值{p_end}
{synopt :{opt ue}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt xbu}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt u}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt e}}与 {cmd:margins} 不允许{p_end}
{synoptline}
{p2colreset}{...}

{phang}
第一个差分估计器

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt xb}}xb，第一个差分模型的拟合值；默认值{p_end}
{synopt :{opt e}}与 {cmd:margins} 不允许{p_end}
{synoptline}
{p2colreset}{...}

包括 help notes_margins


包括 help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计拟合值的响应边际。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse nlswork}{p_end}

{pstd}拟合工具变量固定效应模型{p_end}
{phang2}{cmd:. xtivreg ln_wage age (ttl_exp = tenure grade), fe}{p_end}

{pstd}保存估计结果以供后续使用{p_end}
{phang2}{cmd:. estimates store iv}{p_end}

{pstd}拟合 OLS 固定效应模型{p_end}
{phang2}{cmd:. xtreg ln_wage age ttl_exp, fe}{p_end}

{pstd}执行 Hausman 测试，将一致但可能效率低下的 IV 回归与也许高效但可能不一致的 OLS 回归进行比较{p_end}
{phang2}{cmd:. hausman iv .}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtivreg_postestimation.sthlp>}