{smcl}
{* *! version 1.0.9  15may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi copy" "mansection MI micopy"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi erase" "help mi_erase_zh"}{...}
{vieweralsosee "[MI] Styles" "help mi_styles_zh"}{...}
{viewerjumpto "Syntax" "mi copy##syntax"}{...}
{viewerjumpto "Menu" "mi copy##menu"}{...}
{viewerjumpto "Description" "mi copy##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_copy_zh##linkspdf"}{...}
{viewerjumpto "Option" "mi copy##option"}{...}
{viewerjumpto "Remarks" "mi copy##remarks"}
{help mi_copy:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[MI] mi copy} {hline 2}}复制 mi flongsep 数据{p_end}
{p2col:}({mansection MI micopy:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:mi copy} {it:newname}
[{cmd:,}
{cmd:replace}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:copy} {it:newname} 将内存中的 flongsep 数据复制到 {it:newname}，并将其设置为您正在使用的副本。 {it:newname} 不得指定 {cmd:.dta} 后缀。

{p 4 4 2}
具体来说， 
{cmd:mi} {cmd:copy} {it:newname} 
1) 完成将 flongsep 数据保存为当前名称（如果需要）; 2) 将数据复制到 {it:newname}{cmd:.dta}、{cmd:_1_}{it:newname}.{cmd:dta}、{cmd:_2_}{it:newname}{cmd:.dta}， ...，
{cmd:_}{it:M}{cmd:_}{it:newname}{cmd:.dta}; 以及 3) 
告知 {cmd:mi} 您现在正在内存中使用 {it:newname}{cmd:.dta}。

{p 4 4 2}
{cmd:mi} {cmd:copy} 也可以与宽格式、mlong 或 flong 数据一起使用，尽管您没有理由这样做。 数据不会像 flongsep 数据那样保存到原始文件名，但其他操作是相同的：内存中的数据复制到 {it:newname}{cmd:.dta}，并且 {it:newname}{cmd:.dta} 被加载到内存中。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MI micopyRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{p 4 8 2}
{cmd:replace} 指定可以覆盖 {it:newname}{cmd:.dta}、{cmd:_1_}{it:newname}{cmd:.dta}、 
{cmd:_2_}{it:newname}{cmd:.dta} 等，如果它们已存在。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
在 Stata 中，通常会在内存中使用数据的副本。 对数据所做的更改不会保存在底层磁盘文件中，直到您明确保存数据。 对于 flongsep 数据，则不适用。

{p 4 4 2}
Flongsep 数据是一组匹配的数据集，一个包含 {it:m}=0，另一个包含 {it:m}=1，依此类推。 您在内存中使用其中之一，即 {it:m}=0，但在您工作时，其他数据集会自动更新；随着您的更改，磁盘上的数据集也会变化。

{p 4 4 2}
因此，最好使用 flongsep 数据的副本，然后定期将数据保存到实际文件中，从而模拟使用普通 Stata 数据集的方式。 {cmd:mi} {cmd:copy} 就是为此而设计的。 在加载您的 flongsep 数据后，输入例如，

	. {cmd:use myflongsep}

{p 4 4 2}
并立即制作一份副本， 

	. {cmd:mi copy} {it:newname}

{p 4 4 2}
您现在正在使用相同的数据，但使用新名称。 您的原始数据是安全的。

{p 4 4 2}
当您达到通常会保存数据的点时，无论是使用原始名称还是不同的名称，输入

	. {cmd:mi copy} {it:original_name_or_different_name}{cmd:, replace}

	. {cmd:use} {it:newname}

{p 4 4 2}
稍后，当您完成 {it:newname} 时，可以通过输入

	. {cmd:mi} {cmd:erase} {it:newname}

{p 4 4 2}
关于删除，您会发现 {cmd:mi} {cmd:erase} 不允许您删除文件时，您已在内存中保留要删除的文件。 然后，
您必须输入

	. {cmd:mi erase} {it:newname}{cmd:, clear}

{p 4 4 2}
有关详细信息，请参见 {bf:{help mi_erase_zh:[MI] mi erase}}。

{p 4 4 2}
有关 flongsep 数据的更多信息，请参见 
{it:{help mi_styles##advice_flongsep:使用 flongsep 的建议}} 在
{bf:{help mi_styles_zh:[MI] Styles}} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_copy.sthlp>}