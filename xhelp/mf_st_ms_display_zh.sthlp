{smcl}
{* *! version 1.0.0  07mar2019}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] matrix rownames" "help matrix_rownames_zh"}{...}
{vieweralsosee "[P] _ms_display" "help _ms_display_zh"}{...}
{viewerjumpto "Syntax" "mf_st_ms_display_zh##syntax"}{...}
{viewerjumpto "Description" "mf_st_ms_display_zh##description"}{...}
{viewerjumpto "Conformability" "mf_st_ms_display_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_st_ms_display_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_st_ms_display_zh##source"}
{help mf_st_ms_display:English Version}
{hline}{...}
{title:标题}

{phang}
{hi:[M-5] st_ms_display()} {hline 2} 系数表输出为字符串
{p_end}


{marker syntax}{...}
{title:语法}

{phang2}
{it:string colvector}
{cmd:st_ms_display(}{it:mname}{cmd:)}

{phang2}
{it:string colvector}
{cmd:st_ms_display(}{it:mname}{cmd:,} {it:options}{cmd:)}

{phang2}
{it:string colvector}
{cmd:st_ms_display(}{it:mname}{cmd:,} {it:options}{cmd:,} {it:nooutput}{cmd:)}

{pstd}
其中

		{it:mname}:  {it:string scalar}
	      {it:options}:  {it:string scalar}
	     {it:nooutput}:  {it:real scalar}


{marker description}{...}
{title:描述}

{pstd}
{cmd:st_ms_display(}{it:mname}{cmd:)} 返回由 {help _ms_display_zh} 产生的字符串，循环遍历在 {it:mname} 指定的 Stata 矩阵中的所有列名。

{pstd}
{cmd:st_ms_display(}{it:mname}{cmd:,} {it:options}{cmd:)} 执行相同的操作，但将 {it:options} 传递给 {cmd:_ms_display}。添加选项 {opt row} 以使 {cmd:st_ms_display()} 循环遍历行名。添加选项 {opt vsquish} 以防止空白空间。

{pstd}
{cmd:st_ms_display(}{it:mname}{cmd:,} {it:options}{cmd:,} {it:nooutput}{cmd:)} 执行相同的操作，但如果 {it:nooutput}=0，允许从 {cmd:_ms_display} 输出。

{marker conformability}{...}
{title:兼容性}

     {cmd:st_ms_display(}{it:mname}{cmd:)}:
	    {it:mname}:  1 {it:x} 1
	   {it:result}:  {it:n} {it:x} 1

     {cmd:st_ms_display(}{it:mname}{cmd:,} {it:options}{cmd:)}:
	    {it:mname}:  1 {it:x} 1
	  {it:options}:  1 {it:x} 1
	   {it:result}:  {it:n} {it:x} 1

     {cmd:st_ms_display(}{it:mname}{cmd:,} {it:options}{cmd:,} {it:nooutput}{cmd:)}:
	    {it:mname}:  1 {it:x} 1
	  {it:options}:  1 {it:x} 1
	 {it:nooutput}:  1 {it:x} 1
	   {it:result}:  {it:n} {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{pstd}
如果任何参数格式不正确，所有这些函数都将中断并显示错误消息。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view st_ms_display.mata, adopath asis:st_ms_display.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_ms_display.sthlp>}