{smcl}
{* *! version 1.2.5  23oct2017}{...}
{viewerdialog predict "dialog xtdpd_p"}{...}
{viewerdialog estat "dialog xtdpd_estat"}{...}
{vieweralsosee "[XT] xtdpd postestimation" "mansection XT xtdpdpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtdpd" "help xtdpd_zh"}{...}
{viewerjumpto "后估计命令" "xtdpd postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "xtdpd_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "xtdpd postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "xtdpd postestimation##syntax_margins"}{...}
{viewerjumpto "estat" "xtdpd postestimation##syntax_estat"}{...}
{viewerjumpto "示例" "xtdpd postestimation##examples"}
{help xtdpd_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[XT] xtdpd postestimation} {hline 2}}xtdpd 的后估计工具{p_end}
{p2col:}({mansection XT xtdpdpostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {cmd:xtdpd} 之后，以下后估计命令特别重要：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb xtdpd postestimation##estatabond:estat abond}}自相关测试{p_end}
{synopt :{helpb xtdpd postestimation##estatsargan:estat sargan}}Sargan 过度识别限制检验{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后估计命令也可用：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast
INCLUDE help post_hausman
INCLUDE help post_lincom
{synopt:{helpb xtdpd_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{p2col :{helpb xtdpd postestimation##predict:predict}}预测、残差、影响统计量和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtdpdpostestimationRemarksandexamples:备注和示例}

        {mansection XT xtdpdpostestimationMethodsandformulas:方法和公式}

{pstd}
上述章节未包含在此帮助文件中。


INCLUDE help xtdpd_predict


INCLUDE help xtdpd_margins


INCLUDE help xtdpd_estat


INCLUDE help xtdpd_postspecial2c


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse abdata}{p_end}

{pstd}拟合模型并获取默认的 AR 测试{p_end}
{phang2}{cmd:. xtdpd l(0/1).(n w), dgmmiv(n) lgmmiv(n) div(w) vce(robust)}{p_end}
{phang2}{cmd:. estat abond}{p_end}

{pstd}请求计算比最初计算的更高阶{p_end}
{phang2}{cmd:. estat abond, artests(3)}{p_end}

{pstd}计算水平的线性预测{p_end}
{phang2}{cmd:. predict xb, xb}

{pstd}计算第一差分的残差{p_end}
{phang2}{cmd:. predict de, e difference}

{pstd}检验线性假设{p_end}
{phang2}{cmd:. test w = 0}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtdpd_postestimation.sthlp>}