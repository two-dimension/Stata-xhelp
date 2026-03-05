{smcl}
{* *! version 1.1.7  15may2018}{...}
{vieweralsosee "[G-3] scheme_option" "mansection G-3 scheme_option"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] set scheme" "help set_scheme_zh"}{...}
{vieweralsosee "[G-4] Schemes intro" "help schemes_zh"}{...}
{viewerjumpto "Syntax" "scheme_option_zh##syntax"}{...}
{viewerjumpto "Description" "scheme_option_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "scheme_option_zh##linkspdf"}{...}
{viewerjumpto "Option" "scheme_option_zh##option"}{...}
{viewerjumpto "Remarks" "scheme_option_zh##remarks"}
{help scheme_option:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[G-3]} {it:scheme_option} {hline 2}}指定图形方案的选项{p_end}
{p2col:}({mansection G-3 scheme_option:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 20}{...}
{p2col:{it:scheme_option}}描述{p_end}
{p2line}
{p2col:{cmdab:sch:eme:(}{it:{help scheme intro:schemename}}{cmd:)}}指定要使用的方案{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}
{cmd:scheme()} 是 {it:唯一的}; 请参见 {help repeated options}.


{marker description}{...}
{title:描述}

{pstd}
选项 {cmd:scheme()} 指定要使用的图形方案。
该方案指定了图形的整体外观。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-3 scheme_optionQuickstart:快速入门}

        {mansection G-3 scheme_optionRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:scheme(}{it:schemename}{cmd:)} 指定要使用的方案。
如果未指定 {cmd:scheme()}，则使用默认方案; 参见 {manhelp schemes G-4:方案介绍}.


{marker remarks}{...}
{title:备注}

{pstd}
请参见 {manhelp schemes G-4:方案介绍}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_option.sthlp>}