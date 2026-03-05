{smcl}
{* *! version 1.0.7  15may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi erase" "mansection MI mierase"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi copy" "help mi_copy_zh"}{...}
{vieweralsosee "[MI] Styles" "help mi_styles_zh"}{...}
{viewerjumpto "Syntax" "mi_erase_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_erase_zh##menu"}{...}
{viewerjumpto "Description" "mi_erase_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_erase_zh##linkspdf"}{...}
{viewerjumpto "Option" "mi_erase_zh##option"}{...}
{viewerjumpto "Remarks" "mi_erase_zh##remarks"}
{help mi_erase:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[MI] mi erase} {hline 2}}删除 mi 数据集{p_end}
{p2col:}({mansection MI mierase:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:mi erase} {it:name} [{cmd:, clear}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:erase} 用于删除 {cmd:mi} {cmd:.dta} 数据集。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI mieraseRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在本帮助文件中。


{marker option}{...}
{title:选项}

{p 4 8 2}
{cmd:clear} 指定即使某个文件当前在内存中，也可以删除这些文件。如果指定了 {cmd:clear}，数据将从内存中删除，文件将被擦除。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
Stata 的普通 {bf:{help erase_zh:erase}} 无法满足删除 {cmd:mi} 数据集的需求，因为一个 {cmd:mi} 数据集可能是 flongsep，在这种情况下，单个名称会指代一组文件，一个包含 {it:m}=0，另一个包含 {it:m}=1，依此类推。{cmd:mi} {cmd:erase} 删除与 {cmd:mi} 数据集 {it:name}{cmd:.dta} 相关的所有文件，也就是说，它删除 
{it:name}{cmd:.dta}、 
{cmd:_1_}{it:name}{cmd:.dta}、 
{cmd:_2_}{it:name}{cmd:.dta}，依此类推：

	. {cmd:mi erase mysep}
	(文件 mysep.dta, _1_mysep.dta _2_mysep.dta _3_mysep.dta 被删除)

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_erase.sthlp>}