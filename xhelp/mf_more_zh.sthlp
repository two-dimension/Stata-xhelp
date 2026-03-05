{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] more()" "mansection M-5 more()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] more" "help more_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] IO" "help m4_io_zh"}{...}
{viewerjumpto "Syntax" "mf_more_zh##syntax"}{...}
{viewerjumpto "Description" "mf_more_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_more_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_more_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_more_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_more_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_more_zh##source"}
{help mf_more:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-5] more()} {hline 2}}创建 --more-- 条件
{p_end}
{p2col:}({mansection M-5 more():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void}{bind:       }
{cmd:more()}


{p 8 12 2}
{it:实数标量}
{cmd:setmore()}

{p 8 12 2}
{it:void}{bind:       }
{cmd:setmore(}{it:实数标量 onoff}{cmd:)}


{p 8 12 2}
{it:void}{bind:       }
{cmd:setmoreonexit(}{it:实数标量 onoff}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:more()} 显示 {cmd:--more--} 并等待按键。也就是说，如果 {cmd:more} 被打开，{cmd:more()} 就会这样做，否则不会做任何事情。 {cmd:more} 可以通过 Stata 的 {helpb set more} 命令或下面的函数来开启或关闭。

{p 4 4 2}
{cmd:setmore()} 返回 {cmd:more} 是否开启，用 1 和 0 编码。

{p 4 4 2}
{cmd:setmore(}{it:onoff}{cmd:)} 如果 {it:onoff}!=0 则打开 {cmd:more}，否则关闭。

{p 4 4 2}
{cmd:setmoreonexit(}{it:onoff}{cmd:)} 设置在当前执行结束时打开或关闭 {cmd:more}。它对当前设置没有影响。指定的设置将在控制权返回给 Mata 提示符、调用的 ado 文件或 Stata 本身时生效，无论执行是由于 {cmd:return}、{cmd:exit()}、错误还是中止而结束。只有第一次调用 {cmd:setmoreonexit()} 才会有这样的效果。后续调用不会有任何效果。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection M-5 more()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:setmoreonexit()} 用于确保如果程序想要临时重置 {cmd:more} 设置时，该设置会被恢复：

		{cmd:setmoreonexit(setmore())}
		{cmd:setmore(0)}

{p 4 4 2}
只有第一次调用 {cmd:setmoreonexit()} 才有效。这样，一个在不同环境中使用的子例程也可能包含 

		{cmd:setmoreonexit(setmore())}
		{cmd:setmore(0)}

{p 4 4 2}
这不会导致错误的 {cmd:more} 设置被恢复，如果早期的例程已经这样做过，但仍然会导致正确的设置在子例程作为第一个发出 {cmd:setmoreonexit()} 的情况下被恢复。


{marker conformability}{...}
{title:符合性}

{p 4 4 2}
{cmd:more()} 不接受任何参数，返回 {it:void}。

    {cmd:setmore()}:
	   {it:结果}:  1 {it:x} 1

    {cmd:setmore(}{it:onoff}{cmd:)}, {cmd:setmoreonexit(}{it:onoff}{cmd:)}:
	    {it:onoff}:  1 {it:x} 1
	   {it:结果}:  {it:void}
		

{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内建的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_more.sthlp>}