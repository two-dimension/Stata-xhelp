{smcl}
{* *! version 1.1.9  27dec2018}{...}
{vieweralsosee "[R] proportion postestimation" "mansection R proportionpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] proportion" "help proportion_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy postestimation" "help svy_postestimation_zh"}{...}
{viewerjumpto "Postestimation commands" "proportion postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "proportion_postestimation_zh##linkspdf"}{...}
{viewerjumpto "Example" "proportion postestimation##example"}
{help proportion_postestimation:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[R] proportion postestimation} {hline 2}}比例的事后工具{p_end}
{p2col:}({mansection R proportionpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:事后估计命令}

{pstd}
在执行 {cmd:proportion} 后可用的事后估计命令如下：

{synoptset 11}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatvce
INCLUDE help post_svy_estat
INCLUDE help post_estimates
INCLUDE help post_lincom
{synopt :{help marginsplot_zh}}绘制 proportion 结果的图{p_end}
INCLUDE help post_nlcom
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R proportionpostestimationRemarksandexamples:备注与示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. proportion rep78, over(foreign)}{p_end}

{pstd}测试拥有 4 号修理记录的汽车的比例
({cmd:rep78=4}) 是否在 {cmd:Domestic} 和 {cmd:Foreign} 汽车中相同{p_end}
{phang2}{cmd:. contrast r.foreign@4.rep78}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <proportion_postestimation.sthlp>}