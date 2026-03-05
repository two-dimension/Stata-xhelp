{smcl}
{* *! version 1.1.7  15may2018}{...}
{vieweralsosee "[M-5] missing()" "mansection M-5 missing()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] editmissing()" "help mf_editmissing_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "Syntax" "mf_missing_zh##syntax"}{...}
{viewerjumpto "Description" "mf_missing_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_missing_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_missing_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_missing_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_missing_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_missing_zh##source"}
{help mf_missing:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] missing()} {hline 2}}统计缺失值和非缺失值
{p_end}
{p2col:}({mansection M-5 missing():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:real rowvector} {cmd:colmissing(}{it:numeric matrix X}{cmd:)}

{p 8 8 2}
{it:real colvector} {cmd:rowmissing(}{it:numeric matrix X}{cmd:)}

{p 8 8 2}
{it:real scalar}{bind:       }{cmd:missing(}{it:numeric matrix X}{cmd:)}


{p 8 8 2}
{it:real rowvector} {cmd:colnonmissing(}{it:numeric matrix X}{cmd:)}

{p 8 8 2}
{it:real colvector} {cmd:rownonmissing(}{it:numeric matrix X}{cmd:)}

{p 8 8 2}
{it:real scalar}{bind:       }{cmd:nonmissing(}{it:numeric matrix X}{cmd:)}

{p 8 8 2}
{it:real scalar}{bind:       }{cmd:hasmissing(}{it:numeric matrix X}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
这些函数返回指定缺失值或非缺失值的数量。

{p 4 4 2}
{cmd:colmissing(}{it:X}{cmd:)} 
返回 {it:X} 每一列的缺失值数量， 
{cmd:rowmissing(}{it:X}{cmd:)} 
返回每一行的缺失值数量，
而 {cmd:missing(}{it:X}{cmd:)} 
返回总体的缺失值数量。

{p 4 4 2}
{cmd:colnonmissing(}{it:X}{cmd:)} 
返回 {it:X} 每一列的非缺失值数量， 
{cmd:rownonmissing(}{it:X}{cmd:)} 
返回每一行的非缺失值数量，
而 {cmd:nonmissing(}{it:X}{cmd:)} 
返回总体的非缺失值数量。

{p 4 4 2}
{cmd:hasmissing(}{it:X}{cmd:)} 
返回 1 如果 {it:X} 有缺失值，否则返回 0。 


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 missing()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

	    {cmd:colnonmissing(}{it:X}{cmd:)}  =  {cmd:rows(}{it:X}{cmd:) :- colmissing(}{it:X}{cmd:)}

	    {cmd:rownonmissing(}{it:X}{cmd:)}  =  {cmd:cols(}{it:X}{cmd:) :- rowmissing(}{it:X}{cmd:)}

	       {cmd:nonmissing(}{it:X}{cmd:)}  =  {cmd:rows(}{it:X}{cmd:)*cols(}{it:X}{cmd:) - missing(}{it:X}{cmd:)}



{marker conformability}{...}
{title:合规性}

{p 4 4 2}
    {cmd:colmissing(}{it:X}{cmd:)},
    {cmd:colnonmissing(}{it:X}{cmd:)}:
{p_end}
		{it:X}:  {it:r x c}
	   {it:result}:  1 {it:x c}

{p 4 4 2}
    {cmd:rowmissing(}{it:X}{cmd:)},
    {cmd:rownonmissing(}{it:X}{cmd:)}:
{p_end}
		{it:X}:  {it:r x c}
	   {it:result}:  {it:r x} 1

{p 4 4 2}
    {cmd:missing(}{it:X}{cmd:)},
    {cmd:nonmissing(}{it:X}{cmd:)},
    {cmd:hasmissing(}{it:X}{cmd:)}:
{p_end}
		{it:X}:  {it:r x c}
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
    无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_missing.sthlp>}