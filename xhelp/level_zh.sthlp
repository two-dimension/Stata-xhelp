{smcl}
{* *! version 1.1.5  19oct2017}{...}
{vieweralsosee "[R] level" "mansection R level"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] creturn" "help creturn_zh"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{viewerjumpto "Syntax" "level_zh##syntax"}{...}
{viewerjumpto "Description" "level_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "level_zh##linkspdf"}{...}
{viewerjumpto "Option" "level_zh##option"}{...}
{viewerjumpto "Remarks" "level_zh##remarks"}{...}
{viewerjumpto "Note concerning estimation commands" "level_zh##note"}{...}
{viewerjumpto "Examples" "level_zh##examples"}
{help level:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] level} {hline 2}}设置默认置信区间水平{p_end}
{p2col:}({mansection R level:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 13 2}
{cmd:set} {opt l:evel} {it:#} [{cmd:,} {opt perm:anently}]

{phang}
{it:#} 是任何介于 10.00 到 99.99 之间的数字，最多可指定两位小数。

{marker description}{...}
{title:描述}

{pstd}
{cmd:set} {cmd:level} 指定所有报告置信区间的命令的默认置信水平。初始值为 95，这意味着 95% 的置信区间。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R levelRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt permanently} 指定除了现在进行更改外，{cmd:level} 设置将被记住，并在你调用 Stata 时成为默认设置。


{marker remarks}{...}
{title:备注}

{pstd}
要更改特定命令报告的置信区间水平，你不必重置默认置信水平。所有报告置信区间的命令都有一个 {opt level(#)} 选项。当你不指定该选项时，置信区间将根据 {cmd:set} {cmd:level} 设置的默认水平进行计算，如果你没有重置，则默认为 95%。

{marker note}{...}
{title:关于估计命令的说明}

{pstd}
所有估计命令在没有参数的情况下输入时可以重新显示结果；请参见 {help estcom_zh}。报告的置信区间宽度是显示的属性，而不是估计的属性。例如，

{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. regress mpg weight displ}{break}
        （输出出现）

{phang2}{cmd:. regress, level(90)}{break}
       （输出重新出现，这次为 90% 的置信区间）


{marker examples}{...}
{title:示例}

{phang}{cmd:. set level 90}

{phang}{cmd:. set level 99, permanently}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <level.sthlp>}