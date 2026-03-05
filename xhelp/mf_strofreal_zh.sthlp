{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] strofreal()" "mansection M-5 strofreal()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] strtoreal()" "help mf_strtoreal_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{viewerjumpto "Syntax" "mf_strofreal_zh##syntax"}{...}
{viewerjumpto "Description" "mf_strofreal_zh##description"}{...}
{viewerjumpto "Conformability" "mf_strofreal_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_strofreal_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_strofreal_zh##source"}
{help mf_strofreal:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] strofreal()} {hline 2}}将实数转换为字符串
{p_end}
{p2col:}({mansection M-5 strofreal():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:string matrix}
{cmd:strofreal(}{it:real matrix R}{cmd:)}

{p 8 12 2}
{it:string matrix}
{cmd:strofreal(}{it:real matrix R}{cmd:,}
{it:string matrix format}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:strofreal(}{it:R}{cmd:)} 返回 {it:R} 的字符串形式，使用 Stata 的 {cmd:%9.0g} 格式。
{cmd:strofreal(}{it:R}{cmd:)} 
等同于 {cmd:strofreal(}{it:R}{cmd:, "%9.0g")}。

{p 4 4 2}
{cmd:strofreal(}{it:R}{cmd:,} {it:format}{cmd:)} 返回 {it:R} 的字符串形式，使用 {it:format} 格式化。

{p 4 4 2}
结果中的前导空格会被去除。

{p 4 4 2}
当参数不是标量时，{cmd:strofreal()} 返回逐元素结果。


{marker conformability}{...}
{title:兼容性}

    {cmd:strofreal(}{it:R}{cmd:,} {it:format}{cmd:)}:
               {it:R}:  {it:r1 x c1}
          {it:format}:  {it:r2 x c2}, {it:R} 和 {it:format} r-兼容（可选）
          {it:result}:  max({it:r1},{it:r2}) {it:x} max({it:c1},{it:c2})


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:strofreal(}{it:R}{cmd:,} {it:format}{cmd:)} 如果 {it:format} 无效，则返回 “.”。


{marker source}{...}
{title:源代码}

{p 4 4 2}
该函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_strofreal.sthlp>}