{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] tokens()" "mansection M-5 tokens()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] gettoken" "help gettoken_zh"}{...}
{vieweralsosee "[M-5] invtokens()" "help mf_invtokens_zh"}{...}
{vieweralsosee "[M-5] tokenget()" "help mf_tokenget_zh"}{...}
{vieweralsosee "[P] tokenize" "help tokenize_zh"}{...}
{vieweralsosee "[M-5] ustrword()" "help mf_ustrword_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{viewerjumpto "Syntax" "mf_tokens_zh##syntax"}{...}
{viewerjumpto "Description" "mf_tokens_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_tokens_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_tokens_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_tokens_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_tokens_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_tokens_zh##source"}
{help mf_tokens:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-5] tokens()} {hline 2}}从字符串中获取标记
{p_end}
{p2col:}({mansection M-5 tokens():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:string rowvector}
{cmd:tokens(}{it:string scalar s}{cmd:)}

{p 8 12 2}
{it:string rowvector}
{cmd:tokens(}{it:string scalar s}{cmd:,}
{it:string scalar parsechars}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:tokens(}{it:s}{cmd:)} 返回 {it:s} 的内容，按单词拆分。

{p 4 4 2}
{cmd:tokens(}{it:s}{cmd:,} {it:parsechars}{cmd:)} 返回 {it:s} 的内容，基于 {it:parsechars} 拆分为标记。

{p 4 4 2}
{cmd:tokens(}{it:s}{cmd:)} 
相当于 {cmd:tokens(}{it:s}{cmd:, " "}。

{p 4 4 2}
如果您需要更高级的解析，
请参阅 {bf:{help mf_tokenget_zh:[M-5] tokenget()}}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 tokens()Remarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:tokens()} 通常用于将包含变量名称序列的字符串拆分为行向量，每个元素包含一个变量名称：

	{cmd:tokens("mpg weight displacement") = ("mpg", "weight", "displacement")}

{p 4 4 2}
一些 Stata 接口函数要求以这种形式指定变量名称。例如， 
{bf:{help mf_st_varindex_zh:[M-5] st_varindex()}} 需要这样。如果您有一个字符串标量 {cmd:vars} 包含一个或多个变量名称，您可以通过编码来获取它们的变量索引 

	{cmd:indices = st_varindex(tokens(vars))}


{marker conformability}{...}
{title:适配性}

    {cmd:tokens(}{it:s}{cmd:,} {it:parsechars}{cmd:)}
		 {it:s}:  1 {it:x} 1
	{it:parsechars}:  1 {it:x} 1    （可选）
	    {it:result}:  1 {it:x w}, {it:w} = {it:s} 中的单词数（标记）。


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
    如果 {it:s} 包含 ""，则 {cmd:tokens()} 返回 {cmd:J(1,0,"")}。

{p 4 4 2}
    如果 {it:s} 包含双引号或复合双引号材料，则会去掉引号，并将该材料作为一个标记返回。
    例如，

	{cmd:tokens(`"this "is an" example"') = ("this", "is an", "example")}

{p 4 4 2}
    如果 {it:s} 包含引用材料且引号不匹配，结果 
    好像在 {it:s} 的末尾添加了适当数量的闭合引号。例如，

	{cmd:tokens(`"this "is an example"') = ("this", "is an example")}


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_tokens.sthlp>}