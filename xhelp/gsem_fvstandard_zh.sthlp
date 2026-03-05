{smcl}
{* *! version 1.0.0  15mar2017}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{viewerjumpto "Syntax" "gsem_fvstandard_zh##syntax"}{...}
{viewerjumpto "Description" "gsem_fvstandard_zh##description"}{...}
{viewerjumpto "Option" "gsem_fvstandard_zh##option"}
{help gsem_fvstandard:English Version}
{hline}{...}
{title:标题}

{p2colset 5 31 33 2}{...}
{p2col:{hi:[SEM] gsem, fvstandard} {hline 2}}跟踪因子变量的水平{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:gsem} ... [{cmd:,} {opt fvstand:ard} ...]


{marker description}{...}
{title:描述}

{pstd}
当 {cmd:gsem, fvstandard} 与 {helpb set fvtrack:set fvtrack factor} 生效时，它改变了 {cmd:gsem} 在交互项中跟踪因子变量水平的方式。


{marker option}{...}
{title:选项}

{phang}
{cmd:fvstandard}
指定所有因子变量在指定或隐含的水平中自动分配一个基准水平，并且隐含但未指定的交互项元素将在模型指定中保留。

{pmore}
除非 {helpb set fvtrack:set fvtrack factor} 生效，否则此选项被忽略。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gsem_fvstandard.sthlp>}