{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] mod()" "mansection M-5 mod()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Scalar" "help m4_scalar_zh"}{...}
{viewerjumpto "Syntax" "mf_mod_zh##syntax"}{...}
{viewerjumpto "Description" "mf_mod_zh##description"}{...}
{viewerjumpto "Conformability" "mf_mod_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_mod_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_mod_zh##source"}
{help mf_mod:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[M-5] mod()} {hline 2}}取模
{p_end}
{p2col:}({mansection M-5 mod():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real matrix} {cmd:mod(}{it:real matrix x}{cmd:,} {it:real matrix y}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
    {cmd:mod(}{it:x}{cmd:,} {it:y}{cmd:)} 返回 {it:x} 与 {it:y} 的逐元素取模。
    {cmd:mod()} 的定义为

	{cmd:mod(}{it:x}{cmd:,} {it:y}{cmd:)} = {it:x} - {it:y}*trunc({it:x}/{it:y})


{marker conformability}{...}
{title:兼容性}

    {cmd:mod(}{it:x}{cmd:,} {it:y}{cmd:)}:
                {it:x}:  {it:r1 x c1}
                {it:y}:  {it:r2 x c2}, {it:x} 和 {it:y} 是 r-兼容的
           {it:result}:  max({it:r1},{it:r2}) {it:x} max({it:c1},{it:c2}) （逐元素计算）


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
    {cmd:mod(}{it:x}{cmd:,} {it:y}{cmd:)} 当任一参数缺失或 {it:y}=0 时返回缺失值。


{marker source}{...}
{title:源代码}

{p 4 4 2}
该函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_mod.sthlp>}