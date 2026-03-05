{smcl}
{* *! version 1.1.8  04may2019}{...}
{vieweralsosee "[R] set_defaults" "mansection R set_defaults"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] mata set" "help mata_set_zh"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{vieweralsosee "[R] set" "help set_zh"}{...}
{viewerjumpto "Syntax" "set_defaults_zh##syntax"}{...}
{viewerjumpto "Description" "set_defaults_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "set_defaults_zh##linkspdf"}{...}
{viewerjumpto "Option" "set_defaults_zh##option"}{...}
{viewerjumpto "Examples" "set_defaults_zh##examples"}
{help set_defaults:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[R] set_defaults} {hline 2}}重置系统参数为原始的 Stata 默认值{p_end}
{p2col:}({mansection R set_defaults:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 21 2}
{cmd:set_defaults}
{c -(}{it:category} | {cmd:_all}{c )-}
[{cmd:,} {opt perm:anently}]

    其中 {it:category} 是以下之一

{pmore}
{opt mem:ory} | {opt out:put} | {opt inter:face} | {opt graph:ics} |
{opt eff:iciency} | {opt net:work} | {opt up:date} |
{opt trace} | {opt mata} | {opt unicode} | {opt oth:er}


{marker description}{...}
{title:描述}

{pstd}
{opt set_defaults} 将 {help set_zh} 所做的设置重置为自 Stata 中附带的原始默认设置。

{pstd}
{cmd:set_defaults} 不能与 {cmd:java} 或 {cmd:python} 系统参数类别一起使用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R set_defaultsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt permanently} 指定除了立即更改设置外，还要记住这些设置并在下次调用 Stata 时作为默认设置。


{marker examples}{...}
{title:示例}

    {cmd:. set_defaults network}
    {cmd:. set_defaults output}

    {cmd:. set_defaults _all}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <set_defaults.sthlp>}