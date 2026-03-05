{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] st_updata()" "mansection M-5 st_updata()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "Syntax" "mf_st_updata_zh##syntax"}{...}
{viewerjumpto "Description" "mf_st_updata_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_st_updata_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_st_updata_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_st_updata_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_st_updata_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_st_updata_zh##source"}
{help mf_st_updata:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] st_updata()} {hline 2}}确定或设置数据变化标记
{p_end}
{p2col:}({mansection M-5 st_updata():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数标量}
{cmd:st_updata()}

{p 8 12 2}
{it:无效}{bind:       }
{cmd:st_updata(}{it:实数标量值}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:st_updata()} 在数据自上次保存以来没有更改时返回 0，否则返回 1。

{p 4 4 2}
{cmd:st_updata(}{it:值}{cmd:)} 设置数据变化标记为 0（如果 {it:值}=0）否则为 1。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 st_updata()备注和示例:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
Stata 的 {help describe_zh} 命令报告自上次更改以来数据是否已更改。Stata 的 {help use_zh} 命令拒绝加载新数据集，如果当前内存中的数据自上次保存以来未保存。Stata 的其他组件也会对数据变化标记做出反应。

{p 4 4 2}
{cmd:st_updata()} 允许您尊重同一标记。

{p 4 4 2}
此外，作为 Mata 程序员，如果您的函数更改内存中的数据，则必须设置标记。Mata 会尝试为您设置标记 (例如，当您使用 {cmd:st_addvar()} 添加新变量时 [参见 {bf:{help mf_st_addvar_zh:[M-5] st_addvar()}}])，但还有其他地方应该设置标记，您必须做到。例如，Mata 并不会在每次更改数据集中的值时设置标记。每次设置标记可能会减少性能太多。

{p 4 4 2}
而且，即使 Mata 确实设置了标记，它也可能不合适，因为您的程序逻辑使得 Mata 错误识别。例如，您可能添加了一个变量，随后又将其删除。在这种情况下，适当的代码是

	{cmd:priorupdatavalue = st_updata()}
	...
	{cmd:st_updata(priorupdatavalue)}


{marker conformability}{...}
{title:兼容性}

    {cmd:st_updata()}:
	   {it:结果}:  1 {it:x} 1
	
    {cmd:st_updata(}{it:值}{cmd:)}:
	    {it:值}:  1 {it:x} 1
	   {it:结果}:  {it:无效}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_updata.sthlp>}