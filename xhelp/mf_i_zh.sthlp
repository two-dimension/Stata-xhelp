{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] I()" "mansection M-5 I()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Standard" "help m4_standard_zh"}{...}
{viewerjumpto "语法" "mf_i_zh##syntax"}{...}
{viewerjumpto "描述" "mf_i_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_i_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_i_zh##remarks"}{...}
{viewerjumpto "适配性" "mf_i_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_i_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_i_zh##source"}
{help mf_i:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[M-5] I()} {hline 2}}身份矩阵
{p_end}
{p2col:}({mansection M-5 I():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数 矩阵}
{cmd:I(}{it:实数 标量 n}{cmd:)}

{p 8 12 2}
{it:实数 矩阵}
{cmd:I(}{it:实数 标量 m}{cmd:,} {it:实数 标量 n}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:I(}{it:n}{cmd:)} 
返回 {it:n x n} 身份矩阵。

{p 4 4 2}
{cmd:I(}{it:m}{cmd:,} {it:n}{cmd:)} 
返回一个 {it:m x n} 矩阵，其主对角线上为 1，其他位置为 0。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 I()Remarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:I()} 必须以大写字母输入。


{marker conformability}{...}
{title:适配性}

    {cmd:I(}{it:n}{cmd:)}:
		{it:n}:  1 {it:x} {it:1}
	   {it:result}:  {it:n x n}

    {cmd:I(}{it:m}{cmd:,} {it:n}{cmd:)}:
		{it:m}:  1 {it:x} {it:1}
		{it:n}:  1 {it:x} {it:1}
	   {it:result}:  {it:m x n}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:I(}{it:n}{cmd:)} 在 {it:n} 小于 0 或缺失时会中止并报错。
{it:n} 被解释为 {cmd:trunc(}{it:n}{cmd:)}。

{p 4 4 2}
{cmd:I(}{it:m}{cmd:,} {it:n}{cmd:)} 
在 {it:m} 或 {it:n} 小于 0 或缺失时会中止并报错。
{it:m} 和 {it:n} 被解释为 
{cmd:trunc(}{it:m}{cmd:)} 和 
{cmd:trunc(}{it:n}{cmd:)}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_i.sthlp>}