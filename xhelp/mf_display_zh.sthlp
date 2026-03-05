{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] display()" "mansection M-5 display()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] displayas()" "help mf_displayas_zh"}{...}
{vieweralsosee "[M-5] displayflush()" "help mf_displayflush_zh"}{...}
{vieweralsosee "[M-5] printf()" "help mf_printf_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] IO" "help m4_io_zh"}{...}
{viewerjumpto "Syntax" "mf_display_zh##syntax"}{...}
{viewerjumpto "Description" "mf_display_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_display_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_display_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_display_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_display_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_display_zh##source"}
{help mf_display:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] display()} {hline 2}}显示文本并解释 SMCL
{p_end}
{p2col:}({mansection M-5 display():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void}
{cmd:display(}{it:string colvector s}{cmd:)}

{p 8 12 2}
{it:void}
{cmd:display(}{it:string colvector s}{cmd:,}
{it:real scalar asis}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:display(}{it:s}{cmd:)} 
显示包含在 {it:s} 中的字符串或字符串集合。

{p 4 4 2}
{cmd:display(}{it:s}{cmd:,} {it:asis}{cmd:)}
做同样的事情，但允许您控制 SMCL 代码的处理。
{cmd:display(}{it:s}{cmd:,} {cmd:0)} 等同于 
{cmd:display(}{it:s}{cmd:)}；任何 SMCL 代码都会被尊重。

{p 4 4 2}
{cmd:display(}{it:s}{cmd:,} {it:asis}{cmd:)}, {it:asis}!=0, 以完全没有变化的方式显示 {it:s} 的内容。
例如，当 {it:asis}!=0 时，"{c -(}it{c )-}" 仅是字符 {c -(}、i、t 和 {c )-} 的字符串，这些字符会被显示；{c -(}it{c )-} 不会被解释为进入斜体模式的 SMCL。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 display()Remarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
当 {it:s} 是标量时，编码

	: {cmd:display(}{it:s}{cmd:)} 

{p 4 4 2}
和编码 

	: {it:s}

{p 4 4 2}
之间的区别在于

{p 8 12 2}
    1.  {cmd:display(}{it:s}{cmd:)} 不会缩进 {it:s}; 
        单独使用 {it:s} 会导致 {it:s} 被缩进两个空格。

{p 8 12 2}
    2.  {cmd:display(}{it:s}{cmd:)} 会尊重 {it:s} 中包含的任何 SMCL 代码；单独使用 {it:s} 等同于 
        {cmd:display(}{it:s}{cmd:,} {cmd:1)}。例如， 

		: {cmd:s = "这是一段 {c -(}it:示例{c )-}"}

		: {cmd:display(s)}
        	这是一段 {it:示例}
	 
		: {cmd:s}
		  这是一段 {c -(}it:示例{c )-}

{p 8 12 2}
    3.  当 {it:s} 是向量时，{cmd:display(}{it:s}{cmd:)} 
        只是简单地显示每一行，而单独使用 {it:s} 则会给每一行添加行号和列号：

        	{cmd:: s = ("这是第 1 行" \ "这是第 2 行")}

		{cmd:: display(s)}
		这是第 1 行
		这是第 2 行

		{cmd:: s}
                                    1
                    {c TLC}{hline 18}{c TRC}
                  1 {c |}  这是第 1 行  {c |}
                  2 {c |}  这是第 2 行  {c |}
                    {c BLC}{hline 18}{c BRC}

{p 4 4 2}
另一个使用 {cmd:display()} 的替代方法是 {cmd:printf()}；请参见 
{bf:{help mf_printf_zh:[M-5] printf()}}。
当 {it:s} 是标量时，{cmd:display()} 和 {cmd:printf()} 的表现相同：

	: {cmd:display("这是一段 {c -(}it:示例{c )-}")}
	这是一段 {it:示例}
	
	: {cmd:printf("%s\n", "这是一段 {c -(}it:示例{c )-}")}
	这是一段 {it:示例}

{p 4 4 2}
不过，{cmd:printf()} 不允许 {it:s} 为非标量；它有其他能力。


{marker conformability}{...}
{title:符合性}

    {cmd:display(}{it:s}{cmd:,} {it:asis}{cmd:)}
		{it:s}:  {it:k x} 1
	     {it:asis}:  1 {it:x} 1    (可选)
	   {it:result}:  {it:void}


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
{center:翻译自Stata官方帮助文档 <mf_display.sthlp>}