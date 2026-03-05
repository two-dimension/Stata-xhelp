{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] Vandermonde()" "mansection M-5 Vandermonde()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Standard" "help m4_standard_zh"}{...}
{viewerjumpto "Syntax" "mf_vandermonde_zh##syntax"}{...}
{viewerjumpto "Description" "mf_vandermonde_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_vandermonde_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_vandermonde_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_vandermonde_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_vandermonde_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_vandermonde_zh##source"}
{help mf_vandermonde:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[M-5] Vandermonde()} {hline 2}}范德蒙德矩阵
{p_end}
{p2col:}({mansection M-5 Vandermonde():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:数值矩阵} 
{cmd:Vandermonde(}{it:数值列向量 x}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:Vandermonde(}{it:x}{cmd:)} 返回包含 {it:x} 的几何级数的范德蒙德矩阵，

		{c TLC}{c -}                                  {c -}{c TRC}
		{c |} 1  {it:x}_1  {it:x}_1^2  {it:x}_1^3  ...  {it:x}_1^{it:n}-1 {c |}
		{c |} 1  {it:x}_2  {it:x}_2^2  {it:x}_2^3  ...  {it:x}_2^{it:n}-1 {c |}
		{c |} .   .    .      .             .    {c |}
		{c |} .   .    .      .             .    {c |}
		{c |} .   .    .      .             .    {c |}
		{c |} 1  {it:x}_{it:n}  {it:x}_{it:n}^2  {it:x}_{it:n}^3  ...  {it:x}_{it:n}^{it:n}-1 {c |}
		{c BLC}{c -}                                  {c -}{c BRC}

{p 4 4 2}
其中 {it:n} = {cmd:rows(}{it:x}{cmd:)}。
一些作者使用上述矩阵的转置。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 Vandermonde()Remarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
范德蒙德矩阵在多项式插值中非常有用。


{marker conformability}{...}
{title:兼容性}

    {cmd:Vandermonde(}{it:x}{cmd:)}:
		{it:x}:  {it:n x} 1
	   {it:result}:  {it:n x n}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view vandermonde.mata, adopath asis:vandermonde.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_vandermonde.sthlp>}