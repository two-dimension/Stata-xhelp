{smcl}
{* *! version 1.2.8  19jun2019}{...}
{vieweralsosee "[R] mean postestimation" "mansection R meanpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] mean" "help mean_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] estat" "help svy_estat_zh"}{...}
{viewerjumpto "Postestimation commands" "mean postestimation##description"}{...}
{viewerjumpto "estat sd" "mean postestimation##estatsd"}{...}
{viewerjumpto "Example" "mean postestimation##example"}
{help mean_postestimation:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[R] mean postestimation} {hline 2}}均值的后估计工具{p_end}
{p2col:}({mansection R meanpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
以下后估计命令在 {cmd:mean} 后特别有用： 

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb mean postestimation##estatsd:estat sd}}标准差估计{p_end}
{synoptline}
{p2colreset}{...}


{pstd}
以下标准后估计命令也可用：

{synoptset 11}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 help post_contrast
包含 help post_estatvce
包含 help post_svy_estat
包含 help post_estimates
包含 help post_hausman
包含 help post_lincom
{synopt :{help marginsplot_zh}}绘制均值的结果{p_end}
包含 help post_nlcom
包含 help post_pwcompare
包含 help post_test
包含 help post_testnl
{synoptline}
{p2colreset}{...}


{marker estatsd}{...}
{title:estat sd 的语法}

{p 8 17 2}
{cmd:estat} {opt sd} [{cmd:,} {opt var:iance}]


包含 help menu_estat


{title:estat sd 的描述}

{pstd}
{cmd:estat} {cmd:sd} 基于 {cmd:mean} 的估计结果报告标准差。
{cmd:estat} {cmd:sd} 不适用于使用直接标准化的估计结果。

{pstd}
{cmd:estat} {cmd:sd} 还可以基于 {cmd:svy: mean} 的估计结果报告子群体标准差；参见 {manhelp estat SVY}。


{marker option_estat_sd}{...}
{title:estat sd 的选项}

{phang}
{opt variance} 请求显示方差而不是标准差。


{marker results}{...}
{title:estat sd 的存储结果}

{pstd}
{cmd:estat sd} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(mean)}}均值估计向量{p_end}
{synopt:{cmd:r(sd)}}标准差估计向量{p_end}
{synopt:{cmd:r(variance)}}方差估计向量{p_end}


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse fuel}{p_end}
{phang2}{cmd:. mean mpg1 mpg2}{p_end}

{pstd}测试均值是否相等（相当于两独立样本 t 检验）{p_end}
{phang2}{cmd:. test mpg1 = mpg2}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mean_postestimation.sthlp>}