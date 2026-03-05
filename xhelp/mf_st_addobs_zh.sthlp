{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] st_addobs()" "mansection M-5 st_addobs()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "语法" "mf_st_addobs_zh##syntax"}{...}
{viewerjumpto "描述" "mf_st_addobs_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_st_addobs_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_st_addobs_zh##remarks"}{...}
{viewerjumpto "一致性" "mf_st_addobs_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_st_addobs_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_st_addobs_zh##source"}
{help mf_st_addobs:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] st_addobs()} {hline 2}}向当前 Stata 数据集添加观测值
{p_end}
{p2col:}({mansection M-5 st_addobs():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void}{bind:        }
{cmd:st_addobs(}{it:real scalar n}{cmd:)}

{p 8 12 2}
{it:void}{bind:        }
{cmd:st_addobs(}{it:real scalar n}{cmd:,}
{it:real scalar nofill}{cmd:)}


{p 8 12 2}
{it:real scalar}
{cmd:_st_addobs(}{it:real scalar n}{cmd:)}

{p 8 12 2}
{it:real scalar}
{cmd:_st_addobs(}{it:real scalar n}{cmd:,}
{it:real scalar nofill}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:st_addobs(}{it:n}{cmd:)} 向当前 Stata 数据集添加 {it:n} 个观测值。

{p 4 4 2}
{cmd:st_addobs(}{it:n}{cmd:,} {it:nofill}{cmd:)} 也执行相同操作，但如果 {it:nofill}!=0，则不会用适当的缺失值代码填充额外的观测值，从而节省计算时间。
{cmd:st_addobs(}{it:n}{cmd:, 0)} 等同于 {cmd:st_addobs(}{it:n}{cmd:)}。
不推荐使用 {cmd:st_addobs()} 和 {it:nofill}!=0。如果您指定 {it:nofill}!=0，则有责任确保添加的观测值最终被填充或在控制返回 Stata 之前被移除。

{p 4 4 2}
{cmd:_st_addobs(}{it:n}{cmd:)} 
和 
{cmd:_st_addobs(}{it:n}{cmd:,} {it:nofill}{cmd:)} 与
{cmd:st_addobs(}{it:n}{cmd:)} 
和 
{cmd:st_addobs(}{it:n}{cmd:,} {it:nofill}{cmd:)} 执行相同操作，唯一不同之处在于它们在成功时返回 0，否则返回相应的 Stata 返回代码（通常是由于内存不足造成的）。
如果 {cmd:_st_addobs()} 返回非零，
{cmd:st_addobs()} 将 abort 并报错。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 st_addobs()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
添加观测值时不需要定义任何变量。如果您希望从头创建数据集，可以先添加观测值，然后再添加变量，或者先添加变量再添加观测值。使用 {cmd:st_addvar()} (参见
{bf:{help mf_st_addvar_zh:[M-5] st_addvar()}}) 添加变量。


{marker conformability}{...}
{title:一致性}

    {cmd:st_addobs(}{it:n}{cmd:,} {it:nofill}{cmd:)}:
		{it:n}:  1 {it:x} 1
	   {it:nofill}:  1 {it:x} 1    （可选）
	   {it:result}:  {it:void}

    {cmd:_st_addobs(}{it:n}{cmd:,} {it:nofill}{cmd:)}:
		{it:n}:  1 {it:x} 1
	   {it:nofill}:  1 {it:x} 1    （可选）
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:st_addobs(}{it:n}[{cmd:,} {it:nofill}]{cmd:)} 和 
{cmd:_st_addobs(}{it:n}[{cmd:,} {it:nofill}]{cmd:)}
如果 {it:n}<0，则会 abort 并报错。如果 {it:n}=0，什么也不做。

{p 4 4 2}
如果内存不足以添加请求数量的观测值，{cmd:st_addobs()} 将 abort 并报错。

{p 4 4 2}
{cmd:_st_addobs()} 如果 {it:n}<0 会 abort 并报错，但如果添加观测值成功则返回相应的 Stata 返回代码。如果添加成功，则返回 0。

{p 4 4 2}
{cmd:st_addobs()} 和 {cmd:_st_addobs()} 不会设置 {cmd:st_updata}
（参见 {bf:{help mf_st_updata_zh:[M-5] st_updata()}}）；如果希望它被设置，您必须手动设置。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_addobs.sthlp>}