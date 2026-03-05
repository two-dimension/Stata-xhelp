{smcl}
{* *! version 1.0.11  15may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi reset" "mansection MI mireset"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi update" "help mi_update_zh"}{...}
{viewerjumpto "Syntax" "mi_reset_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_reset_zh##menu"}{...}
{viewerjumpto "Description" "mi_reset_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_reset_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_reset_zh##options"}{...}
{viewerjumpto "Remarks" "mi_reset_zh##remarks"}
{help mi_reset:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[MI] mi reset} {hline 2}}重置插补或被动变量
{p_end}
{p2col:}({mansection MI mireset:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{cmd:mi} {cmd:reset} 
{varlist} 
[{bf:=} {it:{help exp_zh}}]
[{it:{help if_zh}}]
[{cmd:,}
{it:options}]

{synoptset 15 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{cmd:m(}{it:{help numlist_zh}}{cmd:)}}要重置的 {it:m} 的值；默认是全部{p_end}

{synopt:{cmdab:noup:date}}查看 {bf:{help mi_noupdate_option_zh:[MI] noupdate 选项}}{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:reset} 重置指定的插补或被动变量。值重置为 {it:m}=0 中的值，通常是缺失值，但如果您指定了 {cmd:=} {it:exp}，则重置为指定的值。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI miresetRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{p 4 8 2}
{cmd:m(}{it:{help numlist_zh}}{cmd:)} 
    指定要重置的 {it:m} 的值；默认是更新所有 {it:m} 的值。如果 {it:M} 等于 3，默认则相当于指定 {cmd:m(1/3)} 或 {cmd:m(1} {cmd:2}
    {cmd:3)}。如果您希望仅在 {it:m}=2 下更新指定变量，可以指定 {cmd:m(2)}。

{p 4 8 2}
{cmd:noupdate}
    在某些情况下抑制此命令可能执行的自动 {cmd:mi} {cmd:update}； 
    请查看 {bf:{help mi_noupdate_option_zh:[MI] noupdate 选项}}。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注按以下标题呈现：

	{help mi_reset##use:使用 mi reset}
	{help mi_reset##tech:技术说明和与 mi update 的关系}
	

{marker use}{...}
{title:使用 mi reset}

{p 4 4 2}
重置插补或被动变量意味着将其在 {it:m}>0 的值设定为 {it:m}=0 中记录的值。例如，如果变量 {cmd:inc} 被插补，输入

	. {cmd:mi reset inc}
	(15 个值被重置)

{p 4 4 2}
将把其不完整值重置为所有 {it:m} 中的缺失值。在示例输出中，我们恰好有 {it:M}=5，并将每个插补中的三个之前插补的值重置为缺失。

{p 4 4 2}
重置插补变量的需求很少，但可以想象一些情况。你的同事乔给你发来了数据，并刚在电话中联系你。“我发送的数据中有一个值是错的，”他说。“对于 {cmd:inc} 有一个插补值是 15000，这显然是荒谬的。在我查明发生了什么之前，把它重置为缺失值。” 
于是你输入

	. {cmd:mi reset inc if inc==15000}
	(1 个值被重置)

{p 4 4 2}
后来乔又打来了电话。“这是一个长且非常愚蠢的故事，”他开始说，你能听到他在椅子上坐下的声音。当你喝完第二杯咖啡时，他正要结束。“所以 {cmd:pid} 1433 的 {cmd:inc} 的值应该是 0.725。” 你输入

	. {cmd:mi reset inc = .725 if pid=1433}
	(1 个值被重置)

{p 4 4 2}
如果插补值发生变化，重置被动变量是常见的需求。例如，你有变量 {cmd:age} 和 {cmd:lnage} 在你的数据中。你插补了 {cmd:lnage}；{cmd:age} 是被动的。你最近更新了 {cmd:lnage} 的插补值。更新 {cmd:age} 的值可以输入

	. {cmd:mi passive: replace age = exp(lnage)}.
	{it:m}=0:
	{it:m}=1:
	(10 实际更改)
	{it:m}=2:
	(10 实际更改)
	{it:m}=3:
	(8 实际更改)

{p 4 4 2}
或者，你可以输入 

	. {cmd:mi reset age = exp(lnage)}
	(28 个值被重置)


{marker tech}{...}
{title:技术说明和与 mi update 的关系}

{p 4 4 2}
{cmd:mi} {cmd:reset}，用于插补变量时，仅改变在 {it:m}=0 中包含硬缺失值 ({cmd:.}) 的值。其他值，由定义，已经等于它们的 {it:m}=0 值。

{p 4 4 2}
{cmd:mi} {cmd:reset}，用于被动变量时，仅改变在不完整观察值中的值，即任何插补变量包含硬缺失的观察值。被动变量的其他值，由定义，已经等于它们的 {it:m}=0 值。

{p 4 4 2}
可以使用 {cmd:mi} {cmd:update} 确保应等于其 {it:m}=0 值的值确实等于它们；参见 {bf:{help mi_update_zh:[MI] mi update}}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_reset.sthlp>}