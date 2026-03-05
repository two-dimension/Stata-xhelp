{smcl}
{* *! version 1.2.10  14may2018}{...}
{vieweralsosee "[M-5] st_numscalar()" "mansection M-5 st_numscalar()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] st_rclear()" "help mf_st_rclear_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "Syntax" "mf_st_numscalar_zh##syntax"}{...}
{viewerjumpto "Description" "mf_st_numscalar_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_st_numscalar_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_st_numscalar_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_st_numscalar_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_st_numscalar_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_st_numscalar_zh##source"}
{help mf_st_numscalar:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[M-5] st_numscalar()} {hline 2}}从 Stata 标量中获取值和赋值
{p_end}
{p2col:}({mansection M-5 st_numscalar():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real}{bind:  }
{cmd:st_numscalar(}{it:string scalar name}{cmd:)}

{p 8 12 2}
{it:void}{bind:  } 
{cmd:st_numscalar(}{it:string scalar name}{cmd:,} 
{it:real value}{cmd:)}

{p 8 28 2}
{it:void}{bind:  } 
{cmd:st_numscalar(}{it:string scalar name}{cmd:,} 
{it:real value}{cmd:,}
{it:string scalar hcat}{cmd:)}

{p 8 12 2}
{it:string}
{cmd:st_numscalar_hcat(}{it:string scalar name}{cmd:)} 


{p 8 12 2}
{it:string}
{cmd:st_strscalar(}{it:string scalar name}{cmd:)}

{p 8 12 2}
{it:void}{bind:  }
{cmd:st_strscalar(}{it:string scalar name}{cmd:,} 
{it:string value}{cmd:)}


{p 4 8 2}
其中

{p 8 12 2}
1.  函数允许 {it:name} 为 
{p_end}

{p 16 20 2}
     a.  全局标量，例如 {cmd:"myname"},
{p_end}

{p 16 20 2}
     b.  {cmd:r()} 标量，例如 {cmd:"r(mean)"},
{p_end}

{p 16 20 2}
     c.  {cmd:e()} 标量，例如 {cmd:"e(N)"}, 或
{p_end}

{p 16 20 2}
     d.  {cmd:c()} 标量，例如 {cmd:"c(namelenchar)"}。

{p 12 12 2}
注意，字符串标量永远不会出现在 {cmd:r()} 和 {cmd:e()} 中；
因此（b）和（c）不适用于 {cmd:st_strscalar()}。

{p 8 12 2}
2.  {cmd:st_numscalar(}{it:name}{cmd:)} 和 
    {cmd:st_strscalar(}{it:name}{cmd:)} 返回指定 Stata 标量的值。 
    如果指定的 Stata 标量存在，则返回 1 {it:x} 1 结果，
    否则返回 0 {it:x} 0 结果。

{p 8 12 2}
3.  {cmd:st_numscalar(}{it:name}{cmd:,} {it:value}{cmd:)} 和 
    {cmd:st_strscalar(}{it:name}{cmd:,} {it:value}{cmd:)} 设置或重置指定 Stata 标量的内容。

{p 8 12 2}
4.  {cmd:st_numscalar(}{it:name}{cmd:,} {it:value}{cmd:)} 和 
    {cmd:st_strscalar(}{it:name}{cmd:,} {it:value}{cmd:)} 在 {it:value}{cmd:==J(0,0,.)} 时删除指定的 Stata 标量（如果 {it:value} 为 
    0 {it:x} 0）。 

{p 8 12 2}
5.  {cmd:st_numscalar(}{it:name}{cmd:,} {it:value}{cmd:,} {it:hcat}{cmd:)} 
    设置或重置指定的 Stata 标量，并在 {it:name} 为 {cmd:e()} 或 {cmd:r()} 值时设置或重置隐藏或历史状态。允许的 {it:hcat} 值为 
    "{cmd:visible}"、"{cmd:hidden}"、"{cmd:historical}"，和字符串标量发布号，例如 "{cmd:10}"、"{cmd:10.1}"，或任何字符串发布号匹配 "{it:#}[{it:#}][{cmd:.}[{it:#}[{it:#}]]"。有关隐藏和历史存储结果的描述，请参见 {manlink P return}。

{p 12 12 2}
    当使用 {cmd:st_numscalar(}{it:name}{cmd:,} {it:value}{cmd:)} 设置 {cmd:e()} 或 {cmd:r()} 值时，其 {it:hcat} 被设置为 "{cmd:visible}"。

{p 12 12 2}
    由于没有 {cmd:r()} 或 {cmd:e()} 字符串标量值，因此没有 {cmd:st_strscalar()} 的三参数形式。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:st_numscalar(}{it:name}{cmd:)} 返回指定 Stata 数值标量的值，或者如果标量不存在则返回 {help mf_j_zh:J(0,0,.)}。

{p 4 4 2}
{cmd:st_numscalar(}{it:name}{cmd:,} {it:value}{cmd:)} 设置或重置指定数值标量的值，前提是 {it:value}{cmd:!=J(0,0,.)}。当 {it:value}{cmd:==J(0,0,.)} 时，{cmd:st_numscalar(}{it:name}{cmd:,} {it:value}{cmd:)} 删除指定的标量。
{cmd:st_numscalar("x", J(0,0,.))} 清除标量 {cmd:x}，如果标量 {cmd:x} 不存在则不执行任何操作。

{p 4 4 2}
{cmd:st_strscalar(}{it:name}{cmd:)} 返回指定 Stata 字符串标量的值，或者如果标量不存在则返回 {cmd:J(0,0,"")}。

{p 4 4 2}
{cmd:st_strscalar(}{it:name}{cmd:,} {it:value}{cmd:)} 设置或重置指定标量的值，前提是 {it:value}{cmd:!=J(0,0,"")}。当 {it:value}{cmd:==J(0,0,"")} 时，{cmd:st_strscalar(}{it:name}{cmd:,} {it:value}{cmd:)} 删除指定标量。
{cmd:st_strscalar("x", J(0,0,""))} 清除标量 {cmd:x}，如果标量 {cmd:x} 不存在则不执行任何操作。

{p 4 4 2}
关于标量删除，无论您使用 {cmd:st_numscalar(}{it:name}{cmd:, J(0,0,.))} 
还是
{cmd:st_strscalar(}{it:name}{cmd:, J(0,0,"")}; 这两者的结果都是相同的。

{p 4 4 2}
{cmd:st_numscalar(}{it:name}{cmd:,} {it:value}{cmd:,} {it:hcat}{cmd:)} 和
{cmd:st_numscalar_hcat(}{it:name}{cmd:)} 用于设置和查询与 {cmd:e()} 或 {cmd:r()} 值对应的 {it:hcat}。它们也很少使用。有关更多信息，请参见 {manlink R Stored results} 和 {manlink P return}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 st_numscalar()Remarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
请参见 {bf:{help mf_st_global_zh:[M-5] st_global()}}
和
{bf:{help mf_st_rclear_zh:[M-5] st_rclear()}}。


{marker conformability}{...}
{title:相容性}

{p 4 4 2}
    {cmd:st_numscalar(}{it:name}{cmd:)},
    {cmd:st_strscalar(}{it:name}{cmd:)}:
{p_end}
	     {it:name}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1  或  0 {it:x} 0

{p 4 4 2}
    {cmd:st_numscalar(}{it:name}{cmd:,} {it:value}{cmd:)},
    {cmd:st_strscalar(}{it:name}{cmd:,} {it:value}{cmd:)}:
{p_end}
	     {it:name}:  1 {it:x} 1
	    {it:value}:  1 {it:x} 1  或  0 {it:x} 0
	   {it:result}:  {it:void}

    {cmd:st_numscalar(}{it:name}{cmd:,} {it:value}{cmd:,} {it:hcat}{cmd:)}
	     {it:name}:  1 {it:x} 1
	    {it:value}:  1 {it:x} 1
	     {it:hcat}:  1 {it:x} 1
	   {it:result}:  {it:void}

    {cmd:st_numscalar(}{it:name}{cmd:)}
	     {it:name}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果 {it:name} 格式不正确，所有函数会中止并报错。

{p 4 4 2}
{cmd:st_numscalar(}{it:name}{cmd:)} 和 
{cmd:st_strscalar(}{it:name}{cmd:)}
会返回 {cmd:J(0,0,.)} 或 {cmd:J(0,0,"")} 如果 Stata 标量 {it:name} 不存在。然而，如果名称格式不正确，则会中止并报错。

{p 4 4 2}
{cmd:st_numscalar(}{it:name}{cmd:,} {it:value}{cmd:,} {it:hcat}{cmd:)} 
如果 {it:hcat} 不是允许的值，则会中止并报错。

{p 4 4 2}
{cmd:st_numscalar_hcat(}{it:name}{cmd:)} 返回
"{cmd:visible}" 当 {it:name} 不是一个 {cmd:e()} 或 {cmd:r()} 值时，返回 "" 当 {it:name} 是一个不存在的 {cmd:e()} 或 {cmd:r()} 值时。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_numscalar.sthlp>}