{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] soundex()" "mansection M-5 soundex()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{viewerjumpto "Syntax" "mf_soundex_zh##syntax"}{...}
{viewerjumpto "Description" "mf_soundex_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_soundex_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_soundex_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_soundex_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_soundex_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_soundex_zh##source"}
{help mf_soundex:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] soundex()} {hline 2}}将字符串转换为soundex代码
{p_end}
{p2col:}({mansection M-5 soundex():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:string matrix} {bind:     }{cmd:soundex(}{it:string matrix s}{cmd:)}

{p 8 12 2}
{it:string matrix} {cmd:soundex_nara(}{it:string matrix s}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:soundex(}{it:s}{cmd:)} 返回字符串 {it:s} 的soundex代码。 
soundex代码由一个字母和三个数字组成：字母是名字的第一个字母，数字编码了其余的辅音。相似的发音辅音由相同的数字编码。

{p 4 4 2}
{cmd:soundex_nara(}{it:s}{cmd:)} 返回字符串 {it:s} 的美国人口普查soundex代码。 
soundex代码由一个字母和三个数字组成：字母是名字的第一个字母，数字编码了其余的辅音。相似的发音辅音由相同的数字编码。

{p 4 4 2}
当 {it:s} 不是标量时，这些函数返回逐元素的结果。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 soundex()Remarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:soundex("Ashcraft")} 返回 {cmd:"A226"}。

{p 4 4 2}
{cmd:soundex_nara("Ashcraft")} 返回 {cmd:"A261"}。


{marker conformability}{...}
{title:适用性}

{p 4 4 2}
{cmd:soundex(}{it:s}{cmd:)},
{cmd:soundex_nara(}{it:s}{cmd:)}:
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
{center:翻译自Stata官方帮助文档 <mf_soundex.sthlp>}