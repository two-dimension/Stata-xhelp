{smcl}
{* *! version 1.2.5  15may2018}{...}
{vieweralsosee "[M-5] st_tsrevar()" "mansection M-5 st_tsrevar()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] st_varindex()" "help mf_st_varindex_zh"}{...}
{vieweralsosee "[M-5] st_varname()" "help mf_st_varname_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "语法" "mf_st_tsrevar_zh##syntax"}{...}
{viewerjumpto "描述" "mf_st_tsrevar_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_st_tsrevar_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_st_tsrevar_zh##remarks"}{...}
{viewerjumpto "可兼容性" "mf_st_tsrevar_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_st_tsrevar_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_st_tsrevar_zh##source"}
{help mf_st_tsrevar:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-5] st_tsrevar()} {hline 2}}创建时间序列操作变量名变量
{p_end}
{p2col:}({mansection M-5 st_tsrevar():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real rowvector}{bind: }
{cmd:st_tsrevar(}{it:string rowvector s}{cmd:)}

{p 8 12 2}
{it:real rowvector}
{cmd:_st_tsrevar(}{it:string rowvector s}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:st_tsrevar(}{it:s}{cmd:)} 是 Stata 的 
{bf:{help tsrevar_zh:[TS] tsrevar}} 编程命令的等价物：它生成临时 
变量，包含在 {it:s} 中出现的任何 {it:op}{cmd:.}{it:varname}
组合的评估结果。

{p 4 4 2}
{cmd:_st_tsrevar(}{it:s}{cmd:)} 的功能与 {cmd:st_tsrevar()} 相同。
这两个函数的区别在于它们对 {it:s} 中无效元素的响应。
{cmd:st_tsrevar()} 会以错误终止，而 
{cmd:_st_tsrevar()} 会在返回结果的相应元素中填入缺失值。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 st_tsrevar()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
这两个函数在使用视图和时间序列变量时有助于提高效率。
假设在 
{it:vars} 中，你有一组 Stata 变量名称，其中某些名称可能包含 
时间序列 {it:op}{cmd:.}{it:varname} 组合，比如 {cmd:l.gnp}。
例如，{it:vars} 可能包含 

	{it:vars} = {cmd:"gnp r l.gnp"}

{p 4 4 2}
如果你想在 {it:V} 中创建一个对数据的视图，通常会 
编写 

	{cmd:st_view(}{it:V}{cmd:, .,} {it:vars}{cmd:)}

{p 4 4 2}
但是我们不会这样做，因为我们计划在 {it:V} 上进行许多计算，
为了加快执行速度，我们希望在创建 {it:V} 时只评估一次任何 
{it:op}{cmd:.}{it:varname} 组合。当然，如果效率是我们唯一关心的， 
我们会编写 

	{it:V} = {cmd:st_data(.,} {it:vars}{cmd:)}

{p 4 4 2}
然而，假设我们有大量数据，所以内存是一个问题，但我们仍然希望
在不复制数据的限制下尽可能高效。解决方案是编写，

	{cmd:st_view(}{it:V}{cmd:, ., st_tsrevar(tokens(}{it:vars}{cmd:)))}

{p 4 4 2}
{cmd:st_tsrevar()} 会为每个 
{it:op}{cmd:.}{it:varname} 组合创建临时变量（在我们的例子中为 {cmd:l.gnp}），
然后返回每个变量的 Stata 索引，无论是新创建的还是已经存在的。如果
{cmd:gnp} 在数据集中的第二个位置，{cmd:r} 在第23个位置，总共有54个变量，
那么 {cmd:st_tsrevar()} 返回的结果将是 (2, 23, 55)。变量 55 是新的，
由 {cmd:st_tsrevar()} 创建，包含 {cmd:l.gnp} 的值。这个新变量是临时的，
将在适当的时候自动删除。


{marker conformability}{...}
{title:可兼容性}

    {cmd:st_tsrevar(}{it:s}{cmd:)}, {cmd:_st_tsrevar(}{it:s}{cmd:)}:
		{it:s}:  1 {it:x c}
	   {it:result}:  1 {it:x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果找不到任何变量名或任何 {it:op}{cmd:.}{it:varname} 组合无效，
{cmd:st_tsrevar()} 将以错误终止。

{p 4 4 2}
{cmd:_st_tsrevar()} 会在返回结果的相应元素中填入缺失值，
对于找不到的任何变量名或无效的任何 {it:op}{cmd:.}{it:varname} 组合。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_tsrevar.sthlp>}