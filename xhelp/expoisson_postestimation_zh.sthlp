{smcl}
{* *! version 1.2.3  19oct2017}{...}
{viewerdialog estat "dialog expoisson_estat"}{...}
{vieweralsosee "[R] expoisson postestimation" "mansection R expoissonpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] expoisson" "help expoisson_zh"}{...}
{viewerjumpto "后估计命令" "expoisson postestimation##description"}{...}
{viewerjumpto "链接到 PDF 文档" "expoisson_postestimation_zh##linkspdf"}{...}
{viewerjumpto "estat" "expoisson postestimation##syntax_estat_se"}{...}
{viewerjumpto "示例" "expoisson postestimation##examples"}
{help expoisson_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[R] expoisson postestimation} {hline 2}}expoisson 的后估计工具{p_end}
{p2col:}({mansection R expoissonpostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {cmd:expoisson} 之后，以下后估计命令尤其重要：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb expoisson postestimation##estatse:estat se}}报告系数或 IRR 及其渐近标准误{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后估计命令也可用：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 help post_estatsum
包含 help post_estimates
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection R expoissonpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_estat_se}{...}
{marker estatse}{...}
{title:estat 语法}

{p 8 14 2}
{cmd:estat} {opt se}  
[{cmd:,} {cmd:irr}]


包含 help menu_estat


{marker des_estat}{...}
{title:estat 的描述}

{pstd}
{cmd:estat se} 报告回归系数或发生率的渐近标准误。估计值存储在矩阵 {cmd:r(estimates)} 中。


{marker option_estat_se}{...}
{title:estat se 的选项}

{phang}
{cmd:irr} 请求报告发生率比及其渐近标准误。默认是报告系数及其渐近标准误。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse smokes}

{pstd}对 {cmd:cases} 与 {cmd:smokes} 进行确切的 Poisson 回归，使用暴露 {cmd:peryrs}{p_end}
{phang2}{cmd:. expoisson cases smokes, exposure(peryrs) irr}{p_end}

{pstd}报告估计的发生率及其渐近标准误{p_end}
{phang2}{cmd:. estat se, irr}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <expoisson_postestimation.sthlp>}