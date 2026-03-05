{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] st_varname()" "mansection M-5 st_varname()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] st_tsrevar()" "help mf_st_tsrevar_zh"}{...}
{vieweralsosee "[M-5] st_varindex()" "help mf_st_varindex_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "Syntax" "mf_st_varname_zh##syntax"}{...}
{viewerjumpto "Description" "mf_st_varname_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_st_varname_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_st_varname_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_st_varname_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_st_varname_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_st_varname_zh##source"}
{help mf_st_varname:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-5] st_varname()} {hline 2}}从变量索引获取变量名{p_end}
{p2col:}({mansection M-5 st_varname():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:string rowvector}
{cmd:st_varname(}{it:real rowvector k}{cmd:)}

{p 8 12 2}
{it:string rowvector}
{cmd:st_varname(}{it:real rowvector k}{cmd:,}
{it:real scalar tsmap}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:st_varname(}{it:k}{cmd:)} 返回与存储在 {it:k} 中的变量索引相关联的 Stata 变量名。例如，在内存中使用汽车数据

	{cmd:names = st_varname((1..3))}

{p 4 4 2}
将导致 {cmd:names} 的内容为 ("make", "price", "mpg")。

{p 4 4 2}
{cmd:st_varname(}{it:k}{cmd:,} {it:tsmap}{cmd:)} 的功能相同，但允许您指定是否要获取通过 Mata 函数 {cmd:st_tsrevar()} 创建的任何时间序列变量的实际或逻辑变量名（请参见 {bf:{help mf_st_tsrevar_zh:[M-5] st_tsrevar()}}）或通过 Stata 命令 {cmd:tsrevar} 创建的变量（请参见 {bf:{help tsrevar_zh:[TS] tsrevar}}）。

{p 4 4 2}
{cmd:st_varname(}{it:k}{cmd:)} 等同于 {cmd:st_varname(}{it:k}{cmd:,} {cmd:0)}；返回实际变量名。

{p 4 4 2}
{cmd:st_varname(}{it:k}{cmd:, 1)} 返回逻辑变量名。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 st_varname()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
要理解 {cmd:st_varname(}{it:k}{cmd:, 1)} 的行为，假设变量 58 是由 {cmd:st_tsrevar()} 创建的：

	{cmd:k = st_tsrevar(("gnp", "r", "l.gnp"))}

{p 4 4 2}
假设 {cmd:k} 现在包含 (12, 5, 58)。变量 58 是一个新的临时变量，包含 {cmd:l.gnp} 的值。如果您询问该变量的实际名称

	{cmd:actualnames = st_varname(k)}

{p 4 4 2}
{cmd:actualnames} 将包含 
("gnp", "r", "__00004a")，尽管最后一个变量的名称会因为它是一个临时变量而有所不同。如果您询问逻辑名称，

	{cmd:logicalnames = st_varname(k, 1)}

{p 4 4 2}
您将获得 ("gnp", "r", "L.gnp")。


{marker conformability}{...}
{title:一致性}

    {cmd:st_varname(}{it:k}, {it:tsmap}{cmd:)}
		{it:k}:  1 {it:x c}
	    {it:tsmap}:  1 {it:x} 1    (可选)
	   {it:result}:  1 {it:x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:st_varname(}{it:k}{cmd:)} 和 
{cmd:st_varname(}{it:k}{cmd:,} {it:tsmap}{cmd:)}
在任何 {it:k} 的元素小于 1 或大于 {cmd:st_nvar()} 时会中止并返回错误；请参见 {bf:{help mf_st_nvar_zh:[M-5] st_nvar()}}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
该函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_varname.sthlp>}