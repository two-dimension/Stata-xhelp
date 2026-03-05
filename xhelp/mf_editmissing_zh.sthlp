{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] editmissing()" "mansection M-5 editmissing()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] editvalue()" "help mf_editvalue_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Manipulation" "help m4_manipulation_zh"}{...}
{viewerjumpto "Syntax" "mf_editmissing_zh##syntax"}{...}
{viewerjumpto "Description" "mf_editmissing_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_editmissing_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_editmissing_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_editmissing_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_editmissing_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_editmissing_zh##source"}
{help mf_editmissing:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[M-5] editmissing()} {hline 2}}编辑矩阵中的缺失值{p_end}
{p2col:}({mansection M-5 editmissing():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:数值矩阵}
{cmd:editmissing(}{it:数值矩阵 A}{cmd:,}
{it:数值标量 v}{cmd:)}

{p 8 8 2}
{it:空}{bind:         }
{cmd:_editmissing(}{it:数值矩阵 a}{cmd:,}
{it:数值标量 v}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:editmissing(}{it:A}{cmd:,} {it:v}{cmd:)} 返回将所有缺失值更改为 {it:v} 的 {it:A}。

{p 4 4 2}
{cmd:_editmissing(}{it:A}{cmd:,} {it:v}{cmd:)} 用 {it:v} 替换 {it:A} 中的所有缺失值。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 editmissing()Remarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:editmissing()} 和 {cmd:_editmissing()} 的执行速度非常快。

{p 4 4 2}
如果您想将非缺失值更改为其他值，包括缺失值，请参见 {bf:{help mf_editvalue_zh:[M-5] editvalue()}}。


{marker conformability}{...}
{title:兼容性}

    {cmd:editmissing(}{it:A}{cmd:,} {it:v}{cmd:)}:
		{it:A}:  {it:r x c}
		{it:v}:  1 {it:x} 1
	   {it:result}:  {it:r x c}

    {cmd:_editmissing(}{it:A}{cmd:,} {it:v}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:r x c}
		{it:v}:  1 {it:x} 1
	{it:输出:}
		{it:A}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:editmissing(}{it:A}{cmd:,} {it:v}{cmd:)} 和 
{cmd:_editmissing(}{it:A}{cmd:,} {it:v}{cmd:)} 将所有缺失元素更改为 {it:v}，包括不仅仅是 {cmd:.}，还包括 
{cmd:.a}, {cmd:.b}, ..., {cmd:.z}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view editmissing.mata, adopath asis:editmissing.mata};
{cmd:_editmissing()} 是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_editmissing.sthlp>}