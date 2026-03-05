{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] errprintf()" "mansection M-5 errprintf()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] displayas()" "help mf_displayas_zh"}{...}
{vieweralsosee "[M-5] printf()" "help mf_printf_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] IO" "help m4_io_zh"}{...}
{viewerjumpto "Syntax" "mf_errprintf_zh##syntax"}{...}
{viewerjumpto "Description" "mf_errprintf_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_errprintf_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_errprintf_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_errprintf_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_errprintf_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_errprintf_zh##source"}
{help mf_errprintf:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] errprintf()} {hline 2}}格式化输出并显示为错误消息{p_end}
{p2col:}({mansection M-5 errprintf():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void}
{cmd:errprintf(}{it:string scalar fmt}{cmd:,}
{it:r1}{cmd:,}
{it:r2}{cmd:,}
...{cmd:,}
{it:rN}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:errprintf()} 是一个用于显示错误消息的便捷工具。

{p 4 4 2}
{cmd:errprintf(}...{cmd:)} 等同于
{cmd:printf(}{it:...}{cmd:)} 
只是它在执行
{cmd:printf()} 之前，会先执行
{cmd:displayas("error")}；请参见
{bf:{help mf_printf_zh:[M-5] printf()}}
和 
{bf:{help mf_displayas_zh:[M-5] displayas()}}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 errprintf()Remarksandexamples:备注和示例}

{pstd}
上述章节未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
您已编写一个程序。在代码的某个点上，您有一个变量 
{cmd:fn}，它应该包含一个现有文件的名称：  

		{cmd:if (!fileexists(fn)) {c -(}}
			// {it:您希望显示错误消息}
			// {it:文件 ____ 未找到}
			{cmd:exit(601)}
		{cmd:{c )-}}

{p 4 4 2}
一种解决方案是

		{cmd:if (!fileexists(fn)) {c -(}}
			{cmd:displayas("error")}
			{cmd:printf("文件 %s 未找到\n", fn)}
			{cmd:exit(601)}
		{cmd:{c )-}}

{p 4 4 2}
等价的是

		{cmd:if (!fileexists(fn)) {c -(}}
			{cmd:errprintf("文件 %s 未找到\n", fn)}
			{cmd:exit(601)}
		{cmd:{c )-}}

{p 4 4 2}
重要的是，您要么在使用
{cmd:printf()} 之前使用 {cmd:displayas("error")}，要么使用 {cmd:errprintf()}，以确保 
错误消息能够显示（不会被 
{help quietly_zh} 隐藏）并以红色显示；请参见 
{bf:{help mf_displayas_zh:[M-5] displayas()}}。


{marker conformability}{...}
{title:兼容性}

{p 4 8 2}
{cmd:errprintf(}{it:fmt}{cmd:,}
{it:r1}{cmd:,}
{it:r2}{cmd:,}
...{cmd:,}
{it:rN}{cmd:)}
{p_end}
	      {it:fmt}:  1 {it:x} 1
	       {it:r1}:  1 {it:x} 1
	       {it:r2}:  1 {it:x} 1
	       ...
	       {it:rN}:  1 {it:x} 1
	   {it:result}:  {it:void}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:errprintf()} 如果 
{help format_zh:%{it:fmt}} 被错误指定，或者数值 {cmd:%}{it:fmt} 
与字符串结果不匹配，或字符串 {cmd:%}{it:fmt} 
与数值结果不匹配，或 
{cmd:%}{it:fmts} 的数量相对于指定的 
{it:results} 数量过少或过多时，将中止并报错。


{marker source}{...}
{title:源代码}

{p 4 4 2}
此函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_errprintf.sthlp>}