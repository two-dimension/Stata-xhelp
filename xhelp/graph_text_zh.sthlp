{smcl}
{* *! version 1.3.2  19oct2017}{...}
{vieweralsosee "[G-4] text" "mansection G-4 text"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph set" "help graph_set_zh"}{...}
{vieweralsosee "[G-3] eps_options" "help eps_options_zh"}{...}
{vieweralsosee "[G-3] ps_options" "help ps_options_zh"}{...}
{vieweralsosee "[G-3] svg_options" "help svg_options_zh"}{...}
{vieweralsosee "[P] smcl" "help smcl_zh"}{...}
{viewerjumpto "Description" "graph_text_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "graph_text_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "graph_text_zh##remarks"}
{help graph_text:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[G-4]} {it:text} {hline 2}}图形中的文本{p_end}
{p2col:}({mansection G-4 text:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
Stata 图形中的文本元素，与 Stata 其他部分的文本一样，可以包含 Unicode 字符。此外，Stata 图形中的所有文本元素支持某些 SMCL 标记指令或标签，以影响它们在屏幕上的显示方式。SMCL 是 Stata 的输出语言，代表 Stata 标记和控制语言，并发音为“smickle”，其详细讨论见 {manhelp smcl P}。

{pstd}
Stata 中的所有文本输出，包括图形中的文本，可以通过 SMCL 进行修改。

{pstd}
例如，您可以在图形标题中将一个单词倾斜：

{phang2}
{cmd:. scatter mpg weight, title("这是 {c -(}it:italics{c )-} 的图形标题")}{break}
({it:{stata `"gr_example auto: scatter mpg weight, title("这是 {it:italics} 的图形标题")"':click to run}})

{pstd}
该条目记录了 SMCL 中图形特有的功能。我们建议您在阅读该条目之前对 SMCL 有基本了解；请参见 {manhelp smcl P}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-4 textRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注分为以下几个部分：

        {help graph_text##overview:概述}
        {help graph_text##appearance1:加粗和倾斜}
        {help graph_text##appearance2:上标和下标}
        {help graph_text##appearance3:字体，标准}
        {help graph_text##appearance4:字体，进阶}
        {help graph_text##symbols:希腊字母和其他符号}
        {help graph_text##smcl:图形文本中实用的 SMCL 标签完整列表}


{marker overview}{...}
{title:概述}

{pstd}
假设您在阅读本条目之前阅读了 {manhelp smcl P}，您就会了解 SMCL 标签遵循的四种语法。作为复习，这些语法为：

{center:语法 1:  {cmd:{c -(}xyz{c )-}}          }
{center:语法 2:  {cmd:{c -(}xyz:}{it:text}{cmd:{c )-}}     }
{center:语法 3:  {cmd:{c -(}xyz} {it:args}{cmd:{c )-}}     }
{center:语法 4:  {cmd:{c -(}xyz} {it:args}{cmd::}{it:text}{cmd:{c )-}}}

{pstd}
语法 1 意味着“执行 {cmd:{c -(}xyz{c )-}} 所做的任何事情”。语法 2 意味着“执行 {cmd:{c -(}xyz{c )-}} 所做的任何事情，对文本 {it:text} 执行，然后停止执行”。语法 3 意味着“执行 {cmd:{c -(}xyz{c )-}} 所做的事情，按照 {it:args} 修改”。最后，语法 4 意味着“执行 {cmd:{c -(}xyz{c )-}} 所做的事情，按照 {it:args} 修改，对文本 {it:text} 执行，然后停止执行”。

{pstd}
大多数在图形文本中实用的 SMCL 标签遵循语法 1 和语法 2，且有一个（{cmd:{c -(}fontface{c )-}}）遵循语法 3 和语法 4。


{marker appearance1}{...}
{title:加粗和倾斜}

{pstd}
在图形中将文本更改为 {bf:加粗} 或 {it:倾斜} 的方式与在结果窗口中的方法完全相同。只需使用 SMCL {cmd:{c -(}bf{c )-}} 和 {cmd:{c -(}it{c )-}} 标签：

{phang2}
{cmd}. scatter mpg weight, caption("{c -(}bf:来源{c )-}: {c -(}it:消费者报告{c )-}, 经许可使用")}{break}
{txt}({it:{stata `"gr_example auto: scatter mpg weight, caption("{bf:来源}: {it:消费者报告}, 经许可使用")"':click to run}})

{pstd}
{cmd:{c -(}bf{c )-}} 和 {cmd:{c -(}it{c )-}} 遵循语法 1 和语法 2。


{marker appearance2}{...}
{title:上标和下标}

{pstd}
您可以在图形文本中包含上标和下标。这可能会让您感到惊讶，因为在结果窗口中的文本中无法做到这一点。由于图形不受限于使用固定宽度的字体和固定高度的行，因此允许图形中的文本具有更多功能。

{pstd}
使用 {cmd:{c -(}superscript{c )-}} 和 {cmd:{c -(}subscript{c )-}} 标签使一段文本显示为上标或下标非常简单。在此，我们将绘制一个函数并将图形标题更改为适当的内容：

{phang2}
{cmd}. twoway function y = 2*exp(-2*x), range(0 2) ///{break}
title("{c -(}&function{c )-}(x)=2e{c -(}superscript:-2x{c )-}"){break}
{txt}({it:{stata "gr_example2 funcsup1":click to run}})

{pstd}
{cmd:{c -(}superscript{c )-}} 和 {cmd:{c -(}subscript{c )-}} 遵循语法 1 和语法 2。
{cmd:{c -(}sup{c )-}} 和 {cmd:{c -(}sub{c )-}} 可以作为 {cmd:{c -(}superscript{c )-}} 和 {cmd:{c -(}subscript{c )-}} 的简写使用。

{pstd}
上述示例还演示了一个符号的使用，{cmd:{c -(}&function{c )-}}；符号将在下面进行更详细的讨论。


{marker appearance3}{...}
{title:字体，标准}

{pstd}
Stata 为图形提供四种标准字体以使文本以无衬线字体（默认）、衬线字体、等宽（固定宽度）字体或符号字体显示。这些字体经过设计以在各个操作系统上正常工作，并能够导出到 PostScript 和封装的 PostScript 文件中。Unicode 字符，如在 Latin1 编码中不可用的汉字，不支持 PostScript，因为 PostScript 字体不支持它们。

{pstd}
用于标记以显示在任何这些字体中的文本的 SMCL 标签以及每种类型的系统中使用的字体如下所示：

           SMCL {c |} {cmd:{c -(}stSans{c )-}}    {cmd:{c -(}stSerif{c )-}}         {cmd:{c -(}stMono{c )-}}      {cmd:{c -(}stSymbol{c )-}}
        {dup 8:{c -}}{c +}{dup 56:{c -}}
        Windows {c |} Arial       Times New Roman   Courier New   Symbol
            Mac {c |} Helvetica   Times             Courier       Symbol
           Unix {c |} Sans        Serif             Monospace     Sans
         PS/EPS {c |} Helvetica   Times             Courier       Symbol

{pstd}
注意：我们建议您保留这四个 SMCL 标签与我们为每个操作系统选择的字体之间的映射。然而，如果您愿意，您可以覆盖默认字体。有关详细信息，请参见 {manhelp graph_set G-2:graph set}。

{pstd}
在图形中的文本中更改字体非常简单：

{phang2}
{cmd:. scatter mpg weight, title("这里是 {c -(}stSerif:衬线{c )-}, {c -(}stSans:无衬线{c )-}, 和 {c -(}stMono:等宽{c )-}")}{break}
({it:{stata `"gr_example auto: scatter mpg weight, title("这里是 {stSerif:衬线}, {stSans:无衬线}, 和 {stMono:等宽}")"':click to run}})

{pstd}
{cmd:{c -(}stSans{c )-}},
{cmd:{c -(}stSerif{c )-}},
{cmd:{c -(}stMono{c )-}}, 和
{cmd:{c -(}stSymbol{c )-}}
遵循语法 1 和语法 2。

{pstd}
{cmd:{c -(}stSymbol{c )-}} 标签允许您显示数百个不同的符号，如希腊字母和数学符号。有这么多可能性，以至于符号有自己独特的简写符号，帮助您输入它们并且有自己独立的部分描述如何使用它们。请参见 {it:{help graph_text##symbols:希腊字母和其他符号}} 下文。
请记住，您还可以使用 Unicode 字符。


{marker appearance4}{...}
{title:字体，进阶}

{pstd}
除了四种标准字体外，您还可以使用任何在操作系统上可用的字体在图形中显示文本，方法是使用 {cmd:{c -(}fontface{c )-}} 标签。如果您希望指定的字体名称中包含空格，请确保在 {cmd:{c -(}fontface{c )-}} 标签内将其用双引号括起来。例如，要使用您系统中名为“Century Schoolbook”的字体显示文本，您可以输入：

{phang2}
{cmd:. scatter mpg weight, title(`"文本在 {c -(}fontface "Century Schoolbook":不同字体{c )-}"')}{break}
({it:{stata `"gr_example auto: scatter mpg weight, title(`"文本在 {fontface "Century Schoolbook":不同字体}"')"':click to run}})

{pstd}
如果您指定的字体在您的系统上不存在，操作系统将替换为其他字体。

{pstd}
{cmd:{c -(}fontface{c )-}} 遵循语法 3 和语法 4。

{pstd}
四种标准字体也可以通过 {cmd:{c -(}fontface{c )-}} 标签指定。例如，您可以使用 {cmd:{c -(}fontface "stSerif"{c )-}} 指定默认的衬线字体；实际上，{cmd:{c -(}stSerif{c )-}} 正是这种简写。

{pstd}
如果您选择通过使用 {cmd:{c -(}fontface{c )-}} 标签在图形中更改字体，请注意，如果您与其他 Stata 用户共享 Stata {cmd:.gph} 文件，他们的系统中必须有完全相同的字体以确保图形正确显示。此外，如果您需要将图形导出为 PostScript 或封装的 PostScript 文件，Stata 将尝试将您操作系统的字体转换为 PostScript 字体并将其嵌入导出文件中。并不总是能够正确地转换和嵌入所有字体，这就是为什么我们建议使用 Stata 提供的四种标准字体。

{pstd}
在 Stata for Unix 中，如果您使用的字体不是这四种标准字体，并且您希望将图形导出为 PostScript 或封装的 PostScript 文件，您可能需要指定系统字体所在的目录；请参见 {manhelpi ps_options G-3}。


{marker symbols}{...}
{title:希腊字母和其他符号}

{pstd}
Stata 支持在图形文本中使用许多符号，包括希腊字母的大写和小写形式以及许多数学符号。

{pstd}
您可能已经熟悉 {cmd:{c -(}char{c )-}} 标签 -- 同义词 {cmd:{c -(}c{c )-}} -- 它遵循语法 3，允许您输出任何 ASCII 字符。如果不熟悉，请参见 {it:{help smcl##ascii:使用 ASCII 代码显示字符}} 在 {manhelp smcl P} 中。除了线条绘制字符外，所有 {cmd:{c -(}char{c )-}} 的特性都可以在图形文本中使用。

{pstd}
图形文本支持的符号甚至比 {cmd:{c -(}char{c )-}} 更多。对于 Stata 支持的符号，我们选择定义与 HTML 字符实体引用名称相匹配的 SMCL 标签。HTML 字符实体引用具有广泛用途，并且在大多数情况下，对于您希望显示的任何符号都有非常直观的名称。

{pstd}
在 HTML 中，字符实体引用的形式为 "{cmd:&}{it:name}{cmd:;}"，其中 {it:name} 应该是给定字符实体的直观名称。在 SMCL 中，给定字符实体的标签是 "{cmd:{c -(}&}{it:name}{cmd:{c )-}}”。

{pstd}
例如，在 HTML 中，大写希腊字母 Sigma 的字符引用是 {cmd:&Sigma;}. 在 SMCL 中，大写希腊字母 Sigma 的标签是
 {cmd:{c -(}&Sigma{c )-}}。

{pstd}
在某些情况下，特定符号的 HTML 字符引用的名称并不那么直观。例如，HTML 使用 {cmd:&fnof;} 表示“函数”符号（{it:f}）。SMCL 提供 {cmd:{c -(}&fnof{c )-}} 以匹配 HTML 字符引用，并提供更直观的 {cmd:{c -(}&function{c )-}}。

{pstd}
所有 SMCL 符号标签遵循语法 1。

{pstd}
请参见 
{it:{help graph_text##smcl:图形文本中实用的 SMCL 标签完整列表}}以获取 SMCL 在图形中支持的符号的完整列表。

{pstd}
作为示例，我们将绘制一个函数并给它一个适当的标题：

{phang2}
{cmd}. twoway function y = gammaden(1.5,2,0,x), range(0 10) ///{break}
title("{c -(}&chi{c )-}{c -(}sup:2{c )-}(3) 分布"){break}
{txt}({it:{stata "gr_example2 funcsup2":click to run}})

{pstd}
呈现在屏幕上或导出到磁盘的图形通常会使用当前字体使用 Unicode 字符显示希腊字母和其他数学符号。Postscript 格式不支持 Unicode 字符，因此使用 {cmd:{c -(}stSymbol{c )-}} 字体显示希腊字母和其他数学符号。例如，
{cmd:{c -(}&Alpha{c )-}} 等同于 {cmd:{c -(}stSymbol:A{c )-}}。


{marker smcl}{...}
{title:图形文本中实用的 SMCL 标签完整列表}

{pstd}
在图形文本中实用的 SMCL 标签如下：

{p2colset 8 30 32 4}{...}
{p2col :SMCL 标签}描述{p_end}
{p2line}
{p2col :{cmd:{c -(}bf{c )-}}}将文本加粗{p_end}
{p2col :{cmd:{c -(}it{c )-}}}将文本倾斜{p_end}
{p2col :{cmd:{c -(}superscript{c )-}}}将文本显示为上标{p_end}
{p2col :{cmd:{c -(}sup{c )-}}}上标的同义词{p_end}
{p2col :{cmd:{c -(}subscript{c )-}}}将文本显示为下标{p_end}
{p2col :{cmd:{c -(}sub{c )-}}}下标的同义词{p_end}
{p2col :{cmd:{c -(}stSans{c )-}}}使用默认无衬线字体显示文本{p_end}
{p2col :{cmd:{c -(}stSerif{c )-}}}使用默认衬线字体显示文本{p_end}
{p2col :{cmd:{c -(}stMono{c )-}}}使用默认等宽（固定宽度）字体显示文本{p_end}
{p2col :{cmd:{c -(}stSymbol{c )-}}}使用默认符号字体显示文本{p_end}
{p2col :{cmd:{c -(}fontface "}{it:fontname}{cmd:"{c )-}}}使用指定的 {it:fontname} 显示文本{p_end}
{p2col :{cmd:{c -(}char }{it:code}{c )-}}显示 ASCII 字符{p_end}
{p2col :{cmd:{c -(}&}{it:symbolname}{cmd:{c )-}}}显示希腊字母、数学符号或其他符号{p_end}
{p2line}

{pstd}
SMCL 在图形文本中支持的希腊字母如下：

{p2colset 8 30 32 4}{...}
{p2col :SMCL 标签}描述{p_end}
{p2line}
{p2col :{cmd:{c -(}&Alpha{c )-}}}大写希腊字母 Alpha{p_end}
{p2col :{cmd:{c -(}&Beta{c )-}}}大写希腊字母 Beta{p_end}
{p2col :{cmd:{c -(}&Gamma{c )-}}}大写希腊字母 Gamma{p_end}
{p2col :{cmd:{c -(}&Delta{c )-}}}大写希腊字母 Delta{p_end}
{p2col :{cmd:{c -(}&Epsilon{c )-}}}大写希腊字母 Epsilon{p_end}
{p2col :{cmd:{c -(}&Zeta{c )-}}}大写希腊字母 Zeta{p_end}
{p2col :{cmd:{c -(}&Eta{c )-}}}大写希腊字母 Eta{p_end}
{p2col :{cmd:{c -(}&Theta{c )-}}}大写希腊字母 Theta{p_end}
{p2col :{cmd:{c -(}&Iota{c )-}}}大写希腊字母 Iota{p_end}
{p2col :{cmd:{c -(}&Kappa{c )-}}}大写希腊字母 Kappa{p_end}
{p2col :{cmd:{c -(}&Lambda{c )-}}}大写希腊字母 Lambda{p_end}
{p2col :{cmd:{c -(}&Mu{c )-}}}大写希腊字母 Mu{p_end}
{p2col :{cmd:{c -(}&Nu{c )-}}}大写希腊字母 Nu{p_end}
{p2col :{cmd:{c -(}&Xi{c )-}}}大写希腊字母 Xi{p_end}
{p2col :{cmd:{c -(}&Omicron{c )-}}}大写希腊字母 Omicron{p_end}
{p2col :{cmd:{c -(}&Pi{c )-}}}大写希腊字母 Pi{p_end}
{p2col :{cmd:{c -(}&Rho{c )-}}}大写希腊字母 Rho{p_end}
{p2col :{cmd:{c -(}&Sigma{c )-}}}大写希腊字母 Sigma{p_end}
{p2col :{cmd:{c -(}&Tau{c )-}}}大写希腊字母 Tau{p_end}
{p2col :{cmd:{c -(}&Upsilon{c )-}}}大写希腊字母 Upsilon{p_end}
{p2col :{cmd:{c -(}&Phi{c )-}}}大写希腊字母 Phi{p_end}
{p2col :{cmd:{c -(}&Chi{c )-}}}大写希腊字母 Chi{p_end}
{p2col :{cmd:{c -(}&Psi{c )-}}}大写希腊字母 Psi{p_end}
{p2col :{cmd:{c -(}&Omega{c )-}}}大写希腊字母 Omega{p_end}
{p2col :{cmd:{c -(}&alpha{c )-}}}小写希腊字母 alpha{p_end}
{p2col :{cmd:{c -(}&beta{c )-}}}小写希腊字母 beta{p_end}
{p2col :{cmd:{c -(}&gamma{c )-}}}小写希腊字母 gamma{p_end}
{p2col :{cmd:{c -(}&delta{c )-}}}小写希腊字母 delta{p_end}
{p2col :{cmd:{c -(}&epsilon{c )-}}}小写希腊字母 epsilon{p_end}
{p2col :{cmd:{c -(}&zeta{c )-}}}小写希腊字母 zeta{p_end}
{p2col :{cmd:{c -(}&eta{c )-}}}小写希腊字母 eta{p_end}
{p2col :{cmd:{c -(}&theta{c )-}}}小写希腊字母 theta{p_end}
{p2col :{cmd:{c -(}&thetasym{c )-}}}希腊 theta 符号{p_end}
{p2col :{cmd:{c -(}&iota{c )-}}}小写希腊字母 iota{p_end}
{p2col :{cmd:{c -(}&kappa{c )-}}}小写希腊字母 kappa{p_end}
{p2col :{cmd:{c -(}&lambda{c )-}}}小写希腊字母 lambda{p_end}
{p2col :{cmd:{c -(}&mu{c )-}}}小写希腊字母 mu{p_end}
{p2col :{cmd:{c -(}&nu{c )-}}}小写希腊字母 nu{p_end}
{p2col :{cmd:{c -(}&xi{c )-}}}小写希腊字母 xi{p_end}
{p2col :{cmd:{c -(}&omicron{c )-}}}小写希腊字母 omicron{p_end}
{p2col :{cmd:{c -(}&pi{c )-}}}小写希腊字母 pi{p_end}
{p2col :{cmd:{c -(}&piv{c )-}}}希腊 pi 符号{p_end}
{p2col :{cmd:{c -(}&rho{c )-}}}小写希腊字母 rho{p_end}
{p2col :{cmd:{c -(}&sigma{c )-}}}小写希腊字母 sigma{p_end}
{p2col :{cmd:{c -(}&sigmaf{c )-}}}希腊“最终” sigma 符号{p_end}
{p2col :{cmd:{c -(}&tau{c )-}}}小写希腊字母 tau{p_end}
{p2col :{cmd:{c -(}&upsilon{c )-}}}小写希腊字母 upsilon{p_end}
{p2col :{cmd:{c -(}&upsih{c )-}}}带钩的希腊 upsilon 符号{p_end}
{p2col :{cmd:{c -(}&phi{c )-}}}小写希腊字母 phi{p_end}
{p2col :{cmd:{c -(}&chi{c )-}}}小写希腊字母 chi{p_end}
{p2col :{cmd:{c -(}&psi{c )-}}}小写希腊字母 psi{p_end}
{p2col :{cmd:{c -(}&omega{c )-}}}小写希腊字母 omega{p_end}
{p2line}

{pstd}
SMCL 在图形文本中支持的数学符号如下：

{p2colset 8 30 32 4}{...}
{p2col :SMCL 标签}描述{p_end}
{p2line}
{p2col :{cmd:{c -(}&weierp{c )-}}}Weierstrass p，幂集{p_end}
{p2col :{cmd:{c -(}&image{c )-}}}虚部{p_end}
{p2col :{cmd:{c -(}&imaginary{c )-}}}虚部的同义词{p_end}
{p2col :{cmd:{c -(}&real{c )-}}}实部{p_end}
{p2col :{cmd:{c -(}&alefsym{c )-}}}Alef，第一个超限基数{p_end}
{p2col :{cmd:{c -(}&amp{c )-}}}和号{p_end}
{p2col :{cmd:{c -(}&lt{c )-}}}小于{p_end}
{p2col :{cmd:{c -(}&gt{c )-}}}大于{p_end}
{p2col :{cmd:{c -(}&le{c )-}}}小于或等于{p_end}
{p2col :{cmd:{c -(}&ge{c )-}}}大于或等于{p_end}
{p2col :{cmd:{c -(}&ne{c )-}}}不等于{p_end}
{p2col :{cmd:{c -(}&fnof{c )-}}}函数{p_end}
{p2col :{cmd:{c -(}&function{c )-}}}函数的同义词{p_end}
{p2col :{cmd:{c -(}&forall{c )-}}}对所有{p_end}
{p2col :{cmd:{c -(}&part{c )-}}}偏微分{p_end}
{p2col :{cmd:{c -(}&exist{c )-}}}存在{p_end}
{p2col :{cmd:{c -(}&empty{c )-}}}空集合，空集，直径{p_end}
{p2col :{cmd:{c -(}&nabla{c )-}}}nabla，向后差{p_end}
{p2col :{cmd:{c -(}&isin{c )-}}}元素属于{p_end}
{p2col :{cmd:{c -(}&element{c )-}}}元素的同义词{p_end}
{p2col :{cmd:{c -(}&notin{c )-}}}不是元素的{p_end}
{p2col :{cmd:{c -(}&prod{c )-}}}N元乘积，乘积符号{p_end}
{p2col :{cmd:{c -(}&sum{c )-}}}N元求和{p_end}
{p2col :{cmd:{c -(}&minus{c )-}}}减号{p_end}
{p2col :{cmd:{c -(}&plusmn{c )-}}}正负号{p_end}
{p2col :{cmd:{c -(}&plusminus{c )-}}}正负符号的同义词{p_end}
{p2col :{cmd:{c -(}&lowast{c )-}}}星号操作符{p_end}
{p2col :{cmd:{c -(}&radic{c )-}}}根号，平方根{p_end}
{p2col :{cmd:{c -(}&sqrt{c )-}}}平方根的同义词{p_end}
{p2col :{cmd:{c -(}&prop{c )-}}}成比例{p_end}
{p2col :{cmd:{c -(}&infin{c )-}}}无穷大{p_end}
{p2col :{cmd:{c -(}&infinity{c )-}}}无穷大的同义词{p_end}
{p2col :{cmd:{c -(}&ang{c )-}}}角度{p_end}
{p2col :{cmd:{c -(}&angle{c )-}}}角度的同义词{p_end}
{p2col :{cmd:{c -(}&and{c )-}}}逻辑与，楔形{p_end}
{p2col :{cmd:{c -(}&or{c )-}}}逻辑或，vee{p_end}
{p2col :{cmd:{c -(}&cap{c )-}}}交集，帽子{p_end}
{p2col :{cmd:{c -(}&intersect{c )-}}}交集的同义词{p_end}
{p2col :{cmd:{c -(}&cup{c )-}}}并集，杯子{p_end}
{p2col :{cmd:{c -(}&union{c )-}}}并集的同义词{p_end}
{p2col :{cmd:{c -(}&int{c )-}}}积分{p_end}
{p2col :{cmd:{c -(}&integral{c )-}}}积分的同义词{p_end}
{p2col :{cmd:{c -(}&there4{c )-}}}因此{p_end}
{p2col :{cmd:{c -(}&therefore{c )-}}}因此的同义词{p_end}
{p2col :{cmd:{c -(}&sim{c )-}}}波浪号操作符，类似于{p_end}
{p2col :{cmd:{c -(}&cong{c )-}}}大约等于{p_end}
{p2col :{cmd:{c -(}&asymp{c )-}}}几乎等于，渐近于{p_end}
{p2col :{cmd:{c -(}&equiv{c )-}}}与...相同{p_end}
{p2col :{cmd:{c -(}&sub{c )-}}}子集{p_end}
{p2col :{cmd:{c -(}&subset{c )-}}}子集的同义词{p_end}
{p2col :{cmd:{c -(}&sup{c )-}}}超集{p_end}
{p2col :{cmd:{c -(}&superset{c )-}}}超集的同义词{p_end}
{p2col :{cmd:{c -(}&nsub{c )-}}}不是子集{p_end}
{p2col :{cmd:{c -(}&nsubset{c )-}}}不是子集的同义词{p_end}
{p2col :{cmd:{c -(}&sube{c )-}}}子集或等于{p_end}
{p2col :{cmd:{c -(}&subsete{c )-}}}子集或等于的同义词{p_end}
{p2col :{cmd:{c -(}&supe{c )-}}}超集或等于{p_end}
{p2col :{cmd:{c -(}&supersete{c )-}}}超集或等于的同义词{p_end}
{p2col :{cmd:{c -(}&oplus{c )-}}}圈加，直接和{p_end}
{p2col :{cmd:{c -(}&otimes{c )-}}}圈乘，向量积{p_end}
{p2col :{cmd:{c -(}&perp{c )-}}}垂直，正交于，向上操作{p_end}
{p2col :{cmd:{c -(}&orthog{c )-}}}垂直的同义词{p_end}
{p2col :{cmd:{c -(}&sdot{c )-}}}点操作符{p_end}
{p2col :{cmd:{c -(}&dot{c )-}}}点的同义词{p_end}
{p2col :{cmd:{c -(}&prime{c )-}}}素数，分钟，脚{p_end}
{p2col :{cmd:{c -(}&Prime{c )-}}}双素数，秒，英寸{p_end}
{p2col :{cmd:{c -(}&frasl{c )-}}}分数斜杠{p_end}
{p2col :{cmd:{c -(}&larr{c )-}}}向左箭头{p_end}
{p2col :{cmd:{c -(}&uarr{c )-}}}向上箭头{p_end}
{p2col :{cmd:{c -(}&rarr{c )-}}}向右箭头{p_end}
{p2col :{cmd:{c -(}&darr{c )-}}}向下箭头{p_end}
{p2col :{cmd:{c -(}&harr{c )-}}}左右箭头{p_end}
{p2col :{cmd:{c -(}&crarr{c )-}}}向下箭头带左转，返回车{p_end}
{p2col :{cmd:{c -(}&lArr{c )-}}}向左双箭头，由...隐含{p_end}
{p2col :{cmd:{c -(}&uArr{c )-}}}向上双箭头{p_end}
{p2col :{cmd:{c -(}&rArr{c )-}}}向右双箭头，意味着{p_end}
{p2col :{cmd:{c -(}&dArr{c )-}}}向下双箭头{p_end}
{p2col :{cmd:{c -(}&hArr{c )-}}}左右双箭头{p_end}
{p2line}

{pstd}
SMCL 在图形文本中支持的其他符号如下：

{p2colset 8 30 32 4}{...}
{p2col :SMCL 标签}描述{p_end}
{p2line}
{p2col :{cmd:{c -(}&trade{c )-}}}商标{p_end}
{p2col :{cmd:{c -(}&trademark{c )-}}}商标的同义词{p_end}
{p2col :{cmd:{c -(}&reg{c )-}}}注册商标{p_end}
{p2col :{cmd:{c -(}&copy{c )-}}}版权{p_end}
{p2col :{cmd:{c -(}&copyright{c )-}}}版权的同义词{p_end}
{p2col :{cmd:{c -(}&bull{c )-}}}项目符号{p_end}
{p2col :{cmd:{c -(}&bullet{c )-}}}项目符号的同义词{p_end}
{p2col :{cmd:{c -(}&hellip{c )-}}}水平省略号{p_end}
{p2col :{cmd:{c -(}&ellipsis{c )-}}}省略号的同义词{p_end}
{p2col :{cmd:{c -(}&loz{c )-}}}菱形，钻石{p_end}
{p2col :{cmd:{c -(}&lozenge{c )-}}}菱形的同义词{p_end}
{p2col :{cmd:{c -(}&diamond{c )-}}}菱形的同义词{p_end}
{p2col :{cmd:{c -(}&spades{c )-}}}黑桃花色{p_end}
{p2col :{cmd:{c -(}&clubs{c )-}}}梅花花色{p_end}
{p2col :{cmd:{c -(}&hearts{c )-}}}红心花色{p_end}
{p2col :{cmd:{c -(}&diams{c )-}}}方片花色{p_end}
{p2col :{cmd:{c -(}&diamonds{c )-}}}方片的同义词{p_end}
{p2col :{cmd:{c -(}&degree{c )-}}}度{p_end}
{p2line}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_text.sthlp>}