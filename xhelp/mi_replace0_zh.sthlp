{smcl}
{* *! version 1.1.4  15may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi replace0" "mansection MI mireplace0"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi extract" "help mi_extract_zh"}{...}
{viewerjumpto "Syntax" "mi_replace0_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_replace0_zh##menu"}{...}
{viewerjumpto "Description" "mi_replace0_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_replace0_zh##linkspdf"}{...}
{viewerjumpto "Option" "mi_replace0_zh##option"}{...}
{viewerjumpto "Remarks" "mi_replace0_zh##remarks"}
{help mi_replace0:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[MI] mi replace0} {hline 2}}替换原始数据{p_end}
{p2col:}({mansection MI mireplace0:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{cmd:mi replace0}
{cmd:using} {it:{help filename_zh}}{cmd:,}
{cmd:id(}{varlist}{cmd:)}


{p 4 4 2}
典型用法为 

		. {cmd:mi extract 0}

		. ({it:执行数据管理命令})

		. {cmd:mi replace0 using} {it:origfile}{cmd:, id(}{it:idvar}{cmd:)} 


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:replace0} 提供了一种在 {cmd:mi} 数据集上使用标准数据管理命令的机制。该过程包括三个步骤：

{phang}
1. 使用 {cmd:mi} {cmd:extract}提取 {it:m}=0 数据到标准数据集中。

{phang}
2. 使用标准数据管理命令修改提取的数据集。

{phang}
3. 使用 {cmd:mi} {cmd:replace0} 用修改后的数据集替换 {it:m}=0，并使所有插补与所做的更改保持一致。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI mireplace0Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{p 4 8 2}
{cmd:id(}{varlist}{cmd:)} 是必需的；
    它指定用于匹配 {cmd:mi} 数据中的 {it:m}=0 的观察与非 {cmd:mi} 数据集的观察的变量。ID 变量必须唯一标识每个数据集中的观察，并且跨数据集的相等值必须表示对应的观察，但一个或两个数据集可以有在另一个中找到（或未找到）的观察。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
通常在 {it:m}=0 上进行数据管理更容易，然后让 {cmd:mi} {cmd:replace0}
对 {it:m}=1、{it:m}=2、...、{it:m}={it:M} 进行结果的复制，而不是同时对所有 {it:m} 进行数据管理。这更容易，因为 {it:m}=0 本身是一个非 {cmd:mi} 数据集，因此你可以用任何通用 Stata 命令（即非 {cmd:mi} 命令）来处理它。

{p 4 4 2}
你使用 {bf:{help mi_extract_zh:mi extract}} 提取 
{it:m}=0。提取的数据集只是一个常规的 Stata 数据集；它不是 
{cmd:mi} {cmd:set}，也没有任何秘密复杂性。

{p 4 4 2}
你使用 {cmd:mi} {cmd:replace0} 在修改了 {it:m}=0 数据后重新组合数据集。
{cmd:mi} {cmd:replace0} 可以处理以下对 {it:m}=0 的修改：

{p 8 12 2}
o  对现有变量值的更改，

{p 8 12 2}
o  删除变量，

{p 8 12 2}
o  添加新变量，

{p 8 12 2}
o  删除观察，以及

{p 8 12 2}
o  添加观察。

{p 4 4 2}
例如，你可以使用 {cmd:mi} {cmd:extract} 和 {cmd:mi} 
{cmd:replace0} 来执行以下操作：

	. {cmd:use my_midata, clear}

	. {cmd:mi extract 0}

	. {cmd:replace age = 26 if age==6}
	. {cmd:replace age = 32 if pid==2088}

	. {cmd:merge 1:1 pid using newvars, keep(match) nogen}

	. {cmd:by location: egen avgrate = mean(rate)}

	. {cmd:drop proxyrate}

	. {cmd:mi replace0 using my_midata, id(pid)}

{p 4 4 2}
在上述过程中，

{p 8 12 2}
    1.  我们提取 {it:m}=0;

{p 8 12 2}
    2.  我们更新现有变量 {cmd:age}（我们修正了一个错别字，并添加 
        {cmd:pid} 2088 的年龄）;

{p 8 12 2}
    3.  我们将 {it:m}=0 与 {cmd:newvars.dta} 合并，以获取一些新
        变量，并在这个过程中仅保留在 {it:m}=0 和 {cmd:newvars.dta} 中都找到的观察值;

{p 8 12 2}
    4.  我们创建新变量 {cmd:avgrate}，等于按位置计算的平均速率; 而且

{p 8 12 2}
    5.  我们删除先前存在的变量 {cmd:proxyrate}。

{p 4 4 2}
然后，我们将该结果用来替换原始 {cmd:mi} 数据集中的 {it:m}=0。 我们留给 {cmd:mi} {cmd:replace0} 来对 {it:m}=1、{it:m}=2、...、{it:m}={it:M} 执行所需的更改，以反映我们对 {it:m}=0 所做的操作。

{p 4 4 2}
顺便提一下，{cmd:age} 在 {cmd:my_midata.dta} 中注册为插补的。我们将一个非缺失值更改为另一个非缺失值，并将一个缺失值更改为非缺失值。 {cmd:mi}
{cmd:replace0} 将处理此事的影响。它甚至会处理我们将一个非缺失值更改为缺失值的情况。

{p 4 4 2}
使用 {cmd:mi} {cmd:extract} 和 {cmd:mi} {cmd:replace0} 进行数据管理没有更简单的方法。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_replace0.sthlp>}