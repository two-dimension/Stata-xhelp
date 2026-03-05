{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] st_varindex()" "mansection M-5 st_varindex()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] st_varname()" "help mf_st_varname_zh"}{...}
{vieweralsosee "[M-5] tokens()" "help mf_tokens_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "Syntax" "mf_st_varindex_zh##syntax"}{...}
{viewerjumpto "Description" "mf_st_varindex_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_st_varindex_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_st_varindex_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_st_varindex_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_st_varindex_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_st_varindex_zh##source"}
{help mf_st_varindex:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[M-5] st_varindex()} {hline 2}}从变量名获取变量索引
{p_end}
{p2col:}({mansection M-5 st_varindex():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real rowvector}{bind: }
{cmd:st_varindex(}{it:string rowvector s}{cmd:)}

{p 8 12 2}
{it:real rowvector}{bind: }
{cmd:st_varindex(}{it:string rowvector s}{cmd:,} 
{it:real scalar abbrev}{cmd:)}

{p 8 12 2}
{it:real rowvector}
{cmd:_st_varindex(}{it:string rowvector s}{cmd:)}

{p 8 12 2}
{it:real rowvector}
{cmd:_st_varindex(}{it:string rowvector s}{cmd:,} 
{it:real scalar abbrev}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:st_varindex(}{it:s}{cmd:)} 返回与 {it:s} 中记录的每个变量名相关联的变量索引。 {cmd:st_varindex(}{it:s}{cmd:)} 不允许使用变量名的缩写，如 {cmd:"pr"} 用于 {cmd:"price"}。

{p 4 4 2}
{cmd:st_varindex(}{it:s}{cmd:,} {it:abbrev}{cmd:)} 完成相同的操作，但允许您指定是否允许变量名缩写。如果 {it:abbrev}!=0，则允许缩写。 
{cmd:st_varindex(}{it:s}{cmd:)} 相当于 
{cmd:st_varindex(}{it:s}{cmd:,} {cmd:0)}。

{p 4 4 2}
{cmd:_st_varindex()} 的功能与 {cmd:st_varindex()} 相同。
这两个函数在未找到名称时的响应方式不同。
{cmd:st_varindex()} 会因错误而中止，而 
{cmd:_st_varindex()} 则在返回结果的相应元素中放置缺失值。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 st_varindex()备注和示例:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
这些函数要求 {it:s} 的每个元素包含一个变量名，例如 

		{it:s} = {cmd:("price", "mpg", "weight")}

{p 4 4 2}
如果您有一个包含多个名称的字符串

		{it:s} = {cmd:("price mpg weight")}

{p 4 4 2} 
然后使用 {cmd:tokens()} 将其拆分为所需的形式，如下所示

		{it:k} {cmd:=} {cmd:st_varindex(tokens(}{it:s}{cmd:))}

{p 4 4 2} 
参见 {bf:{help mf_tokens_zh:[M-5] tokens()}}。


{marker conformability}{...}
{title:兼容性}

{p 4 4 2}
    {cmd:st_varindex(}{it:s}{cmd:,} {it:abbrev}{cmd:)},
    {cmd:_st_varindex(}{it:s}{cmd:,} {it:abbrev}{cmd:)}:
{p_end}
		{it:s}:  1 {it:x k}
	   {it:abbrev}:  1 {it:x} 1    (可选)
	   {it:result}:  1 {it:x k}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果未找到任何名称，{cmd:st_varindex()} 会因错误而中止。

{p 4 4 2}
{cmd:_st_varindex()} 会在返回结果的相应元素中放置缺失值，针对任何未找到的名称。


{marker source}{...}
{title:源代码}

{p 4 4 2}
这些函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_varindex.sthlp>}