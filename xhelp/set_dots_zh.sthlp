{smcl}
{* *! version 1.0.0  24apr2019}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{vieweralsosee "[R] set" "help set_zh"}{...}
{viewerjumpto "Syntax" "set_dots_zh##syntax"}{...}
{viewerjumpto "Description" "set_dots_zh##description"}{...}
{viewerjumpto "Option" "set_dots_zh##option"}
{help set_dots:English Version}
{hline}{...}
{title:标题}

{phang}系数表的格式设置{p_end}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:set}
{cmd:dots}
{c -(}{opt on}{c |}{opt off}{c )-}
[{cmd:,} {cmdab:perm:anently}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:set} {cmd:dots} 允许你控制支持 {opt dots()} 选项的命令的默认行为。

{pstd}
{cmd:set dots on} 每当从数据集的样本或重抽样中计算统计量时，报告一个点。

{pstd}
{cmd:set dots off} 抑制点的报告。

{pstd}
当前设置为 {cmd:set} {cmd:dots} {cmd:{ccl dots}}。

{pstd}
以下命令检查 {cmd:c(dots)} 的值，以确定默认 {opt dots()} 行为。

{pmore}
{help bootstrap_zh},
{help jackknife_zh},
{help permute_zh},
{help rolling_zh},
{help simulate_zh},
{help statsby_zh},
{helpb svy bootstrap},
{helpb svy brr},
{helpb svy jackknife},
{helpb svy sdr},
{help threshold_zh}
{p_end}


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently} 指定除了立即更改设置外，还要记住此设置，并作为调用 Stata 时的默认设置。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <set_dots.sthlp>}