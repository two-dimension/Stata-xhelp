{smcl}
{* *! version 1.0.7  19oct2017}{...}
{vieweralsosee "[R] pwmean postestimation" "mansection R pwmeanpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] pwmean" "help pwmean_zh"}{...}
{viewerjumpto "Postestimation commands" "pwmean postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "pwmean_postestimation_zh##linkspdf"}{...}
{viewerjumpto "Example" "pwmean postestimation##example"}
{help pwmean_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[R] pwmean postestimation} {hline 2}}pwmean 的后续估计工具{p_end}
{p2col:}({mansection R pwmeanpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后续估计命令}

{pstd}
在执行 {cmd:pwmean} 后，可以使用以下后续估计命令：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_lincom
INCLUDE help post_nlcom
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R pwmeanpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse yield}{p_end}

{pstd}各对肥料的平均产量的成对比较{p_end}
{phang2}{cmd:. pwmean yield, over(fertilizer)}{p_end}

{pstd}检验肥料 4 的平均产量是否比肥料 5 的平均产量大 10%{p_end}
{phang2}
{cmd:. testnl (_b[4.fertilizer] - _b[5.fertilizer])/_b[5.fertilizer] = 0.1}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <pwmean_postestimation.sthlp>}