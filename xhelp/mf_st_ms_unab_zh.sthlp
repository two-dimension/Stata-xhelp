{smcl}
{* *! version 1.0.1  18mar2013}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] matrix rownames" "help matrix_rownames_zh"}{...}
{vieweralsosee "[P] _ms_unab" "help _ms_unab_zh"}{...}
{viewerjumpto "Syntax" "mf_st_ms_unab_zh##syntax"}{...}
{viewerjumpto "Description" "mf_st_ms_unab_zh##description"}{...}
{viewerjumpto "Conformability" "mf_st_ms_unab_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_st_ms_unab_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_st_ms_unab_zh##source"}
{help mf_st_ms_unab:English Version}
{hline}{...}
{title:标题}

{phang}
{hi:[M-5] st_ms_unab()} {hline 2} 反缩写矩阵条纹元素
{p_end}


{marker syntax}{...}
{title:语法}

{phang2}
{it:void}{space 8}
{cmd:st_ms_unab(}{it:spec}{cmd:)}

{phang2}
{it:real scalar}
{cmd:_st_ms_unab(}{it:spec}{cmd:)}

{phang2}
{it:real scalar}
{cmd:_st_ms_unab(}{it:spec}{cmd:,} {it:noisily}{cmd:)}

{pstd}
其中

		{it:spec}:  {it:string scalar}
	     {it:noisily}:  {it:real scalar}


{marker description}{...}
{title:描述}

{pstd}
{cmd:st_ms_unab(}{it:spec}{cmd:)} 通过使用当前数据集中的变量名称反缩写 {it:spec}，更新 {it:spec} 的内容。

{pstd}
{cmd:_st_ms_unab(}{it:spec}{cmd:)} 等效于
{cmd:st_ms_unab(}{it:spec}{cmd:)}，只是在发生解析错误或模棱两可的缩写时静默返回 Stata 返回代码。

{pstd}
{cmd:_st_ms_unab(}{it:spec}{cmd:,} {it:noisily}{cmd:)} 等效于
{cmd:_st_ms_unab(}{it:spec}{cmd:)}，只是在解析错误或模棱两可的缩写发生时，如果 {it:noisily} 既不为零也不为缺失，Stata 将报告错误信息。


{marker conformability}{...}
{title:适应性}

     {cmd:st_ms_unab(}{it:spec}{cmd:)}:
	     {it:spec}:  1 {it:x} 1
	   {it:result}:  {it:void}

    {cmd:_st_ms_unab(}{it:spec}{cmd:)}:
	     {it:spec}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1

    {cmd:_st_ms_unab(}{it:spec}{cmd:,} {it:noisily}{cmd:)}:
	     {it:spec}:  1 {it:x} 1
	  {it:noisily}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{pstd}
如果任何参数格式错误，则所有这些函数均会中止并报告错误。 {it:noisily} 指示 Stata 是否在 {it:spec} 无法解析或出现模棱两可的缩写时报告错误信息。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view st_ms_unab.mata, adopath asis:st_ms_unab.mata};
{cmd:_st_ms_unab()} 是内置函数。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_ms_unab.sthlp>}