{smcl}
{* *! version 1.2.1  15may2018}{...}
{vieweralsosee "[G-4] 概念：重复选项" "mansection G-4 Conceptrepeatedoptions"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] 图形" "help graph_zh"}{...}
{viewerjumpto "描述" "repeated_options_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "repeated_options_zh##linkspdf"}{...}
{viewerjumpto "备注" "repeated_options_zh##remarks"}
{help repeated_options:English Version}
{hline}{...}
{p2colset 1 36 38 2}{...}
{p2col :{bf:{mansection G-4 Conceptrepeatedoptions:[G-4] 概念：重复选项}} {hline 2}}重复选项的解释{p_end}
{p2col:}({mansection G-4 Conceptrepeatedoptions:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
允许与 {cmd:graph} 一起使用的选项被分类为

	{it:唯一}
	{it:最右}
	{it:合并-隐式}
	{it:合并-显式}

{pstd}
下面描述了这意味着什么。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-4 ConceptrepeatedoptionsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
您可能会惊讶地发现，大多数 {cmd:graph} 选项可以在同一 {cmd:graph} 命令中重复。例如，您可以输入

{phang2}
	{cmd:. graph twoway scatter mpg weight, msymbol(Oh) msymbol(O)}

{pstd}
而不是出现错误，您将得到与如果省略 {cmd:msymbol(Oh)} 选项时相同的图形。{cmd:msymbol()} 被称为 {it:最右} 选项。

{pstd}
{cmd:graph} 之所以允许这样，是因为许多其他命令都是基于 {cmd:graph} 实现的。想象一下，一个 ado 文件构建 " {cmd:scatter mpg weight, msymbol(Oh)}" 的部分，然后您使用该 ado 文件，并指定选项 "{cmd:msymbol(O)}"。结果是该 ado 文件构建了

{phang2}
	{cmd:. graph twoway scatter mpg weight, msymbol(Oh) msymbol(O)}

{pstd}
并且，由于 {cmd:graph} 乐意忽略 {cmd:msymbol()} 选项的所有但最右的指定，因此该命令可以正常工作，并达到您的预期。

{pstd}
实际上，选项有三种形式，分别是

{phang2}
1.  {it:最右}:  取最右的出现；

{phang2}
2.  {it:合并}:  将重复实例合并在一起；

{phang2}
3.  {it:唯一}:  该选项只能指定一次；多次指定将导致错误。

{pstd}
您会发现选项总是按这三种方式进行分类；通常在语法图中完成，但有时在选项的描述中出现分类。

{pstd}
{cmd:msymbol()} 是一个 {it:最右} 选项的例子。{cmd:saving()} 是一个 {it:唯一} 选项的例子；它只能指定一次。

{pstd}
关于 {it:合并} 选项，它们被分为两个子类：

{p 7 12 2}
    2a.  {it:合并-隐式:}  始终将重复实例合并在一起，

{p 7 12 2}
    2b.  {it:合并-显式:}  除非其中一个选项在此选项中被指定，否则视为 {it:最右}，否则将合并。

{pstd}
{cmd:合并} 只能应用于带有参数的选项，因为其他情况下就没有东西可以合并。有时那些选项本身会带有子选项。例如，{cmd:title()} 选项（在图上放置标题的选项）的语法是

{phang2}
	{cmd:title("}{it:string}{cmd:"} [{cmd:"}{it:string}{cmd:"} [...]] [{cmd:,} {it:suboptions}]{cmd:)}

{pstd}
{cmd:title()} 具有子选项，指定标题的外观，其中一个选项是 {cmd:color()}; 请参见 {manhelpi title_options G-3}。{cmd:title()} 还具有其他两个子选项，{cmd:prefix} 和 {cmd:suffix}，指定如何合并 {cmd:title()} 选项的重复实例。例如，指定

{phang2}
	... {cmd:title("我的标题")} ... {cmd:title("第二行", suffix)}

{pstd}
结果将与您一开始指定

	... {cmd:title("我的标题" "第二行")}

{pstd}
的结果相同。指定

{phang2}
	... {cmd:title("我的标题")} ... {cmd:title("新行", prefix)}

{pstd}
的结果将与您一开始指定

	... {cmd:title("新行" "我的标题")}

{pstd}
的结果相同。{cmd:prefix} 和 {cmd:suffix} 选项确切地指定了如何合并选项的重复实例。如果您不指定其中一个选项，

{phang2}
	... {cmd:title("我的标题")} ... {cmd:title("新标题")}

{pstd}
结果就像您从未指定第一个选项一样：

	... {cmd:title("新标题")}

{pstd}
{cmd:title()} 是 {it:合并-显式} 选项的一个例子。处理 {it:合并-显式} 的子选项名称并不总是 {cmd:prefix} 和 {cmd:suffix}，但每当一个选项被指定为 {it:合并-显式} 时，它将在 {hi:重复选项的解释} 章节下记录具体的合并选项的工作方式。


    {title:技术说明：}

{pin}
即使选项是 {it:合并-显式} 且其合并子选项未指定，它的其他子选项也会被合并。例如，考虑

{phang3}
	    ... {cmd:title("我的标题", color(red))} ... {cmd:title("新标题")}

{pin}
{cmd:title()} 是 {it:合并-显式}，但因为我们没有指定其中一个合并选项，所以它被视为 {it:最右}。实际上，它几乎被视为最右，因为 {cmd:title()} 将不完全是我们输入的内容，而将是

	    ... {cmd:title("新标题", color(red))}

{pin}
这使得 ado 文件如您所预期的那样工作。假设您运行 ado 文件 {cmd:xyz.ado}，它构造某个图形，并且命令

{phang3}
	    {cmd:graph} ... {cmd:,} ... {cmd:title("标准标题", color(red))} ...

{pin}
您向 {cmd:xyz.ado} 指定一个选项来更改标题：

{phang3}
	    {cmd:. xyz} ... {cmd:,} ... {cmd:title("我的标题")}

{pin}
最终效果将和您预期的一样：您的标题将被替换，但标题的颜色（以及大小、位置等）不会改变。如果您想更改这些内容，您应该在您的 {cmd:title()} 选项中指定适当的子选项。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <repeated_options.sthlp>}