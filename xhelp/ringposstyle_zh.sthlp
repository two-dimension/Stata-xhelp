{smcl}
{* *! version 1.1.7  19oct2017}{...}
{vieweralsosee "[G-4] ringposstyle" "mansection G-4 ringposstyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] title_options" "help title_options_zh"}{...}
{vieweralsosee "[G-4] clockposstyle" "help clockposstyle_zh"}{...}
{viewerjumpto "Syntax" "ringposstyle_zh##syntax"}{...}
{viewerjumpto "Description" "ringposstyle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "ringposstyle_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "ringposstyle_zh##remarks"}
{help ringposstyle:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[G-4]} {it:ringposstyle} {hline 2}}位置选项：距离绘图区域{p_end}
{p2col:}({mansection G-4 ringposstyle:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
{it:ringposstyle} 是

	{it:#}         0 <= {it:#} <= 100， {it:#} 实数


{marker description}{...}
{title:描述}

{pstd}
{it:ringposstyle} 在选项中指定，例如 {cmd:ring()}，通常与 {it:clockposstyle} 一起使用（参见 {manhelpi clockposstyle G-4}），以指定标题、副标题等的位置。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-4 ringposstyleRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
请参见 {it:{help title_options##remarks3:标题的位置}}，位于 {manhelpi title_options G-3} 的 {it:备注} 部分。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ringposstyle.sthlp>}