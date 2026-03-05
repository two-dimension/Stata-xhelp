{smcl}
{* *! version 1.0.2  11feb2011}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] st_matrix()" "help mf_st_matrix_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] matrix list" "help matrix_list"}{...}
{viewerjumpto "语法" "mf_st_matrix_list_zh##syntax"}{...}
{viewerjumpto "描述" "mf_st_matrix_list_zh##description"}{...}
{viewerjumpto "兼容性" "mf_st_matrix_list_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_st_matrix_list_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_st_matrix_list_zh##source"}
{help mf_st_matrix_list:English Version}
{hline}{...}
{title:标题}

{phang}
{cmd:[M-5] st_matrix_list()} {hline 2} 列出 Stata 矩阵


{marker syntax}{...}
{title:语法}

{phang2}
{it:void}
{cmd:st_matrix_list(}{it:name}{cmd:)}

{phang2}
{it:void}
{cmd:st_matrix_list(}{it:name}{cmd:,}
	{it:{help format_zh}}{cmd:,}
	{it:title}{cmd:,}
	{it:blank}{cmd:,}
	{it:half}{cmd:,}
	{it:header}{cmd:,}
	{it:names}{cmd:,}
	{it:dotz}{cmd:)}

{pstd}
其中

	  {it:name}:  {it:string scalar}
	{it:format}:  {it:string scalar}
	 {it:title}:  {it:string scalar}
	 {it:blank}:  {it:real   scalar}
	  {it:half}:  {it:real   scalar}
	{it:header}:  {it:real   scalar}
	 {it:names}:  {it:real   scalar}
	  {it:dotz}:  {it:real   scalar}


{marker description}{...}
{title:描述}

{pstd}
{cmd:st_matrix_list(}{it:name}{cmd:)} 列出 Stata 矩阵 {it:name} 的内容。
其他可选参数控制 {cmd:st_matrix_list()} 的输出方式。

{phang}
{it:format} 指定显示 Stata 矩阵 {it:name} 元素的数值格式。默认值为 {cmd:"%10.0g"}。

{phang}
{it:title} 作为矩阵内容之前显示的标题添加到头部。默认值为 {cmd:""}。

{phang}
{it:blank} 指示是否在显示矩阵内容之前添加空行。默认值为 {cmd:1}。

{phang}
{it:half} 指示是否以下三角形式显示对称矩阵。默认值为 {cmd:1}。

{phang}
{it:header} 指示是否显示头部。头部包含矩阵名称、矩阵维度、可选标题以及矩阵是否对称。默认值为 {cmd:1}。

{phang}
{it:names} 指示是否在矩阵周围显示行名和列名。默认值为 {cmd:1}。

{phang}
{it:dotz} 指示是否显示 {cmd:.z} 缺失值。如果 {it:dotz}{cmd:==0}，则 {cmd:st_matrix_list()} 将 {cmd:.z} 缺失值显示为空白。默认值为 {cmd:1}。


{marker conformability}{...}
{title:兼容性}

    {cmd:st_matrix_list(}{it:name}{cmd:,} {it:{help format_zh}}{cmd:,} {it:title}{cmd:,} {it:blank}{cmd:,}
		   {it:half}{cmd:,} {it:header}{cmd:,} {it:names}{cmd:,} {it:dotz}{cmd:)}
	     {it:name}:  1 {it:x} 1
	   {it:format}:  1 {it:x} 1  (可选)
	    {it:title}:  1 {it:x} 1  (可选)
	    {it:blank}:  1 {it:x} 1  (可选)
	     {it:half}:  1 {it:x} 1  (可选)
	   {it:header}:  1 {it:x} 1  (可选)
	    {it:names}:  1 {it:x} 1  (可选)
	     {it:dotz}:  1 {it:x} 1  (可选)
	   {it:result}:  {it:void}


{marker diagnostics}{...}
{title:诊断}

{pstd}
如果 {cmd:st_matrix_list(}{it:name}{cmd:)} 的任何参数格式不正确，将以错误方式中止。


{marker source}{...}
{title:源代码}

{pstd}
{view st_matrix_list.mata, adopath asis:st_matrix_list.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_matrix_list.sthlp>}