{smcl}
{* *! version 1.1.8  15may2018}{...}
{vieweralsosee "[M-5] strtoname()" "mansection M-5 strtoname()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] ustrtoname()" "help mf_ustrtoname_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{viewerjumpto "Syntax" "mf_strtoname_zh##syntax"}{...}
{viewerjumpto "Description" "mf_strtoname_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_strtoname_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_strtoname_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_strtoname_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_strtoname_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_strtoname_zh##source"}
{help mf_strtoname:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] strtoname()} {hline 2}}将字符串转换为与 Stata 13 兼容的名称
{p_end}
{p2col:}({mansection M-5 strtoname():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{phang2}
{it:字符串 矩阵}
{cmd:strtoname(}{it:字符串 矩阵 s}{cmd:,} {it:实数 标量 p}{cmd:)}

{phang2}
{it:字符串 矩阵}
{cmd:strtoname(}{it:字符串 矩阵 s}{cmd:)}

{marker description}{...}
{title:描述}

{pstd}
{cmd:strtoname(}{it:s}{cmd:,} {it:p}{cmd:)} 返回 {it:s} 转换为 Stata 名称。{pstd} {it:s} 中每一个不允许出现在 Stata 名称中的字符都会被转换为下划线字符 {cmd:_}。如果 {it:s} 的第一个字符是数字字符而 {it:p} 不是 {cmd:0}，那么结果将以一个下划线为前缀。结果被截断为 {ccl namelenchar} 字节。

{pstd}
{cmd:strtoname(}{it:s}{cmd:)} 等同于 {cmd:strtoname(}{it:s}{cmd:,} {cmd:1)}。

{pstd}
当参数不是标量时，{cmd:strtoname()} 返回逐元素的结果。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 strtoname()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。

{marker remarks}{...}
{title:备注}

{pstd}
{cmd:strtoname()} 处理仅包含 ASCII 字符的字符串。使用 {help mf_ustrtoname_zh:ustrtoname()} 生成带有 Unicode 字符的 Stata 名称。

{pstd}
{cmd:strtoname("StataName")} 返回 "StataName"。

{pstd}
{cmd:strtoname("not a Stata name")} 返回 "not_a_Stata_name"。

{pstd}
{cmd:strtoname("0 is off")} 返回 "_0_is_off"。

{pstd}
{cmd:strtoname("0 is off", 0)} 返回 "0_is_off"。

{marker conformability}{...}
{title:适用性}

    {cmd:strtoname(}{it:s}{cmd:,} {it:p}{cmd:)}:
            {it:s}:  {it:r x c}
            {it:p}:  1 {it:x} 1
       {it:结果}:  {it:r x c}

    {cmd:strtoname(}{it:s}{cmd:)}:
            {it:s}:  {it:r x c}
       {it:结果}:  {it:r x c}

{marker diagnostics}{...}
{title:诊断}

{pstd}
无。

{marker source}{...}
{title:源代码}

{pstd}
该函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_strtoname.sthlp>}