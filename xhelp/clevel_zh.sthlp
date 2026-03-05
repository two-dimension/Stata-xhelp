{smcl}
{* *! version 1.0.5  15may2018}{...}
{vieweralsosee "[BAYES] set clevel" "mansection BAYES setclevel"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[BAYES] bayesmh" "help bayesmh_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian estimation"}{...}
{vieweralsosee "[P] creturn" "help creturn_zh"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{viewerjumpto "Syntax" "clevel_zh##syntax"}{...}
{viewerjumpto "Description" "clevel_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "clevel_zh##linkspdf"}{...}
{viewerjumpto "Option" "clevel_zh##option"}{...}
{viewerjumpto "Remarks" "clevel_zh##remarks"}{...}
{viewerjumpto "Note concerning estimation commands" "clevel_zh##note"}{...}
{viewerjumpto "Examples" "clevel_zh##examples"}
{help clevel:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[BAYES] set clevel} {hline 2}}设置默认的可信水平{p_end}
{p2col:}({mansection BAYES setclevel:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 13 2}
{cmd:set} {opt clevel} {it:#} [{cmd:,} {opt perm:anently}]

{phang}
{it:#} 是介于 10.00 和 99.99 之间的任何数字，并且可以最多指定两个小数位。


{marker description}{...}
{title:描述}

{pstd}
{cmd:set} {cmd:clevel} 指定所有报告可信区间的贝叶斯命令的默认可信水平
（见 {manhelp bayesian_commands BAYES:贝叶斯命令}）。初始值为 95，表示 95% 的可信区间。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES setclevelRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt permanently} 指定在立即进行更改的同时，{cmd:clevel} 设置应被记住并在调用 Stata 时成为默认设置。


{marker remarks}{...}
{title:备注}

{pstd}
要更改特定命令报告的可信区间的水平，您无需重置默认的可信水平。
所有报告可信区间的命令都有一个 {opt clevel(#)} 选项。当您未指定该选项时，可信区间将根据 {cmd:set} {cmd:clevel} 设置的默认水平或在您未重置 {cmd:set} {cmd:clevel} 时计算为 95%。


{marker note}{...}
{title:关于估计命令的说明}

{pstd}
所有贝叶斯估计命令在没有参数的情况下输入时，可以重新显示结果。报告的可信区间宽度是显示的一部分，而不是估计的一部分，例如，

{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. bayesmh mpg, likelihood(normal(1)) prior({mpg:_cons}, uniform(15,25))}{break}
        （输出显示）

{phang2}{cmd:. bayesmh, clevel(90)}{break}
       （输出再次出现，这次是 90% 的可信区间）


{marker examples}{...}
{title:示例}

{phang}{cmd:. set clevel 90}

{phang}{cmd:. set clevel 99, permanently}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <clevel.sthlp>}