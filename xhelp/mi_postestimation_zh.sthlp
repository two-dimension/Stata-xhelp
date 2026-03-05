{smcl}
{* *! version 1.0.15  15may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi estimate postestimation" "mansection MI miestimatepostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi predict" "help mi predict"}{...}
{vieweralsosee "[MI] mi test" "help mi test"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi estimate" "help mi_estimate_zh"}{...}
{vieweralsosee "[MI] mi estimate using" "help mi_estimate_using_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] Glossary" "help mi glossary"}
{help mi_postestimation:English Version}
{hline}{...}
{p2colset 1 36 38 2}{...}
{p2col:{bf:[MI] mi estimate postestimation} {hline 2}}mi estimate 的后验估计工具{p_end}
{p2col:}({mansection MI miestimatepostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后验估计命令}

{pstd}
在进行 {cmd:mi estimate} 和 {cmd:mi estimate using} 后，可以使用以下后验估计命令：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{help mi_test_zh:mi test}}对系数进行检验{p_end}
{synopt :{help mi_test_zh:mi testtransform}}对变换后的系数进行检验{p_end}
{synopt :{help mi_predict_zh:mi predict}}获取线性预测{p_end}
{synopt :{help mi_predict_zh:mi predictnl}}获取非线性预测{p_end}
{synoptline}

{pstd}
在通过 {cmd:mi estimate:} {it:estimation_command} 进行估计之后，通常不能使用标准的后验估计命令，例如 {cmd:test}、{cmd:testnl} 或 {cmd:predict}；也不能使用特定于 {it:estimation_command} 的后验估计命令，例如 {cmd:estat}。正如我们常常提到的，{cmd:mi estimate} 是其自己的估计命令，之后可用的后验估计命令（在 {cmd:mi estimate} 和 {cmd:mi estimate using} 后）列在上述表格中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_postestimation.sthlp>}