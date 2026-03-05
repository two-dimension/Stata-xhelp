{smcl}
{* *! version 1.1.9  15may2018}{...}
{vieweralsosee "[M-5] strtrim()" "mansection M-5 strtrim()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] ustrtrim()" "help mf_ustrtrim_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{viewerjumpto "语法" "mf_strtrim_zh##syntax"}{...}
{viewerjumpto "描述" "mf_strtrim_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_strtrim_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_strtrim_zh##remarks"}{...}
{viewerjumpto "符合性" "mf_strtrim_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_strtrim_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_strtrim_zh##source"}
{help mf_strtrim:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] strtrim()} {hline 2}}移除空格
{p_end}
{p2col:}({mansection M-5 strtrim():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:string matrix} {cmd:stritrim(}{it:string matrix s}{cmd:)}

{p 8 12 2}
{it:string matrix} {cmd:strltrim(}{it:string matrix s}{cmd:)}

{p 8 12 2}
{it:string matrix} {cmd:strrtrim(}{it:string matrix s}{cmd:)}

{p 8 12 2}
{it:string matrix} {cmd:strtrim(}{it:string matrix s}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:stritrim(}{it:s}{cmd:)} 返回 {it:s}，其中所有连续的内部空格被压缩为一个空格。

{p 4 4 2}
{cmd:strltrim(}{it:s}{cmd:)} 返回 {it:s}，去掉前导空格。

{p 4 4 2}
{cmd:strrtrim(}{it:s}{cmd:)} 返回 {it:s}，去掉尾随空格。

{p 4 4 2}
{cmd:strtrim(}{it:s}{cmd:)} 返回 {it:s}，去掉前导和尾随空格。

{p 4 4 2}
当 {it:s} 不是标量时，这些函数返回逐元素的结果。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 strtrim()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
使用 {help mf_ustrtrim_zh:ustrtrim()},{help mf_ustrtrim_zh:ustrrtrim()} 和 
{help mf_ustrtrim_zh:ustltrim()} 来移除Unicode空白和空字符。 


{marker conformability}{...}
{title:符合性}

{p 4 4 2}
{cmd:stritrim(}{it:s}{cmd:)},
{cmd:strltrim(}{it:s}{cmd:)},
{cmd:strrtrim(}{it:s}{cmd:)},
{cmd:strtrim(}{it:s}{cmd:)}:
{p_end}
		{it:s}:  {it:r x c}
	   {it:result}:  {it:r x c}


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
{center:翻译自Stata官方帮助文档 <mf_strtrim.sthlp>}