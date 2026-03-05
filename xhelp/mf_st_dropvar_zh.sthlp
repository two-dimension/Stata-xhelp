{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] st_dropvar()" "mansection M-5 st_dropvar()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "语法" "mf_st_dropvar_zh##syntax"}{...}
{viewerjumpto "描述" "mf_st_dropvar_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_st_dropvar_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_st_dropvar_zh##remarks"}{...}
{viewerjumpto "兼容性" "mf_st_dropvar_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_st_dropvar_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_st_dropvar_zh##source"}
{help mf_st_dropvar:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-5] st_dropvar()} {hline 2}}删除变量或观察值
{p_end}
{p2col:}({mansection M-5 st_dropvar():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void}
{cmd:st_dropvar(}{it:可变形行向量 vars}{cmd:)}


{p 8 12 2}
{it:void}
{cmd:st_dropobsin(}{it:真实矩阵 范围}{cmd:)}

{p 8 12 2}
{it:void}
{cmd:st_dropobsif(}{it:真实列向量 选择}{cmd:)}


{p 8 12 2}
{it:void}
{cmd:st_keepvar(}{it:可变形行向量 vars}{cmd:)}


{p 8 12 2}
{it:void}
{cmd:st_keepobsin(}{it:真实矩阵 范围}{cmd:)}

{p 8 12 2}
{it:void}
{cmd:st_keepobsif(}{it:真实列向量 选择}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:st_dropvar(}{it:vars}{cmd:)} 删除指定的变量。
{it:vars} 是一个可能包含变量名或变量索引的行向量。 {cmd:st_dropvar(.)} 删除所有变量和观察值。

{p 4 4 2}
{cmd:st_dropobsin()} 和 
{cmd:st_dropobsif()} 涉及删除观察值。

{p 4 4 2}
{cmd:st_dropobsin(}{it:范围}{cmd:)} 指定要删除的观察值：

{p 8 12 2}
{cmd:st_dropobsin(5)} 删除观察值 5。  

{p 8 12 2}
{cmd:st_dropobsin((5,9))} 删除观察值 5 到 9。  

{p 8 12 2}
{cmd:st_dropobsin((5\8\12))} 删除观察值 5、8 和 12。

{p 8 12 2}
{cmd:st_dropobsin((5,7\8,11\13,13))} 删除观察值 5 到 7、8 到 11 和 13。

{p 8 12 2}
{cmd:st_dropobsin(.)} 删除所有观察值（但不删除变量）。

{p 8 12 2}
{cmd:st_dropobsin(J(0,1,.))} 不删除观察值（或变量）。

{p 4 4 2}
{cmd:st_dropobsif(}{it:select}{cmd:)} 指定一个 {cmd:st_nobs()} {it:x} 
1 向量。 删除使得 {it:select}_{it:i}!=0 的观察值。

{p 4 4 2}
{cmd:st_keepvar()}, 
{cmd:st_keepobsin()} 和 {cmd:st_keepobsif()} 做同样的事情，只不过指定要保留的变量和观察值。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 st_dropvar()备注和示例:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
要删除所有变量和观察值，可以编码 
{cmd:st_dropvar(.)},  
{cmd:st_keepvar(J(1,0,.))}, 
或
{cmd:st_keepvar(J(1,0,""))}。 三者功能相同。
删除所有变量将清空数据集。

{p 4 4 2}
然而，删除所有观察值则保留变量不变。


{marker conformability}{...}
{title:兼容性}

    {cmd:st_dropvar(}{it:vars}{cmd:)}, {cmd:st_keepvar(}{it:vars}{cmd:)}:
	     {it:vars}:  1 {it:x k}
	   {it:result}:  {it:void}


    {cmd:st_dropobsin(}{it:范围}{cmd:)}, {cmd:st_keepobsin(}{it:范围}{cmd:)}:
	    {it:范围}:  {it:k x} 1  或  {it:k x} 2
	   {it:result}:  {it:void}

    {cmd:st_dropobsif(}{it:select}{cmd:)}, {cmd:st_keepobsif(}{it:select}{cmd:)}:
	   {it:select}:  {cmd:st_nobs()} {it:x} 1
	   {it:result}:  {it:void}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:st_dropvar(}{it:vars}{cmd:)} 和
{cmd:st_keepvar(}{it:vars}{cmd:)}
如果 {it:vars} 的任何元素缺失，除非 {it:vars} 为 1
{it:x} 1，此时它们将删除或保留所有变量。

{p 4 4 2}
{cmd:st_dropvar(}{it:vars}{cmd:)} 和
{cmd:st_keepvar(}{it:vars}{cmd:)}
如果 {it:vars} 的任何元素不是有效的变量索引或
名称，或者如果 {it:vars} 是一个视图，则将中止并报错。
如果 {it:vars} 被指定为名称，则不允许使用缩写。

{p 4 4 2}
{cmd:st_dropvar()} 和 {cmd:st_keepvar()} 设置 {cmd:st_updata()} （见
{bf:{help mf_st_updata_zh:[M-5] st_updata()}}），除非所有删除的变量都是临时的；见 {bf:{help mf_st_tempname_zh:[M-5] tempname()}}。

{p 4 4 2}
{cmd:st_dropobsin(}{it:范围}{cmd:)} 和
{cmd:st_keepobsin(}{it:范围}{cmd:)}
如果 {it:范围} 的任何元素缺失，除非 {it:范围} 为
1 {it:x} 1，此时它们将删除或保留所有观察值。

{p 4 4 2}
{cmd:st_dropobsin(}{it:范围}{cmd:)} 和
{cmd:st_keepobsin(}{it:范围}{cmd:)}
如果 {it:范围} 的任何元素不是有效的观察数量（不在 1 和 {cmd:st_nobs()}
[见 {bf:{help mf_st_nvar_zh:[M-5] st_nvar()}}] 之间），或如果 {it:范围} 是一个视图，则将中止并报错。

{p 4 4 2}
{cmd:st_dropobsif(}{it:select}{cmd:)} 和
{cmd:st_keepobsif(}{it:select}{cmd:)}
如果 {it:select} 是一个视图，则将中止并报错。

{p 4 4 2}
{cmd:st_dropobsin()}, 
{cmd:st_dropobsif()}, 
{cmd:st_keepobsin()}, 和
{cmd:st_keepobsif()}
如果从数据中移除任何观察值，则会调用 {cmd:st_updata()}。

{p 4 4 2}
请注意，删除任何变量或观察值后，任何 
先前构建的视图（见 {bf:{help mf_st_view_zh:[M-5] st_view()}}）
可能无效，因为视图在内部以 
变量和观察数量存储。 随后使用无效视图  
可能导致意外结果或中止并报错。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_dropvar.sthlp>}