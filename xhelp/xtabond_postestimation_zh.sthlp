{smcl}
{* *! version 1.2.5  23oct2017}{...}
{viewerdialog predict "dialog xtdpd_p"}{...}
{viewerdialog estat "dialog xtdpd_estat"}{...}
{vieweralsosee "[XT] xtabond postestimation" "mansection XT xtabondpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtabond" "help xtabond_zh"}{...}
{viewerjumpto "后估计命令" "xtabond postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "xtabond_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "xtabond postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "xtabond postestimation##syntax_margins"}{...}
{viewerjumpto "estat" "xtabond postestimation##syntax_estat"}{...}
{viewerjumpto "示例" "xtabond postestimation##examples"}
{help xtabond_postestimation:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[XT] xtabond postestimation} {hline 2}}xtabond 的后估计工具{p_end}
{p2col:}({mansection XT xtabondpostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
以下后估计命令在 {cmd:xtabond} 后特别重要：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb xtabond postestimation##estatabond:estat abond}}自相关检验{p_end}
{synopt :{helpb xtabond postestimation##estatsargan:estat sargan}}Sargan 检验
超识别约束{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后估计命令也可用：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 help post_estatsum
包含 help post_estatvce
包含 help post_estimates
包含 help post_forecast
包含 help post_hausman
包含 help post_lincom
{synopt:{helpb xtabond_postestimation##margins:margins}}边际
	均值，预测边际，边际效应和平均边际
	效应{p_end}
包含 help post_marginsplot
包含 help post_nlcom
{p2col :{helpb xtabond postestimation##predict:predict}}预测、残差、
	影响统计和其他诊断措施{p_end}
包含 help post_predictnl
包含 help post_test
包含 help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtabondpostestimationRemarksandexamples:备注和示例}

        {mansection XT xtabondpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在本帮助文件中。



包含 help xtdpd_predict


包含 help xtdpd_margins


包含 help xtdpd_estat


包含 help xtdpd_postspecial2b


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse abdata}{p_end}

{pstd}拟合模型并获取默认自回归检验{p_end}
{phang2}{cmd:. xtabond n w k, twostep}{p_end}
{phang2}{cmd:. estat abond}{p_end}

{pstd}请求比原始计算更高的阶数{p_end}
{phang2}{cmd:. estat abond, artests(3)}{p_end}

{pstd}获取 Sargan 检验{p_end}
{phang2}{cmd:. estat sargan}{p_end}

{pstd}计算线性预测{p_end}
{phang2}{cmd:. predict nhat, xb}

{pstd}拟合一个模型，包括 {cmd:w} 和 {cmd:w} 的第一个滞后作为
回归变量，获取 Windmeijer 修正的稳健 VCE，然后检验
{cmd:w} 和 {cmd:L.w} 的联合显著性{p_end}
{phang2}{cmd:. xtabond n L(0/1).w k, twostep vce(robust)}{p_end}
{phang2}{cmd:. test w = 0, notest}{p_end}
{phang2}{cmd:. test L.w = 0, accumulate}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtabond_postestimation.sthlp>}