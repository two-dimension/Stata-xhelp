{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] st_local()" "mansection M-5 st_local()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "Syntax" "mf_st_local_zh##syntax"}{...}
{viewerjumpto "Description" "mf_st_local_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_st_local_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_st_local_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_st_local_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_st_local_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_st_local_zh##source"}{...}
{viewerjumpto "Reference" "mf_st_local_zh##reference"}
{help mf_st_local:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] st_local()} {hline 2}}从 Stata 宏中获取字符串并将字符串放入 Stata 宏
{p_end}
{p2col:}({mansection M-5 st_local():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:string scalar} 
{cmd:st_local(}{it:string scalar name}{cmd:)}

{p 8 12 2}
{it:void}{bind:         }
{cmd:st_local(}{it:string scalar name}{cmd:,} 
{it:string scalar contents}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:st_local(}{it:name}{cmd:)} 返回指定局部宏的内容。

{p 4 4 2}
{cmd:st_local(}{it:name}{cmd:,} {it:contents}{cmd:)} 设置或重置指定局部宏的内容。如果宏之前不存在，则创建一个新的宏。如果之前存在，新内容将替换旧内容。要从 Mata 中删除局部宏，请输入
{cmd:st_local(}{it:name}{cmd:, "")}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 st_local()Remarksandexamples:备注与示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
请参见 {bf:{help mf_st_global_zh:[M-5] st_global()}}
和
{bf:{help mf_st_rclear_zh:[M-5] st_rclear()}}。


{marker conformability}{...}
{title:兼容性}

    {cmd:st_local(}{it:name}{cmd:)}:
	     {it:name}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1

    {cmd:st_local(}{it:name}{cmd:,} {it:contents}{cmd:)}:
	     {it:name}:  1 {it:x} 1
	 {it:contents}:  1 {it:x} 1
	   {it:result}:  {it:void}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:st_local(}{it:name}{cmd:)} 如果 {it:name} 中的名称未定义，则返回 ""。如果名称格式错误， {cmd:st_local(}{it:name}{cmd:)} 将中止并报错。

{p 4 4 2}
{cmd:st_local(}{it:name}{cmd:,} {it:contents}{cmd:)} 如果 {it:name} 中的名称格式错误，将中止并报错。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内建的。
{p_end}


{marker reference}{...}
{title:参考文献}

{phang}
Gould, W. W. 2008.
{browse "http://www.stata-journal.com/sjpdf.html?articlenum=pr0040":Mata Matters: Macros}.
{it:Stata Journal} 8: 401-412.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_local.sthlp>}