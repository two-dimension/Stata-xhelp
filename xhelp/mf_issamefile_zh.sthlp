{smcl}
{* *! version 1.0.1  23feb2019}{...}
{vieweralsosee "[M-5] issamefile()" "mansection M-5 issamefile()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] IO" "help m4_io_zh"}{...}
{viewerjumpto "Syntax" "mf_issamefile_zh##syntax"}{...}
{viewerjumpto "Description" "mf_issamefile_zh##description"}{...}
{viewerjumpto "Remarks" "mf_issamefile_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_issamefile_zh##conformability"}{...}
{viewerjumpto "Source code" "mf_issamefile_zh##source"}
{help mf_issamefile:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-5] issamefile()} {hline 2}}判断两个文件路径是否指向同一文件
{p_end}
{p2col:}({mansection M-5 issamefile():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real scalar}
{cmd:issamefile(}{it:string scalar} {it:{help filename_zh:path1}}{cmd:,}
                 {it:string scalar} {it:{help filename_zh:path2}}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:issamefile(}{it:string scalar} {it:{help filename_zh:path1}}{cmd:,}
{it:string scalar} {it:{help filename_zh:path2}}{cmd:)}
返回1如果 {it:path1} 和 {it:path2} 指向同一文件（该文件必须在文件系统中存在），否则返回0。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:issamefile("C:/test/test.do", "./test.do")} 返回1如果当前工作目录是 {cmd:C:/test/} 并且文件 {cmd:C:/test/test.do} 存在。

{p 4 4 2}
{cmd:issamefile()} 返回0如果 {it:{help filename_zh:path1}} 和
{it:{help filename_zh:path2}} 不指向同一文件或者如果
{it:path1} 或 {it:path2} 指向的文件不存在。


{marker conformability}{...}
{title:兼容性}

{p 4 4 2}
    {cmd:issamefile(}{it:{help filename_zh:path1}}{cmd:,} {it:{help filename_zh:path2}}{cmd:)}:
{p_end}
	  {it:path1}:  1 {it:x} 1
	  {it:path2}:  1 {it:x} 1
	 {it:result}:  1 {it:x} 1


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_issamefile.sthlp>}