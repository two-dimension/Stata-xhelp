{smcl}
{* *! version 1.0.0  19feb2019}{...}
{vieweralsosee "[R] set iter" "mansection R setiter"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] Maximize" "help maximize_zh"}{...}
{vieweralsosee "[R] set" "help set_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] moptimize()" "help mf_moptimize_zh"}{...}
{vieweralsosee "[M-5] optimize()" "help mf_optimize_zh"}{...}
{vieweralsosee "[M-5] solvenl()" "help mf_solvenl_zh"}{...}
{viewerjumpto "Syntax" "set_iter_zh##syntax"}{...}
{viewerjumpto "Description" "set_iter_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "set_iter_zh##linkspdf"}{...}
{viewerjumpto "Option" "set_iter_zh##option"}{...}
{viewerjumpto "Examples" "set_iter_zh##examples"}
{help set_iter:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[R]} {it:set iter} {hline 2}}控制迭代设置{p_end}
{p2col:}({mansection R setiter:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}设置是否显示迭代日志

{p 8 20 2}
{cmd:set}
{cmd:iterlog}
{c -(}{cmd:on} | {cmd:off}{c )-}
[{cmd:,} {cmdab:perm:anently}]


{phang}设置默认最大迭代次数

{p 8 20 2}
{cmd:set} {cmd:maxiter} {it:#} [{cmd:,} {opt perm:anently}]



{marker description}{...}
{title:描述}

{pstd}
{cmd:set} {cmd:iterlog} 和 {cmd:set} {cmd:maxiter} 控制迭代日志的显示和最大迭代次数，分别适用于需要迭代的估计命令和 Mata 优化函数 
{manhelp mf_moptimize M-5:moptimize()},
{manhelp mf_optimize M-5:optimize()} 和
{manhelp mf_solvenl M-5:solvenl()}。

{pstd}
{cmd:set} {cmd:iterlog} 指定是否显示迭代日志。默认设置为 {cmd:on}，即显示日志。您可以指定 
{bind:{cmd:set} {cmd:iterlog} {cmd:off}} 来禁止显示。要更改特定估计命令的迭代日志显示状态，您无需重置 {cmd:iterlog}；可以与该命令一起指定 {cmd:log} 或 {cmd:nolog} 选项。如果不指定 {cmd:log} 或 {cmd:nolog}，则使用 {cmd:iterlog} 设置。要查看当前的 {cmd:iterlog} 设置，请输入 {cmd:display} {cmd:c(iterlog)}。

{pstd}
{cmd:set} {cmd:maxiter} 指定默认的最大迭代次数。初始值为 {cmd:16000}，而 {it:#} 可以是 {cmd:0} 到 {cmd:16000}。要更改特定估计命令执行的最大迭代次数，您无需重置 {cmd:maxiter}；可以与该命令一起指定 {opt iterate(#)} 选项。如果不指定 {opt iterate(#)}，则使用 {cmd:maxiter} 值。要查看当前的 {cmd:maxiter} 设置，请输入 {cmd:display} {cmd:c(maxiter)}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R setiterRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently} 指定，除了立即进行更改之外，还要记住该设置，并在调用 Stata 时使其成为默认设置。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}
通过指定 {cmd:nolog} 选项来禁止 {cmd:logit} 的迭代日志（默认显示）{p_end}
{phang2}{cmd:. logit foreign mpg, nolog}{p_end}

{pstd}
在不指定命令的 {cmd:nolog} 选项的情况下，禁止 {cmd:logit} 和其他迭代命令的迭代日志{p_end}
{phang2}{cmd:. set iterlog off}{p_end}
{phang2}{cmd:. logit foreign mpg}{p_end}
{phang2}{cmd:. mlogit rep78 mpg}{p_end}

{pstd}
使用 {cmd:log} 选项为特定命令显示迭代日志{p_end}
{phang2}{cmd:. mlogit rep78 mpg, log}{p_end}

{pstd}
恢复默认显示迭代日志{p_end}
{phang2}{cmd:. set iterlog on}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <set_iter.sthlp>}