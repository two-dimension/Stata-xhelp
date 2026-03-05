{smcl}
{* *! version 1.2.7  23oct2017}{...}
{viewerdialog predict "dialog xtdpd_p"}{...}
{viewerdialog estat "dialog xtdpd_estat"}{...}
{vieweralsosee "[XT] xtdpdsys postestimation" "mansection XT xtdpdsyspostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtdpdsys" "help xtdpdsys_zh"}{...}
{viewerjumpto "后期估计命令" "xtdpdsys postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "xtdpdsys_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "xtdpdsys postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "xtdpdsys postestimation##syntax_margins"}{...}
{viewerjumpto "estat" "xtdpdsys postestimation##syntax_estat"}{...}
{viewerjumpto "示例" "xtdpdsys postestimation##examples"}
{help xtdpdsys_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[XT] xtdpdsys postestimation} {hline 2}}xtdpdsys 的后期估计工具{p_end}
{p2col:}({mansection XT xtdpdsyspostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后期估计命令}

{pstd}
在 {cmd:xtdpdsys} 之后，以下后期估计命令特别重要：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb xtdpdsys postestimation##estatabond:estat abond}}检验自相关{p_end}
{synopt :{helpb xtdpdsys postestimation##estatsargan:estat sargan}}Sargan 过度识别限制检验{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后期估计命令也可用：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含帮助 post_estatsum
包含帮助 post_estatvce
包含帮助 post_estimates
包含帮助 post_forecast
包含帮助 post_hausman
包含帮助 post_lincom
{synopt:{helpb xtdpdsys_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包含帮助 post_marginsplot
包含帮助 post_nlcom
{p2col :{helpb xtdpdsys postestimation##predict:predict}}预测、残差、影响统计量及其他诊断措施{p_end}
包含帮助 post_predictnl
包含帮助 post_test
包含帮助 post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtdpdsyspostestimationRemarksandexamples:备注和示例}

        {mansection XT xtdpdsyspostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


包含帮助 xtdpd_predict


包含帮助 xtdpd_margins


包含帮助 xtdpd_estat


包含帮助 xtdpd_postspecial2c


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse abdata}{p_end}
{phang2}{cmd:. xtdpdsys n w k, vce(robust)}{p_end}

{pstd}获取默认自相关检验{p_end}
{phang2}{cmd:. estat abond}{p_end}

{pstd}请求比原先计算的更高阶数{p_end}
{phang2}{cmd:. estat abond, artests(3)}{p_end}

{pstd}获取 Sargan 检验{p_end}
{phang2}{cmd:. estat sargan}{p_end}

{pstd}计算线性预测{p_end}
{phang2}{cmd:. predict nhat, xb}

{pstd}检验 {cmd:w} 的一阶差分与 {cmd:w} 的滞后一阶差分的系数是否共同为零{p_end}
{phang2}{cmd:. test w = 0, notest}{p_end}
{phang2}{cmd:. test k = 0, accumulate}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtdpdsys_postestimation.sthlp>}