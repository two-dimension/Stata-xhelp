{smcl}
{* *! version 1.2.4  19oct2017}{...}
{vieweralsosee "[R] jackknife postestimation" "mansection R jackknifepostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] jackknife" "help jackknife_zh"}{...}
{viewerjumpto "后估计命令" "jackknife postestimation##description"}{...}
{viewerjumpto "预测" "jackknife postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "jackknife postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "jackknife postestimation##examples"}
{help jackknife_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[R] jackknife postestimation} {hline 2}}Jackknife 的后估计工具{p_end}
{p2col:}({mansection R jackknifepostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在使用 {opt jackknife} 后，可以使用以下后估计命令：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_hausman
INCLUDE help post_lincom
{synopt:{helpb jackknife postestimation##margins:margins}}边际均值、预测边际、边际效应以及平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt:{helpb jackknife postestimation##predict:predict}}预测、残差、影响统计量以及其他诊断措施{p_end}
{synopt:{help predictnl_zh}}点估计、标准误差、检验和对非线性系数组合的推断{p_end}
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}后估计命令仅在可用于 {it:command} 后时允许使用。{p_end}


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测}

{pstd}
{opt predict}（以及 {opt predict} 是否被允许）在 {opt jackknife} 之后的语法取决于与 {opt jackknife} 一起使用的 {it:command}。{p_end}


{marker syntax_margins}{...}
{marker margins}{...}
{title:边际}

{pstd}
{opt margins}（以及 {opt margins} 是否被允许）在 {opt jackknife} 之后的语法取决于与 {opt jackknife} 一起使用的 {it:command}。{p_end}


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse regress}{p_end}
{phang2}{cmd:. jackknife: regress y x1 x2 x3}

{pstd}估计系数的线性组合{p_end}
{phang2}{cmd:. lincom x2-x1}

{pstd}检验 {cmd:x1} 和 {cmd:x3} 的系数是否均为零{p_end}
{phang2}{cmd:. test x1 x3}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <jackknife_postestimation.sthlp>}