{smcl}
{* *! version 1.1.0  08may2019}{...}
{vieweralsosee "[RPT] 动态标签" "mansection RPT Dynamictags"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[RPT] dyndoc" "help dyndoc_zh"}{...}
{vieweralsosee "[RPT] dyntext" "help dyntext_zh"}{...}
{vieweralsosee "[RPT] markdown" "help markdown_zh"}{...}
{viewerjumpto "描述" "dynamic_tags_zh##description"}{...}
{viewerjumpto "备注" "dynamic_tags_zh##remarks"}
{help dynamic_tags:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[RPT] 动态标签} {hline 2}}用于文本文件的动态标签{p_end}
{p2col:}({mansection RPT Dynamictags:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
动态标签是Stata动态文档命令 {help dyndoc_zh} 和 {help dyntext_zh} 使用的指令，用于执行某个操作，如运行一段Stata代码、将Stata表达式的结果插入文本、将Stata图形导出到图像文件，或包含对该图像文件的链接。


{marker remarks}{...}
{title:备注}

{pstd}
备注分为以下几个标题：

        {help dynamic tags##tagsdesc:动态标签的描述}
        {help dynamic tags##version:版本控制}
        {help dynamic tags##code:执行并包含Stata代码块的输出}
        {help dynamic tags##incltext:在文本中包含字符串和标量表达式的值}
        {help dynamic tags##inclval:在.docx文件中包含标量表达式的值和格式化文本}
        {help dynamic tags##graph:导出并包含Stata图形}
        {help dynamic tags##text:包含文本文件}
        {help dynamic tags##disable:禁用动态文本处理}
        {help dynamic tags##skip:根据条件跳过内容}
        {help dynamic tags##remove:移除内容}


{marker tagsdesc}{...}
{title:动态标签的描述}

{pstd}
以下是可用动态标签的列表及每个标签的简要描述。

{* 在文档中，我们显示最小缩写。}{...}
{* 此处不显示，因为下划线将在下划线中丢失。}{...}
{marker exptopts}{...}
{synoptset 20}{...}
{synopt:动态标签}描述{p_end}
{synoptline}
{synopt :{cmd:<<dd_version>>}}指定转换动态文档所需的最低版本{p_end}
{synopt :{cmd:<<dd_do>>}}执行一段Stata代码块并可选地包含其输出{p_end}
{synopt :{cmd:<</dd_do>>}}结束 {cmd:<<dd_do>>}{p_end}
{synopt :{cmd:<<dd_display>>}}包含Stata表达式的输出，如Stata的 {cmd:display} 命令所示{p_end}
{synopt :{cmd:<<dd_docx_display>>}}在 {cmd:.docx} 文件中包含Stata表达式的输出，如Stata的 {cmd:display} 命令所示并格式化文本{p_end}
{synopt :{cmd:<<dd_graph>>}}导出Stata图形并包含指向该文件的链接{p_end}
{synopt :{cmd:<<dd_ignore>>}}禁用动态标签的处理，除了 {cmd:<<dd_remove>>}{p_end}
{synopt :{cmd:<</dd_ignore>>}}结束 {cmd:<<dd_ignore>>}{p_end}
{synopt :{cmd:<<dd_include>>}}包含文本文件的内容{p_end}
{synopt :{cmd:<<dd_remove>>}}移除以下文本，直到指定 {cmd:<</dd_remove>>}{p_end}
{synopt :{cmd:<</dd_remove>>}}结束 {cmd:<<dd_remove>>}{p_end}
{synopt :{cmd:<<dd_skip_if>>}}根据条件跳过文本{p_end}
{synopt :{cmd:<<dd_skip_else>>}}根据条件跳过文本{p_end}
{synopt :{cmd:<<dd_skip_end>>}}结束 {cmd:<<dd_skip_if>>} 块{p_end}
{synoptline}
{p 4 6 2}
{cmd:<<dd_docx_display>>} 仅用于 {cmd:putdocx textblock} 命令的 do-file 中。

{pstd}
一些标签必须在行首开始，并且同一行中的文本会被简单忽略。其他标签可以在行中间书写。以下表格列出了所有标签在文本中的要求位置。

{marker exptopts}{...}
{synopt:动态标签}描述{p_end}
{synoptline}
{synopt :{cmd:<<dd_version>>}}行首开始，建议在文件的开头{p_end}
{synopt :{cmd:<<dd_do>>}}行首开始{p_end}
{synopt :{cmd:<</dd_do>>}}行首开始{p_end}
{synopt :{cmd:<<dd_display>>}}行中{p_end}
{synopt :{cmd:<<dd_docx_display>>}}行中{p_end}
{synopt :{cmd:<<dd_graph>>}}行中{p_end}
{synopt :{cmd:<<dd_ignore>>}}行首开始{p_end}
{synopt :{cmd:<</dd_ignore>>}}行首开始{p_end}
{synopt :{cmd:<<dd_include>>}}行首开始{p_end}
{synopt :{cmd:<<dd_remove>>}}行中{p_end}
{synopt :{cmd:<</dd_remove>>}}行中{p_end}
{synopt :{cmd:<<dd_skip_if>>}}行首开始{p_end}
{synopt :{cmd:<<dd_skip_else>>}}行首开始{p_end}
{synopt :{cmd:<<dd_skip_end>>}}行首开始{p_end}
{synoptline}

{pstd}
标签可以具有属性。属性是标签行为的修饰符。属性可以重复，最后一个属性将生效。例如，如果你指定 {bind:{cmd:<<dd_do:} {it:commands nocommands}{cmd:>>}}，那么命令将不会显示，因为属性 {cmd:nocommands} 优先于先前指定的属性 {cmd:commands}。这在你尝试不同属性以获得最佳输出时是有用的。一些属性具有值；例如， {cmd:graphname()} 要求导出的图形名称。如果一个标签只有一个属性且该属性需要一个值，那么属性名称被省略且仅需该值；例如， {cmd:dd_version} 标签的使用为 {bind:{cmd:<<dd_version:} {it:一个整数}{cmd:>>}}。


{marker version}{...}
{title:版本控制}

        {cmd:<<dd_version:} {it:版本}{cmd:_}{it:数字}{cmd:>>}

{pstd}
{cmd:<<dd_version>>} 标签指定转换源文件所需的最低版本。版本号与Stata的 {help version_zh} 命令无关。该标签必须位于新行的开头。我们建议将该标签放置在 {it:srcfile} 的开头。

{pstd} 当前版本及默认版本为2，自Stata 16发布以来引入。当前版本号也存储在 {cmd:c(dyndoc_version)} 中。


{marker code}{...}
{title:执行并包含Stata代码块的输出}

        {cmd:<<dd_do:} {it:属性}{cmd:>>}
        {it:Stata代码块} ...
        {cmd:<</dd_do>>}

{pstd}
{cmd:<<dd_do>>} 标签运行Stata代码块，并用Stata输出替换 {cmd:<<dd_do>>} 和 {cmd:<</dd_do>>} 之间的行。起始标签 {cmd:<<dd_do>>} 和结束标签 {cmd:<</dd_do>>} 必须位于新行的开头。

{marker exptopts}{...}
{synopthdr:属性}
{synoptline}
{synopt :{opt qui:etly}}抑制所有输出{p_end}
{synopt :{opt nocom:mands}}抑制命令的打印{p_end}
{synopt :{opt noout:put}}抑制命令输出{p_end}
{synopt :{opt noprom:pt}}抑制点提示{p_end}
{synoptline}


{marker incltext}{...}
{title:在文本中包含字符串和标量表达式的值}

        {cmd:<<dd_display:} {it:display}{cmd:_}{it:指令}{cmd:>>}

{pstd}
{cmd:<<dd_display>>} 标签执行Stata的 {help display_zh} 命令，然后用其输出替换标签。该标签不能包含换行或 {cmd:>>}。如果你需要在 {it:display_directive} 中包含 {cmd:>>}，请改用 {cmd:>} {cmd:>}（中间有空格）。

{pstd}
{cmd:<<dd_display>>} 标签可以在行中多次使用。例如，假设我们要显示半径为1的圆的周长，保留小数点后两位。我们可以这样写：

{phang2}
{cmd:2*1*<<dd_display:%4.2f c(pi)>> = <<dd_display:%4.2f 2*1*c(pi)>>}

{pstd}
这将产生：

{phang2}
{cmd:2*1*3.14 = 6.28}


{marker inclval}{...}
{title:在.docx文件中包含标量表达式的值和格式化文本}

        {cmd:<<dd_docx_display} {it:文本选项}{cmd::} {it:display_directive}{cmd:>>}

{pstd}
该标签在 {cmd:.docx} 文件的文本块中包含表达式和格式化文本。它只能与 {cmd:putdocx textblock} 命令一起使用，如下所示：

        {cmd:putdocx textblock begin}
        ... {it:文本} {cmd:<<dd_docx_display}{cmd::} {it:display_directive}{cmd:>>} {it:文本} ...
        {cmd:putdocx textblock end}

{pstd}
{cmd:<<dd_docx_display>>} 标签执行Stata的 {help display_zh} 命令，然后用其输出替换标签。输出根据 {help putdocx_paragraph##opt_putdocx_text:{it:文本选项}} 进行格式化，这些选项可以与 {cmd:putdocx text} 一起使用。标签不能包含换行或 {cmd:>>}。如果你需要在 {it:display_directive} 中包含 {cmd:>>}，请使用中间有空格的符号 ({cmd:> >})。

{pstd}
{cmd:<<dd_docx_display>>} 标签可以在行中多次使用。例如，假设我们要显示半径为1的圆的周长，保留小数点后两位。我们可以这样写：

        {cmd:putdocx textblock begin}
{phang2}{cmd:2*1*<<dd_docx_display bold:%4.2f c(pi)>> = <<dd_docx_display bold:%4.2f 2*1*c(pi)>>}{p_end}
        {cmd:putdocx textblock end}

{pstd}
这将以粗体格式显示π的值和乘积，并在所创建的 {cmd:.docx} 文件中产生以下内容。

        2*1*{bf:3.14} = {bf:6.28}

{pstd}
有关此动态标签使用的另一个示例，请参见 {mansection RPT putdocxparagraphRemarksandexamplesWorkingwithblocksoftext:{it:处理文本块}} 在 {bf:[RPT] putdocx 段落} 中。


{marker graph}{...}
{title:导出并包含Stata图形}

        {cmd:<<dd_graph:} {it:属性}{cmd:>>}

{pstd}
{cmd:<<dd_graph>>} 标签导出Stata图形，并在目标文件中包含指向导出图像文件的链接。

{marker exptopts}{...}
{synopthdr:属性}
{synoptline}
{synopt :{opt saving(filename)}}导出图形到 {it:filename}{p_end}
{synopt :{opt rep:lace}}如果文件已存在则替换该文件{p_end}
{synopt :{opt gr:aphname(name)}}要导出的图形名称{p_end}
{synopt :{opt svg}}将图形导出为SVG{p_end}
{synopt :{opt png}}将图形导出为PNG{p_end}
{synopt :{opt pdf}}将图形导出为PDF{p_end}
{synopt :{opt eps}}将图形导出为EPS{p_end}
{synopt :{opt ps}}将图形导出为PS{p_end}
{synopt :{opt html}}输出HTML链接{p_end}
{synopt :{opt markd:own}}输出Markdown链接；默认是 {cmd:html}{p_end}
{synopt :{opt path:only}}输出文件的路径；默认是 {cmd:html}{p_end}
{synopt :{opt alt(text)}}供语音软件读取的图形替代文本；如果实施了 {cmd:pathonly} 则被忽略{p_end}
{synopt :{opt h:eight(#)}}HTML中图形的高度（以像素为单位）；如果实施了 {cmd:markdown} 或 {cmd:pathonly} 则被忽略{p_end}
{synopt :{opt w:idth(#)}}HTML中图形的宽度（以像素为单位）；如果实施了 {cmd:markdown} 或 {cmd:pathonly} 则被忽略{p_end}
{synopt :{opt rel:ative}}使用相对于 {help dyndoc_zh} 或 {help dyntext_zh} 中指定的 {it:targetfile} 的文件路径；这是默认值{p_end}
{synopt :{opt abs:olute}}在链接中使用绝对路径；默认是 {cmd:relative}{p_end}
{synopt :{opt basepath(path)}}使用 {it:path} 作为导出图形文件的基本目录；如果未指定，默认是当前工作目录{p_end}
{synopt :{opt nourl:encode}}不对路径进行百分比编码的URL；如果实施了 {cmd:html} 或 {cmd:markdown} 则被忽略{p_end}
{synoptline}

{pstd}
如果未指定 {opt graphname(name)}，则使用最顶部的图形。你可以使用默认名称 "Graph" 导出图形而不命名。

{pstd}
对于在 {cmd:saving()} 或 {cmd:basepath()} 属性中指定的路径，单个反斜杠 ({cmd:\}) 将被解释为转义字符，而不是目录分隔符。在Windows上，我们建议使用正斜杠 ({cmd:/}) 作为目录分隔符（例如， {cmd:C:/mypath/myfile}）；否则，必须使用双反斜杠（例如， {cmd:C:\\mypath\\myfile}）。

{pstd}
如果未指定 {opt saving(filename)}，则将根据图形名称构造文件名。

{pstd}
如果未指定 {cmd:.svg}、 {cmd:.png} 或 {cmd:.pdf}，则首先检查 {opt saving(filename)}；如果在 {opt saving(filename)} 中指定的名称带有 {cmd:.svg}、 {cmd:.png} 或 {cmd:.pdf} 后缀，则图形将以对应格式导出。例如，动态标签

        {cmd:<<dd_graph:saving(gr1.png) graphname(gr1)>>}

{pstd}
生成

        {cmd:<img src="gr1.png">}

{pstd}
否则，将使用类型 {cmd:.svg}，如同

        {cmd:<<dd_graph:saving(gr1.pgg) graphname(gr1)>>}

{pstd}
这将生成

        {cmd:<img src="gr1.pgg.svg">}

{pstd}
如果指定了 {cmd:markdown}，则将生成Markdown链接。例如，动态标签

        {cmd:<<dd_graph:saving(gr1.svg) graphname(gr1) markdown>>}

{pstd}
生成

        {cmd:![](gr1.svg)}

{pstd}
如果你想获得具有比 {cmd:html} 或 {cmd:markdown} 更多属性的HTML链接，或者希望在其他目标文件类型中使用路径，例如LaTeX，则可以使用 {cmd:pathonly}。

{pstd}
默认情况下，路径以百分比编码的URL形式输出。例如，动态标签

       {cmd:<<dd_graph:saving("gr 1.svg") graphname(gr1) pathonly>>}

{pstd}
生成

        {cmd:gr%201.svg}

{pstd}
你可以使用 {cmd:nourlencode} 来禁用编码过程，如

        {cmd:"<<dd_graph:saving("gr 1.svg") graphname(gr1) pathonly nourlencode>>"}

{pstd}
生成

        {cmd:"gr 1.svg"}

{pstd}
{cmd:<<dd_graph>>} 标签可以在行中使用。


{marker text}{...}
{title:包含一个文本文件}

        {cmd:<<dd_include:} {it:filename}{cmd:>>}

{pstd}
{cmd:<<dd_include>>} 标签用指定文本文件的内容替换标签。文本文件将按原样包含。标签必须位于新行的开头。 {it:filename} 本身可以包含Stata宏，但文件内容不可以。


{marker disable}{...}
{title:禁用动态文本处理}

        {cmd:<<dd_ignore>>} 和 {cmd:<</dd_ignore>>} 

{pstd}
{cmd:<<dd_ignore>>} 标签使得 {cmd:dyntext} 和 {cmd:dyndoc} 忽略动态标签处理，从下一行开始，直到一个 {cmd:<</dd_ignore>>} 标签之前的行。起始标签和结束标签都必须位于行的开头。它唯一不影响的标签是 {cmd:<<dd_remove>>} 标签。


{marker skip}{...}
{title:根据条件跳过内容}

        {cmd:<<dd_skip_if:} {it:Stata表达式}{cmd:>>}
        {it:文本行} ...
        {cmd:<<dd_skip_end>>}

{pstd}
或者

        {cmd:<<dd_skip_if:} {it:Stata表达式}{cmd:>>}
        {it:文本行} ...
        {cmd:<<dd_skip_else>>}
        {it:文本行} ...
        {cmd:<<dd_skip_end>>}

{pstd}
{cmd:<<dd_skip_if:} {it:Stata表达式}{cmd:>>} 计算 {it:Stata表达式}；如果结果为真（任何非零值），则跳过下一个 {cmd:<<dd_skip_end>>} 之前的行。如果有 {cmd:<<dd_skip_else>>}，将在 {cmd:<<dd_skip_else>>} 之前的行被跳过， {cmd:<<dd_skip_else>>} 和 {cmd:<<dd_skip_end>>} 之间的行将按常规处理。

{pstd}
如果Stata表达式的结果为假（0），则不会跳过下一个 {cmd:<<dd_skip_end>>} 之前的行。如果有 {cmd:<<dd_skip_else>>}，在 {cmd:<<dd_skip_else>>} 之前的行不会被跳过，而在 {cmd:<<dd_skip_else>>} 和 {cmd:<<dd_skip_end>>} 之间的行将被跳过。


{marker remove}{...}
{title:移除内容}

        ... {cmd:<<dd_remove>>}{it:要移除的文本} ...
        {it:要移除的文本行} ...
        {it:要移除的文本} ... {cmd:<</dd_remove>>} ...

{pstd}
{cmd:<<dd_remove>>} 和 {cmd:<</dd_remove>>} 标签移除两个标签之间的所有内容，不论其出现在目标文件中。标签可以在文本行中使用。

{pstd}
{cmd:<<dd_remove>>} 是后处理标签，这意味着它在所有其他标签之后处理。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dynamic_tags.sthlp>}