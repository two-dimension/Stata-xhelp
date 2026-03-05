{smcl}
{* *! version 1.1.9  23jan2019}{...}
{vieweralsosee "[R] total postestimation" "mansection R totalpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] total" "help total_zh"}{...}
{viewerjumpto "Postestimation commands" "total postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "total_postestimation_zh##linkspdf"}{...}
{viewerjumpto "Examples" "total postestimation##examples"}
{help total_postestimation:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[R] total postestimation} {hline 2}}total的后估计工具{p_end}
{p2col:}({mansection R totalpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在{opt total}之后，可用以下后估计命令：

{synoptset 13}{...}
{synopt:命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatvce
INCLUDE help post_svy_estat
INCLUDE help post_estimates
INCLUDE help post_lincom
{synopt :{help marginsplot_zh}}从total绘制结果图{p_end}
INCLUDE help post_nlcom
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R totalpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse total}{p_end}
{phang2}{cmd:. total heartatk [pw=swgt], over(sex)}{p_end}

{pstd}显示系数的协方差矩阵{p_end}
{phang2}{cmd:. estat vce}

{pstd}估计女性与男性在心脏病发作数量上的差异{p_end}
{phang2}{cmd:. contrast r.sex#c.heartatk}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <total_postestimation.sthlp>}