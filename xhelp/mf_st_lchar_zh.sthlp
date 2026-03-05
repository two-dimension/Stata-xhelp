{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] st_global()" "help mf_st_global_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "语法" "mf_st_lchar_zh##syntax"}{...}
{viewerjumpto "描述" "mf_st_lchar_zh##description"}{...}
{viewerjumpto "备注" "mf_st_lchar_zh##remarks"}{...}
{viewerjumpto "适用性" "mf_st_lchar_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_st_lchar_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_st_lchar_zh##source"}
{help mf_st_lchar:English Version}
{hline}{...}
{title:标题}

{p 4 8 2}
{bf:[M-5] st_lchar()} {hline 2} 获取/设置“长”特征


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void}{bind:         }
{cmd:st_lchar(}{it:basename}{cmd:,} {it:charname}, {it:string scalar s})

{p 8 12 2}
{it:string scalar} 
{cmd:st_lchar(}{it:basename}{cmd:,} {it:charname})



{p 8 12 2}
{it:void}{bind:         }
{cmd:ado_intolchar(}{it:basename}{cmd:,}
{it:charname}{cmd:,}
{it:macname}{cmd:)}

{p 8 12 2}
{it:void}{bind:         }
{cmd:ado_fromlchar(}{it:macname}{cmd:,}
{it:basename}{cmd:,}
{it:charname}{cmd:)}


{p 4 4 2}
其中 {it:basename}、{it:charname} 和 {it:macname} 是 {it:string scalar}。


{marker description}{...}
{title:描述}

{p 4 4 2}
这些函数用于获取和设置可能超过 67,784 字节的 {help char_zh:特征}。
为了在通常情况下获取和设置特征，你可以编码 

		{cmd:s = st_global("_dta[example]")}     // 获取

		{cmd:st_global("_dta[example]", s)}      // 设置

{p 4 4 2}
见 {bf:{help mf_st_global_zh:[M-5] st_global}}。

{p 4 4 2}
特征的最大长度为 67,784 字节，无论你是在运行 {help stataic_zh:Stata/IC}、{help specialedition:Stata/SE} 还是 
{help statamp_zh:Stata/MP}。宏可以比这更长。这些函数允许在特征中保存 Stata 宏，反之亦然，并处理宏可以超过 Stata 特征的最大允许长度的问题。

{p 4 4 2}
{cmd:st_lchar()} 供 Mata 程序员使用：

{p 8 12 2}
1.
{cmd:st_lchar(}{it:charname}{cmd:,} {it:basename}{cmd:,} {it:s}{cmd:)}
将 {it:s} 保存到“长”特征 
{it:basename}{cmd:[}{it:charname}{cmd:]} 中。

{p 8 12 2}
2.
{cmd:st_lchar(}{it:charname}{cmd:,} {it:basename}{cmd:)}
返回“长”特征
{it:basename}{cmd:[}{it:charname}{cmd:]} 的内容。

{p 8 12 2}
3.
{cmd:st_lchar(}{it:charname}{cmd:,} {it:basename}{cmd:, "")}
可用于删除“长”特征 
{it:basename}{cmd:[}{it:charname}{cmd:]}。

{p 4 4 2}
{cmd:ado_intolchar()} 和 {cmd:ado_fromlchar()} 供 
Stata ado 文件程序员使用：

{p 8 12 2}
1.
{cmd:ado_intolchar(}{it:basename}{cmd:,}
{it:charname}{cmd:,}
{it:macname}{cmd:)}
将局部宏 {it:macname} 的内容保存到“长”特征
{it:basename}{cmd:[}{it:charname}{cmd:]} 中。

{p 8 12 2}
2.
{cmd:ado_fromlchar(}{it:macname}{cmd:,}
{it:basename}{cmd:,}
{it:charname}{cmd:)}
将“长”特征
{it:basename}{cmd:[}{it:charname}{cmd:]}
的内容放入局部宏 {it:macname} 中。

{p 8 12 2}
3. 
ado 文件程序员使用与 Mata 程序员相同的函数来 
删除特征：
{cmd:st_lchar(}{it:charname}{cmd:,} {it:basename}{cmd:, "")}
删除“长”特征
{it:basename}{cmd:[}{it:charname}{cmd:]}。


{marker remarks}{...}
{title:备注}

{pstd}
备注分为以下几部分：

        {help mf_st_lchar##remarks1:介绍}
        {help mf_st_lchar##remarks2:示例 1 -- Ado 文件用法}
        {help mf_st_lchar##remarks3:示例 2 -- Mata 用法}


{marker remarks1}{...}
{title:介绍}

{p 4 4 2}
Stata 宏可以长于 Stata 数据集的 {help char_zh:特征}。
特征的最大长度为 67,784 字节。宏比这长。宏可以长多少取决于 
{help memory_zh:maxvar}，因为最大宏长度被定义为足以容纳所有可能 Stata 数据集中的名称，中间留有空格，再加上一些更多的空间。

{p 4 4 2}
在 Stata/IC 中，最大变量数量为 2,048。
变量名称可以是 32 个 Unicode 字符，最长可达 128 字节。变量名称之间留有空格，因此宏必须至少允许 
2,048*129 = 264,192 个字符。

{p 4 4 2}
在 Stata/MP 中，最大变量数量默认是 5,000，并且可以设置为 120,000。因此，宏的最大长度必须至少允许 
5,000*129 = 645,000 到 120,000*129 = 15,480,000 个字符。然而，在所有这些情况下，特征的最大长度仍然固定为 67,784 个字符，这意味着将所有变量名称保存在一个特征中通常是不可能的。

{p 4 4 2}
在 Stata/SE 中，最大变量数量默认是 5,000，并且可以设置为 32,767。因此，宏的最大长度必须至少允许 
5,000*129 = 645,000 到 32,767*129 = 4,226,943 个字符。然而，在所有这些情况下，特征的最大长度仍然固定为 67,784 个字符，这意味着将所有变量名称保存在一个特征中通常是不可能的。

{p 4 4 2}
程序员有时会希望将 varlist 保存到特征中，而该 varlist 可能会很长。Stata 将特征保存在 Stata {cmd:.dta} 数据集中，程序员在特征中保存信息是当它们是数据集的属性，而不是当前会话或当前分析的属性。一个提供数据认证的程序，例如，可能需要保存变量的名称，以便那些名称可以随后与当前名称进行比较，以确定是否添加或删除了任何变量。

{p 4 4 2}
这些函数提供了解决不同长度问题的方案。
将这些函数视为创建、读取和写入 
{it:basename}{cmd:[}{it:charname}{cmd:]}，即使这些函数实际上 
创建、读取和写入 
{it:basename}{cmd:[}{it:charname}{cmd:1]}、 
{it:basename}{cmd:[}{it:charname}{cmd:2]}，依此类推，使用所需的任何多个单独的特征来存储需要存储的内容。

{p 4 4 2}
对于 Mata 程序员， 
{cmd:st_lchar(}{it:charname}{cmd:,} {it:basename}{cmd:,} {it:s}{cmd:)}
将 {it:s} 保存到 
{it:basename}{cmd:[}{it:charname}{cmd:1]}、 
{it:basename}{cmd:[}{it:charname}{cmd:2]} ...... 
{cmd:st_lchar(}{it:charname}{cmd:,} {it:basename}{cmd:)}
返回在 
{it:basename}{cmd:[}{it:charname}{cmd:1]}、 
{it:basename}{cmd:[}{it:charname}{cmd:2]} ...... 中先前设置的内容。

{p 4 4 2}
对于 Stata ado 文件程序员，提供了相同的特性， 
但值是从局部宏中获取和存储的。
{cmd:ado_intolchar(}{it:basename}{cmd:,} {it:charname}{cmd:,} 
{it:macname}{cmd:)} 将 {it:macname} 的内容保存到 
{it:basename}{cmd:[}{it:charname}{cmd:1]}、 
{it:basename}{cmd:[}{it:charname}{cmd:2]} ...... 
{cmd:ado_fromlchar(}{it:macname}{cmd:,} 
{it:basename}{cmd:,} 
{it:charname}{cmd:)} 检索 
{it:basename}{cmd:[}{it:charname}{cmd:1]}、 
{it:basename}{cmd:[}{it:charname}{cmd:2]} ...... 的内容，并将结果存储在 {it:macname} 中。

{p 4 4 2}
在所有这些函数中，你不需要跟踪实际使用了多少个 
特征。将这些函数视为在 
{it:basename}{cmd:[}{it:charname}{cmd:]} 中存储、提取和删除的，
即使这并不字面成立， 实际上 
{it:basename}{cmd:[}{it:charname}{cmd:]} 从未被创建。实际的特征是 
{it:basename}{cmd:[}{it:charname}{cmd:1]}、 
{it:basename}{cmd:[}{it:charname}{cmd:2]} ....。


{marker remarks2}{...}
{title:示例 1 -- Ado 文件用法}

{p 4 4 2}
在一个 ado 文件中，你希望将局部宏 {cmd:varlist} 的内容保存到特征 {cmd:_dta[datacert_vl]} 中。通常你会编码

		{cmd:char _dta[datacert_vl] `varlist'}

{p 4 4 2}
但你担心 {cmd:`varlist'} 可能 
太长，不适合 {cmd:_dta[datacert_vl]}。解决方案是编码

		{cmd:mata:  ado_intolchar("_dta", "datacert_vl", "varlist")}

{p 4 4 2}
以上没有排版错误。你传递的是实体的名称——包括宏——而非它们的内容。

{p 4 4 2}
在代码的另一部分，你希望将存储在 {cmd:_dta[datacert_vl]} 中的内容提取回宏 {cmd:baselist} 中。通常你会编码

		{cmd:local baselist `_dta[datacert_vl]'}

{p 4 4 2}
但，因为你使用了 {cmd:st_intolchar()}，你不能这么做。
相反，你编码

		{cmd:mata:  ado_fromlchar("baselist", "_dta", "datacert_vl")}

{p 4 4 2}
在程序的又一部分中，你希望清除特征。
要清除 {cmd:_dta[datacert_vl]}，通常你会编码

		{cmd:char _dta[datacert_vl]}

{p 4 4 2}
但，因为你使用了 {cmd:st_intolchar()}，你不能这么做。
相反，你编码

		{cmd:mata:  st_lchar("_dta", "datacert_vl", "")}


{marker remarks3}{...}
{title:示例 2 -- Mata 用法}

{p 4 4 2}
在 Mata 代码中，你希望设置 {cmd:_dta[datacert_vl]} 以包含字符串标量 {cmd:s} 的内容。你编码

		{cmd:st_lchar("_dta", "datacert_vl", s)}

{p 4 4 2}
要将存储在 {cmd:_dta[datacert_vl]} 中的内容读取回 {cmd:s}，你编码

		{cmd:s = st_lchar("_dta", "datacert_vl")}

{p 4 4 2}
要删除特征 {cmd:_dta[datacert_vl]}，你编码

		{cmd:st_lchar("_dta", "datacert_vl", "")}


{marker conformability}{...}
{title:适用性}

    {cmd:st_lchar(}{it:basename}{cmd:,} {it:charname}{cmd:,} {it:s}{cmd:)}:
	 {it:basename}:  1 {it:x} 1
	 {it:charname}:  1 {it:x} 1
		{it:s}:  1 {it:x} 1
	   {it:result}:  {it:void}

    {cmd:st_lchar(}{it:basename}{cmd:,} {it:charname}{cmd:)}:
	 {it:basename}:  1 {it:x} 1
	 {it:charname}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1

    {cmd:ado_intolchar(}{it:basename}{cmd:,} {it:charname}{cmd:,} {it:macname}{cmd:)}:
	 {it:basename}:  1 {it:x} 1
	 {it:charname}:  1 {it:x} 1
	  {it:macname}:  1 {it:x} 1
	   {it:result}:  {it:void}

    {cmd:ado_fromlchar(}{it:macname}{cmd:,} {it:basename}{cmd:,} {it:charname}{cmd:)}:
	  {it:macname}:  1 {it:x} 1
	 {it:basename}:  1 {it:x} 1
	 {it:charname}:  1 {it:x} 1
	   {it:result}:  {it:void}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果名称格式不正确，所有函数都将中止并返回错误。请求不存在的特征的内容将返回“”。如果 {it:s} 存储在特征中并被读取回，原始空格（缺少空格多个空格等）将被保留。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view st_lchar.mata, adopath asis:st_lchar.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_lchar.sthlp>}