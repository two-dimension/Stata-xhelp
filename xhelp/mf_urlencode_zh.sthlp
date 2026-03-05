{smcl}
{* *! version 1.0.4  15may2018}{...}
{vieweralsosee "[M-5] urlencode()" "mansection M-5 urlencode()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{vieweralsosee "" "--"}{...}
{viewerjumpto "语法" "mf_urlencode_zh##syntax"}{...}
{viewerjumpto "描述" "mf_urlencode_zh##description"}{...}
{viewerjumpto "相容性" "mf_urlencode_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_urlencode_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_urlencode_zh##source"}
{help mf_urlencode:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] urlencode()} {hline 2}}将 URL 转换为百分比编码的 ASCII 格式
{p_end}
{p2col:}({mansection M-5 urlencode():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:string scalar} {cmd:urlencode(}{it:string scalar s}[{cmd:,} {it:real scalar useplus}]{cmd:)}

{p 8 12 2}
{it:string scalar} {cmd:urldecode(}{it:string scalar s}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:urlencode(}{it:s}[{cmd:,} {it:useplus}]{cmd:)} 将字符串转换为 
用于网络传输的百分比编码 ASCII 格式。它用一个 {cmd:%} 后跟两个十六进制数字来替换保留的 ASCII 
字符。如果未指定 {it:useplus} 或其值为 {cmd:0}，则用 {cmd:%20} 替换空格；如果 {it:useplus} 为 1，则用 {cmd:+} 替换空格。

{p 4 4 2}
{cmd:urldecode(}{it:s}{cmd:)} 解码从 {cmd:urlencode()} 获取的字符串，返回原始字符串。  


{marker conformability}{...}
{title:相容性}

{p 4 4 2}
{cmd:urlencode(}{it:s}[{cmd:,} {it:useplus}]{cmd:)},
{cmd:urldecode(}{it:s}{cmd:)}:
{p_end}
	    {it:s}:  1 {it:x} 1
      {it:useplus}:  1 {it:x} 1 
       {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数内置。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_urlencode.sthlp>}