{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] fmtwidth()" "mansection M-5 fmtwidth()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] strlen()" "help mf_strlen_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{viewerjumpto "Syntax" "mf_fmtwidth_zh##syntax"}{...}
{viewerjumpto "Description" "mf_fmtwidth_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_fmtwidth_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_fmtwidth_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_fmtwidth_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_fmtwidth_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_fmtwidth_zh##source"}
{help mf_fmtwidth:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] fmtwidth()} {hline 2}}%fmt 的宽度
{p_end}
{p2col:}({mansection M-5 fmtwidth():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real matrix} {cmd:fmtwidth(}{it:string matrix f}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:fmtwidth(}{it:f}{cmd:)} 返回包含在 {it:f} 中的 {help format_zh:{bf:%}{it:fmt}} 的宽度。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 fmtwidth()Remarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:fmtwidth("%9.2f")} 返回 9。

{p 4 4 2}
{cmd:fmtwidth("%20s")} 返回 20。

{p 4 4 2}
{cmd:fmtwidth("%tc")} 返回 18。

{p 4 4 2}
{cmd:fmtwidth("%tcDay_Mon_DD_hh:mm:ss_!C!D!T_CCYY")} 返回 28。

{p 4 4 2}
{cmd:fmtwidth("not a format")} 返回 {cmd:.}（缺失值）。


{marker conformability}{...}
{title:兼容性}

    {cmd:fmtwidth(}{it:f}{cmd:)}:
             {it:f}:  {it:r x c}
        {it:result}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:fmtwidth(}{it:f}{cmd:)} 当 {it:f} 不包含有效的 Stata 格式时，返回 {cmd:.}（缺失值）。


{marker source}{...}
{title:源代码}

{p 4 4 2}
功能是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_fmtwidth.sthlp>}