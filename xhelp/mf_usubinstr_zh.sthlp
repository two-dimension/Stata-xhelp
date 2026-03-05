{smcl}
{* *! version 1.0.4  15may2018}{...}
{vieweralsosee "[M-5] usubinstr()" "mansection M-5 usubinstr()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] subinstr()" "help mf_subinstr_zh"}{...}
{vieweralsosee "[M-5] substr()" "help mf_substr_zh"}{...}
{vieweralsosee "[M-5] _substr()" "help mf__substr_zh"}{...}
{vieweralsosee "[M-5] usubstr()" "help mf_usubstr_zh"}{...}
{vieweralsosee "[M-5] _usubstr()" "help mf__usubstr_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}{...}
{viewerjumpto "Syntax" "mf_usubinstr_zh##syntax"}{...}
{viewerjumpto "Description" "mf_usubinstr_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_usubinstr_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_usubinstr_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_usubinstr_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_usubinstr_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_usubinstr_zh##source"}
{help mf_usubinstr:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] usubinstr()} {hline 2}}替换 Unicode 子字符串{p_end}
{p2col:}({mansection M-5 usubinstr():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 34 2}
{it:string matrix}
{cmd:usubinstr(}{it:string matrix s}{cmd:,}
                  {it:string matrix old}{cmd:,}{break} 
                  {it:string matrix new}{cmd:,} {it:real matrix cnt}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:usubinstr(}{it:s}{cmd:,} {it:old}{cmd:,} {it:new}{cmd:,} {it:cnt}{cmd:)}
将 Unicode 字符串 {it:old} 的前 {it:cnt} 个出现替换为字符串 {it:new} 在 {it:s} 中。如果 {it:cnt} 为 {it:missing}，则替换所有出现。 

{p 4 4 2}
当参数不是标量时，此函数返回逐元素的结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 usubinstr()Remarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
在 {it:s}、{it:old} 或 {it:new} 中的无效 UTF-8 字符序列在执行替换之前会被替换为 Unicode 替换字符 {bf:\ufffd}。

{p 4 4 2}
如果您的字符串不包含 Unicode 字符，或者如果您希望基于字节替换子字符串，请使用 {help mf_subinstr_zh:subinstr()}。 


{marker conformability}{...}
{title:符合性}

{p 4 4 2}
{cmd:usubinstr(}{it:s}{cmd:,} {it:old}{cmd:,} {it:new}{cmd:,} {it:cnt}{cmd:)}:
{p_end}
		{it:s}:  {it:r x c}
	      {it:old}:  {it:r x c} 或 1 {it:x} 1
	      {it:new}:  {it:r x c} 或 1 {it:x} 1
	      {it:cnt}:  {it:r x c} 或 1 {it:x} 1
	   {it:result}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:usubinstr(}{it:s}{cmd:,} {it:old}{cmd:,} {it:new}{cmd:,} {it:cnt}{cmd:)}
如果发生错误，则返回空字符串。 


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_usubinstr.sthlp>}