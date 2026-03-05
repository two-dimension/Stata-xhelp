{smcl}
{* *! version 1.0.8  19oct2017}{...}
{vieweralsosee "[R] contrast postestimation" "mansection R contrastpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] contrast" "help contrast_zh"}{...}
{viewerjumpto "Postestimation commands" "contrast postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "contrast_postestimation_zh##linkspdf"}{...}
{viewerjumpto "Example" "contrast postestimation##example"}
{help contrast_postestimation:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[R] contrast postestimation} {hline 2}}对比的后置估计工具{p_end}
{p2col:}({mansection R contrastpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后置估计命令}

{pstd}
在 {cmd:contrast}{cmd:, post} 之后可用以下后置估计命令：

{synoptset 13}{...}
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
{title:PDF文档链接}

        {mansection R contrastpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse cholesterol}{p_end}
{phang2}{cmd:. anova chol agegrp}{p_end}
{phang2}{cmd:. contrast p.agegrp, post}

{pstd}检验二次、三次和四次效应是否共同为零{p_end}
{phang2}{cmd:. test p2.agegrp p3.agegrp p4.agegrp}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <contrast_postestimation.sthlp>}