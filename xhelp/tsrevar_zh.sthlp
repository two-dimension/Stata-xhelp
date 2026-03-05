{smcl}
{* *! version 1.1.5  02aug2018}{...}
{vieweralsosee "[TS] tsrevar" "mansection TS tsrevar"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] fvrevar" "help fvrevar_zh"}{...}
{vieweralsosee "[P] syntax" "help syntax_zh"}{...}
{vieweralsosee "[P] unab" "help unab_zh"}{...}
{viewerjumpto "Syntax" "tsrevar_zh##syntax"}{...}
{viewerjumpto "Description" "tsrevar_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "tsrevar_zh##linkspdf"}{...}
{viewerjumpto "Options" "tsrevar_zh##options"}{...}
{viewerjumpto "Examples" "tsrevar_zh##examples"}{...}
{viewerjumpto "Stored results" "tsrevar_zh##results"}
{help tsrevar:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[TS] tsrevar} {hline 2}}时间序列运算符编程命令{p_end}
{p2col:}({mansection TS tsrevar:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:tsrevar} [{varlist}] {ifin} [{cmd:,} {opt sub:stitute} {opt l:ist}]

{phang}
在使用 {cmd:tsrevar} 之前，您必须 {cmd:tsset} 您的数据；请参见 {help tsset_zh:[TS] tsset}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:tsrevar, substitute} 接受可能包含 {it:op.varname} 组合的 {varlist} 并用等效的临时变量替代这些组合。

{pstd}
{cmd:tsrevar, list} 不会创建新变量。它在 {hi:r(varlist)} 中返回与 {it:varlist} 对应的基本变量列表。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS tsrevarQuickstart:快速入门}

        {mansection TS tsrevarRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:substitute} 指定 {cmd:tsrevar} 处理 {it:op.varname} 组合，通过创建临时变量来解决。如上所述，{cmd:substitute} 是 {cmd:tsrevar} 的默认操作；您无需指定该选项。

{phang}
{cmd:list} 指定 {cmd:tsrevar} 返回基本变量名称的列表。


{marker examples}{...}
{title:示例：tsrevar, substitute}

{pstd}设置{p_end}
{phang2}{cmd:. webuse tsrevarex}

{pstd}显示数据当前如何 {cmd:tsset}{p_end}
{phang2}{cmd:. tsset}

{pstd}描述数据{p_end}
{phang2}{cmd:. describe}

{pstd}创建两个临时变量，包含 {cmd:l.gnp} 和 {cmd:d.gnp} 的值{p_end}
{phang2}{cmd:. tsrevar l.gnp d.gnp r}

{pstd}显示 {cmd:r(varlist)} 的内容{p_end}
{phang2}{cmd:. display "`r(varlist)'"}

{pstd}列出一些数据{p_end}
{phang2}{cmd:. list gnp `r(varlist)' in 1/5}


{title:示例：tsrevar, list}

{pstd}设置{p_end}
{phang2}{cmd:. webuse tsrevarex}

{pstd}不创建新变量，但在 {cmd:r(varlist)} 中返回基本变量名称的列表{p_end}
{phang2}{cmd:. tsrevar l.gnp d.gnp r, list}

{pstd}显示 {cmd:r(varlist)} 的内容{p_end}
{phang2}{cmd:. display "`r(varlist)'"


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:tsrevar} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(varlist)}}修改后的变量列表或基本变量名称列表{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tsrevar.sthlp>}