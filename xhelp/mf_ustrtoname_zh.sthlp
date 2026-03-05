{smcl}
{* *! version 1.0.6  15may2018}{...}
{vieweralsosee "[M-5] ustrtoname()" "mansection M-5 ustrtoname()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] strtoname()" "help mf_strtoname_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}{...}
{viewerjumpto "Syntax" "mf_ustrtoname_zh##syntax"}{...}
{viewerjumpto "Description" "mf_ustrtoname_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_ustrtoname_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_ustrtoname_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_ustrtoname_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_ustrtoname_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_ustrtoname_zh##source"}
{help mf_ustrtoname:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-5] ustrtoname()} {hline 2}}将 Unicode 字符串转换为 Stata 名称
{p_end}
{p2col:}({mansection M-5 ustrtoname():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang2}
{it:字符串 矩阵}
{cmd:ustrtoname(}{it:字符串 矩阵 s} [{cmd:,} {it:实数 标量 p}]{cmd:)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:ustrtoname(}{it:s} [{cmd:,} {it:p}]{cmd:)} 将 Unicode 字符串转换为 Stata 名称。{it:s} 中每个不允许出现在 Stata 名称中的字符将被转换为下划线字符 {cmd:_}。如果 {it:s} 的第一个字符是数字字符，并且指定了 {it:p} 且不为零，则结果前面会加上一个下划线。结果会截断为 {ccl namelenchar} 个 Unicode 字符。

{pstd}
当参数不是标量时，{cmd:ustrtoname()} 以逐元素的方式返回结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 ustrtoname()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
无效的 UTF-8 序列被转换为下划线字符 {cmd:_}。

{p 4 4 2}
如果需要生成与 Stata 13 兼容的名称，请使用 {help mf_strtoname_zh:strtoname()}。


{marker conformability}{...}
{title:兼容性}

    {cmd:ustrtoname(}{it:s} [{cmd:,} {it:p}]{cmd:)}:
            {it:s}:  {it:r x c}
            {it:p}:  1 {it:x} 1
       {it:result}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{pstd}
{cmd:ustrtoname(}{it:s} [{cmd:,} {it:p}]{cmd:)} 如果发生错误，将返回空字符串。


{marker source}{...}
{title:源代码}

{pstd}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_ustrtoname.sthlp>}