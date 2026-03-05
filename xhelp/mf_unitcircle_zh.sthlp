{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] unitcircle()" "mansection M-5 unitcircle()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Standard" "help m4_standard_zh"}{...}
{viewerjumpto "Syntax" "mf_unitcircle_zh##syntax"}{...}
{viewerjumpto "Description" "mf_unitcircle_zh##description"}{...}
{viewerjumpto "Conformability" "mf_unitcircle_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_unitcircle_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_unitcircle_zh##source"}
{help mf_unitcircle:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-5] unitcircle()} {hline 2}}包含单位圆的复数列向量
{p_end}
{p2col:}({mansection M-5 unitcircle():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:complex colvector} 
{cmd:unitcircle(}{it:real scalar n}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:unitcircle(}{it:n}{cmd:)}返回一个包含
{cmd:C(cos(}{it:theta}{cmd:), sin(}{it:theta}{cmd:))}的列向量，
其中0<={it:theta}<=2*{cmd:pi()}，共{it:n}个点。


{marker conformability}{...}
{title:符合性}

    {cmd:unitcircle(}{it:n}{cmd:)}:
		{it:n}:  1 {it:x} 1
	   {it:result}:  {it:n} {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view unitcircle.mata, adopath asis:unitcircle.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_unitcircle.sthlp>}