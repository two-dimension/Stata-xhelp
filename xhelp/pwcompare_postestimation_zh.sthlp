{smcl}
{* *! version 1.0.7  19oct2017}{...}
{vieweralsosee "[R] pwcompare postestimation" "mansection R pwcomparepostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] pwcompare" "help pwcompare_zh"}{...}
{viewerjumpto "Postestimation commands" "pwcompare postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "pwcompare_postestimation_zh##linkspdf"}{...}
{viewerjumpto "Example" "pwcompare postestimation##example"}
{help pwcompare_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[R] pwcompare postestimation} {hline 2}}pwcompare 的后处理工具{p_end}
{p2col:}({mansection R pwcomparepostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后处理命令}

{pstd}
在 {cmd:pwcompare}{cmd:, post} 之后可以使用以下后处理命令：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_estatvce
INCLUDE help post_svy_estat
INCLUDE help post_estimates
INCLUDE help post_lincom
INCLUDE help post_nlcom
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection R pwcomparepostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker example}{...}
{title:示例}

{pstd}单因素模型的设置{p_end}
{phang2}{cmd:. webuse yield}{p_end}
{phang2}{cmd:. regress yield i.fertilizer}{p_end}

{pstd}每种肥料的平均产量{p_end}
{phang2}{cmd:. pwcompare fertilizer, cimargins post}{p_end}

{pstd}与肥料 1 相比，肥料 2 平均产量的百分比提高{p_end}
{phang2}
{cmd:. nlcom 100*(_b[2.fertilizer] - _b[1.fertilizer])/_b[1.fertilizer]}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <pwcompare_postestimation.sthlp>}