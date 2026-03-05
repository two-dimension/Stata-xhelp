{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] sign()" "mansection M-5 sign()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] dsign()" "help mf_dsign_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Scalar" "help m4_scalar_zh"}{...}
{viewerjumpto "Syntax" "mf_sign_zh##syntax"}{...}
{viewerjumpto "Description" "mf_sign_zh##description"}{...}
{viewerjumpto "Conformability" "mf_sign_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_sign_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_sign_zh##source"}
{help mf_sign:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-5] sign()} {hline 2}}符号和复象象限函数
{p_end}
{p2col:}({mansection M-5 sign():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数矩阵}{bind:     }{cmd:sign(}{it:实数矩阵 R}{cmd:)}

{p 8 12 2}
{it:实数矩阵}{bind: }{cmd:quadrant(}{it:复数矩阵 Z}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:sign(}{it:R}{cmd:)} 返回 {it:R} 的逐元素符号。
{cmd:sign()} 定义为

	参数范围      {cmd:sign(}{it:arg}{cmd:)}
	{hline 31}
        {it:arg} >= .                .
        {it:arg} <  0               -1
        {it:arg} =  0                0
        {it:arg} >  0                1
	{hline 31}

{p 4 4 2}
{cmd:quadrant(}{it:Z}{cmd:)} 返回一个实数矩阵，记录每个复数条目的象限。
{cmd:quadrant()} 定义为

	  参数范围
        Re({it:arg})    Im({it:arg})      {cmd:quadrant(}{it:arg}{cmd:)}
	{hline 37}
	Re >= .                        .
        Re =  0    Im =  0             .
        Re >  0    Im >= 0             1
        Re <= 0    Im >  0             2
        Re <  0    Im <= 0             3
        Re >= 0    Im <  0             4
	{hline 37}
        {cmd:quadrant(}1+0i{cmd:)==1}, {cmd:quadrant(}-1+0i{cmd:)==3}
        {cmd:quadrant(}0+1i{cmd:)==2}, {cmd:quadrant(} 0-1i{cmd:)==4}


{marker conformability}{...}
{title:兼容性}

    {cmd:sign(}{it:R}{cmd:)}:
                {it:R}:  {it:r x c}
           {it:result}:  {it:r x c}

    {cmd:quadrant(}{it:Z}{cmd:)}:
                {it:Z}:  {it:r x c}
           {it:result}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:sign(}{it:R}{cmd:)} 当 {it:R} 为缺失值时返回缺失值。

{p 4 4 2}
{cmd:quadrant(}{it:Z}{cmd:)} 当 {it:Z} 为缺失值时返回缺失值。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view quadrant.mata, adopath asis:quadrant.mata};
{cmd:sign()} 是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_sign.sthlp>}