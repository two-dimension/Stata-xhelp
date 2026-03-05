{smcl}
{* *! version 1.1.23  19oct2017}{...}
{vieweralsosee "[R] translate" "mansection R translate"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] log" "help log_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph export" "help graph_export_zh"}{...}
{vieweralsosee "[G-2] graph print" "help graph_print_zh"}{...}
{vieweralsosee "[G-2] graph set" "help graph_set_zh"}{...}
{vieweralsosee "[P] smcl" "help smcl_zh"}{...}
{viewerjumpto "Syntax" "translate_zh##syntax"}{...}
{viewerjumpto "Description" "translate_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "translate_zh##linkspdf"}{...}
{viewerjumpto "Options for print" "translate_zh##options_print"}{...}
{viewerjumpto "Options for translate" "translate_zh##options_translate"}{...}
{viewerjumpto "Remarks" "translate_zh##remarks"}{...}
{viewerjumpto "Technical note for Unix(GUI) users" "translate_zh##technote"}{...}
{viewerjumpto "Technical note for using PDF translators" "translate_zh##technote2"}{...}
{viewerjumpto "Examples" "translate_zh##examples"}{...}
{viewerjumpto "Stored results" "translate_zh##results"}
{help translate:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[R] translate} {hline 2}}打印和转换日志{p_end}
{p2col:}({mansection R translate:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
打印日志和SMCL文件

{p 8 18 2}
{cmd:print} {it:{help filename_zh}}
	    [{cmd:,}
	     {opt like(ext)}
	     {opt name(windowname)}
	     {it:override_options}]


{pstd}
将日志文件转换为SMCL文件，反之亦然

{p 8 18 2}
{cmd:translate} {it:{help filename_zh:输入文件名}}
		{it:{help filename_zh:输出文件名}}
		[{cmd:,} {opt t:ranslator(tname)}
			 {opt name(windowname)}
			 {it:override_options}
			 {opt replace}]


{pstd}
查看翻译器参数设置

{p 8 19 2}
{cmd:translator} {opt q:uery} [{it:tname}]


{pstd}
更改翻译器参数设置

{p 8 19 2}
{cmd:translator} {opt set} [{it:tname} {it:setopt} {it:setval}]


{pstd}
将翻译器参数设置恢复为默认值

{p 8 19 2}
{cmd:translator} {opt reset} {it:tname}


{pstd}
列出当前扩展名到另一个的映射

{p 8 17 2}
{cmd:transmap} {opt q:uery} [{cmd:.}{it:ext}]


{pstd}
指定一个扩展名的文件与另一个扩展名的文件被视为相同

{p 8 17 2}
{cmd:transmap} {opt def:ine} {cmd:.}{it:ext_new} {cmd:.}{it:ext_old}


{phang}
在{opt print}中，{it:filename}除了是一个要打印的文件名外，还可以指定为{cmd:@Results}表示结果窗口，或者{cmd:@Viewer}表示查看器窗口。

{phang}
{opt translate}中 {it:filename_in}可以像{opt print}中的{it:filename}一样指定。

{phang}
在{opt translator}中，{it:tname}指定了用于翻译文件的翻译器名称；详见{bf:{help translate##translator:translator()}}选项中的{it:转换选项}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:print}打印日志、SMCL和文本文件。{cmd:translate}将日志和SMCL文件从一种格式转换为另一种格式，通常后者更适合打印。{cmd:translate}还可以将SMCL日志转换为纯文本。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R translateQuickstart:快速入门}

        {mansection R translateRemarksandexamples:备注和示例}

{pstd}
以上章节不包含在此帮助文件中。


{marker options_print}{...}
{title:打印选项}

{phang}
{opt like(ext)}指定文件应如何转换为适合打印的形式。默认情况下，由{it:{help filename_zh}}的扩展名来确定转换方法。因此，{cmd:mylog.smcl}将根据转换{opt smcl}文件的规则进行转换，{cmd:myfile.txt}将根据转换{opt txt}文件的规则进行转换，等等。
（这些规则实际上是{opt translate}的{opt smcl2prn}和{opt txt2prn}翻译器，但暂且不提。）

{pmore}
以下扩展名的规则是预定义的：

{synoptset 13}{...}
{synopt:{space 8}{opt .txt}}
假设输入文件包含纯文本{p_end}
{synopt:{space 8}{opt .log}}
假设输入文件包含Stata日志纯文本{p_end}
{synopt:{space 8}{opt .smcl}}
假设输入文件包含SMCL{p_end}
{p2colreset}{...}

{pmore}
要打印具有不同于上述列出的扩展名的文件，您可以定义一个新的扩展名，但不必这样做。假设您想要打印文件{cmd:read.me}，您知道它包含纯文本。如果您仅键入{cmd:print read.me}，您会被告知Stata无法转换{cmd:.me}文件。
（实际上，您会被告知未找到{opt me2prn}的翻译器。）您可以键入{cmd:print read.me, like(txt)}来告诉{opt print}将{cmd:read.me}像{cmd:.txt}文件那样打印。

{pmore}
另一方面，您可以键入

{pin2}
{cmd:.transmap define .me .txt}

{pmore}
告诉Stata将{cmd:.me}文件始终视为{cmd:.txt}文件。如果您这样做，Stata将在以后的会话中也会记住这一新规则。

{pmore}
当您指定{opt like()}选项时，您将覆盖记录的规则。因此，如果您键入{cmd:print mylog.smcl, like(txt)}，该文件将作为纯文本打印（意味着所有的SMCL命令都会显示）。

{phang}
{opt name(windowname)}指定打印查看器时要打印的窗口。默认情况下，Stata将打印最上面的查看器[Unix(GUI)用户：请参阅下面的{help translate##technote:技术说明}]。在打印结果窗口时，{opt name()}选项将被忽略。

{pmore}
窗口名称位于窗口标题的括号中。例如，如果查看器窗口的标题是“Viewer (#1) [help print]”，则该窗口的名称为{opt #1}。

{phang}
{it:override_options}指的是{opt translate}用于覆盖默认值的选项。{opt print}使用{opt translate}将文件转换为适合发送到打印机的格式，因此{cmd:translate}的{it:override_options}也可以与{cmd:print}一起使用。可用的设置因每个翻译器而异（例如，{cmd:smcl2ps}的设置会与{cmd:smcl2txt}不同），并且可能在不同的操作系统之间也会有所不同（例如，Windows可能与macOS的打印选项不同）。要找出您可以在打印{cmd:.smcl}文件时覆盖的内容，请键入

{pin2}
{cmd:. translator query smcl2prn}{break}

{pmore}
在省略的输出中，您可能会发现存在一个{opt rmargin} {it:#}可调值，该值指定右边距（以英寸为单位）。您可以指定{it:override_option} {opt rmargin(#)}来临时覆盖默认值，或者您可以提前键入{bind:{cmd:translator set smcl2prn rmargin} {it:#}}来永久重置该值。

{pmore}
另外，在一些计算机和一些翻译器上，您可能会发现什么都无法设置。


{marker options_translate}{...}
{marker translator}{...}
{title:转换选项}

{phang}
{opt translator(tname)}指定要用于翻译文件的翻译器名称。可用的翻译器有

{center:{c TLC}{hline 13}{c TT}{hline 22}{c TT}{hline 24}{c TRC}}
{center:{c |} {it:tname}       {c |} 输入                {c |} 输出{space 16} {c |}}
{center:{c LT}{hline 13}{c +}{hline 22}{c +}{hline 24}{c RT}}
{center:{c |} {cmd:smcl2ps}     {c |} SMCL                 {c |} PostScript             {c |}}
{center:{c |} {cmd:log2ps}      {c |} Stata文本日志       {c |} PostScript             {c |}}
{center:{c |} {cmd:txt2ps}      {c |} 通用文本文件       {c |} PostScript             {c |}}
{center:{c |} {cmd:Viewer2ps}   {c |} 查看器窗口        {c |} PostScript             {c |}}
{center:{c |} {cmd:Results2ps}  {c |} 结果窗口         {c |} PostScript             {c |}}
{center:{c LT}{hline 13}{c +}{hline 22}{c +}{hline 24}{c RT}}
{center:{c |} {cmd:smcl2prn}    {c |} SMCL                 {c |} 默认打印机格式 {c |}}
{center:{c |} {cmd:log2prn}     {c |} Stata文本日志       {c |} 默认打印机格式 {c |}}
{center:{c |} {cmd:txt2prn}     {c |} 通用文本日志       {c |} 默认打印机格式 {c |}}
{center:{c |} {cmd:Results2prn} {c |} 结果窗口         {c |} 默认打印机格式 {c |}}
{center:{c |} {cmd:Viewer2prn}  {c |} 查看器窗口        {c |} 默认打印机格式 {c |}}
{center:{c LT}{hline 13}{c +}{hline 22}{c +}{hline 24}{c RT}}
{center:{c |} {cmd:smcl2txt}    {c |} SMCL                 {c |} 通用文本日志       {c |}}
{center:{c |} {cmd:smcl2log}    {c |} SMCL                 {c |} Stata文本日志       {c |}}
{center:{c |} {cmd:Results2txt} {c |} 结果窗口         {c |} 通用文本文件       {c |}}
{center:{c |} {cmd:Viewer2txt}  {c |} 查看器窗口        {c |} 通用文本文件       {c |}}
{center:{c LT}{hline 13}{c +}{hline 22}{c +}{hline 24}{c RT}}
{center:{c |} {cmd:smcl2pdf}    {c |} SMCL                 {c |} PDF                    {c |}}
{center:{c |} {cmd:log2pdf}     {c |} Stata文本日志       {c |} PDF                    {c |}}
{center:{c |} {cmd:txt2pdf}     {c |} 通用文本日志       {c |} PDF                    {c |}}
{center:{c |} {cmd:Results2pdf} {c |} 结果窗口         {c |} PDF                    {c |}}
{center:{c |} {cmd:Viewer2pdf}  {c |} 查看器窗口        {c |} PDF                    {c |}}
{center:{c BLC}{hline 13}{c BT}{hline 22}{c BT}{hline 24}{c BRC}}

{pmore}
    如果未指定{opt translator()}，则{opt translate}将根据指定的文件名的扩展名确定使用哪个翻译器。  
    键入{cmd:translate myfile.smcl myfile.ps}将使用{opt smcl2ps}翻译器。键入{cmd:translate myfile.smcl myfile.ps, translate(smcl2prn)}将覆盖默认值并使用{opt smcl2prn}翻译器。

{pmore}
    实际上，当您键入{cmd:translate} {it:a}{cmd:.}{it:b} {it:c}{cmd:.}{it:d}时，{opt translate}会在{opt transmap}扩展名同义词表中查找{cmd:.}{it:b}。如果未找到{cmd:.}{it:b}，那么将使用翻译器{it:b}{cmd:2}{it:d}。如果在表中找到{cmd:.}{it:b}，则使用映射的扩展名（称之为{it:b'}），然后使用翻译器{it:b'}{cmd:2}{it:d}。例如，

{synoptset 43}{...}
{synopt:{space 8}命令}使用的翻译器{p_end}
{space 8}{synoptline}
{synopt:{space 8}{cmd:. translate myfile.smcl myfile.ps}}{opt smcl2ps}{p_end}

{synopt:{space 8}{cmd:. translate myfile.odd myfile.ps}}{opt odd2ps}，该翻译器不存在，因此出错{p_end}

{synopt:{space 8}{cmd:. transmap define .odd .txt}}{p_end}
{synopt:{space 8}{cmd:. translate myfile.odd myfile.ps}}{opt txt2ps}{p_end}
{space 8}{synoptline}
{p2colreset}{...}

{pmore}
   您可以通过键入{cmd:transmap query}列出{opt translate}使用的映射。

{phang}
{opt name(windowname)}指定翻译查看器时要翻译的窗口。默认情况下，Stata将翻译最上面的查看器。在翻译结果窗口时，{opt name()}选项将被忽略。

{pmore}
   窗口名称位于窗口标题的括号中。例如，如果查看器窗口的标题是“Viewer (#1) [help print]”，则该窗口的名称为{opt #1}。

{phang}
{it:override_options}覆盖指定或隐含翻译器的任何默认选项。要找出您可以为{cmd:log2ps}覆盖的内容，请键入

{pin2}{cmd:. translator query log2ps}

{pmore}
    在省略的输出中，您可能会发现存在一个{cmd:rmargin} {it:#}可调值，该值为{opt log2ps}指定右边距（以英寸为单位）。您可以指定{it:override_option} {opt rmargin(#)}以临时覆盖默认值，或提前键入{bind:{cmd:translator set log2ps rmargin} {it:#}}以永久重置该值。

{phang}
{opt replace}指定如果{it:{help filename_zh:filename_out}}已存在，则替换它。


{marker remarks}{...}
{title:备注}

{pstd}
{opt print}打印日志、SMCL和文本文件。虽然在设置{opt print}（和{opt translate}，{opt print}使用的翻译器）的工作方式方面有很大的灵活性，但它们已经被设置好，应该能够正常工作：

{pin}
{cmd:. print mylog.smcl}{break}
{cmd:. print mylog.log}

{pstd}
Unix用户可能会发现他们需要在使用{opt print}之前进行一些设置；请参见{mansection R translateRemarksandexamplesPrintingfiles,Unix:{it:打印文件，Unix}}在{bf:[R] translate}中。
国际Unix用户可能还希望修改默认纸张大小。
所有用户都可以根据自己的需要定制{opt print}和{opt translate}。

{pstd}
{opt print}也可以用于打印当前结果窗口或查看器的内容。例如，可以通过键入

{pin}
{cmd:. print @Results}

{pstd}
使用{opt translate}将日志和SMCL文件从一种格式转换为另一种格式，后者通常更适合打印。
{opt translate}还可以将SMCL日志（通过键入{cmd:log using mylog}创建的日志）转换为纯文本：

{phang2}
{cmd:. translate mylog.smcl mylog.log}

{pstd}
您可以使用{opt translate}来恢复在忘记启动日志时的日志。可以键入

{phang2}
{cmd:. translate @Results mylog.txt}

{pstd}
捕获当前在结果窗口中显示的内容为纯文本。

{pstd}
该条目提供了{opt print}和{opt translate}的一般概述，并详细介绍了文本（非图形）文件的打印和转换。

{pstd}
{cmd:translator query}、{cmd:translator set}和{cmd:translator reset}显示、改变和恢复每个翻译器设置的默认值。

{pstd}
{cmd:transmap define}和{cmd:transmap query}创建和显示一个文件扩展名到另一个文件扩展名的映射，以供{cmd:print}和{cmd:translate}使用。

{pstd}
例如，{cmd:print myfile.txt}知道使用适合打印文本文件的翻译器，这是由于{cmd:.txt}扩展名。然而，它不知道如何处理{cmd:.xyz}文件。如果您拥有{cmd:.xyz}文件并希望始终将其视为{cmd:.txt}文件，可以键入{cmd:transmap define .xyz .txt}。


{marker technote}{...}
{title:针对Unix(GUI)用户的技术说明}

{pstd}
Unix(GUI)用户应注意，X-Windows没有窗口Z序的概念，这使得Stata无法确定哪个是最上面的窗口。Stata将根据哪个窗口获得焦点来确定哪个窗口是最上面的。但是，一些窗口管理器会将焦点设置到一个窗口而不将该窗口移到顶部。Stata认为的最上面窗口在视觉上可能不在最上面。因此，您应始终使用{cmd:name()}选项以确保打印的是正确的窗口。


{marker technote2}{...}
{title:使用PDF翻译器的技术说明（Windows和Unix）}

{pstd}
在使用{opt translate}将日志、SMCL或文本文件或Stata图形转换为PDF文件时，某些字符可能无法在生成的PDF文件中正确显示。出现这种情况是因为转换内容中含有来自不同语言的Unicode字符；一种字体可能不足以显示所有使用的字符。如果某个字符没有合适的字体可用，该字符在生成的PDF文件中将无法正确显示。

{pstd}
具体字体可以用于构建字体链。这些字体通过{it:fontname}指定，并用逗号分隔。优先考虑的字体应列在首位，之后是较不优先的字体。最多可以指定16种字体。Stata将检查原始内容中的每个字符，如果默认字体中未包含对应字符的字形，则将检查字体链中的每种字体，直到找到可以显示该字符的字体。

{pstd}
您可以通过为每个PDF翻译器指定{opt addfonts}来设置字体链，如下所示：

{pin2}{cmd:. translator set} {it:tname} {cmd:addfonts} {it:fontname}

{pstd}
这里，{it:tname}是PDF翻译器的名称，可以是{cmd:smcl2pdf}、{cmd:log2pdf}、{cmd:txt2pdf}、{cmd:Results2pdf}、{cmd:Viewer2pdf}或{cmd:Graph2pdf}。请参见{bf:{help translate##translator:translator()}}选项下的{it:转换选项}。

{pstd}
如果默认字体和字体链中的字体不包含该字符的字形，Stata具有自动选择字体的能力。自动字体选择可以使用以下命令进行控制：

{pin2}{cmd:. translator set} {it:tname} {cmd:autofont} {cmd:on}|{cmd:off}

{pstd}
默认情况下，{cmd:autofont}是开启的。Unix（控制台）用户需要设置字体目录，以便可以找到字体。

{pstd}
PDF文件接受Base14字体、Type 1字体以及扩展名为{cmd:.ttf}或{cmd:.ttc}的TrueType字体。如果{it:fontname}指的是TrueType字体或Type 1字体，则将在默认字体目录中搜索相应的TrueType或Type 1字体文件。Unix（控制台）用户可以键入

{pin2}{cmd:. translator set} {it:tname} {cmd:fontdir} {it:fontdirectory}

{pstd}
以设置默认字体目录。{it:fontdirectory}可以包含多个以分号分隔的字体目录。如果在当前字体目录下找不到指定的TrueType或Type 1字体，则会发出错误消息。


{marker examples}{...}
{title:示例}

{pstd}将SMCL日志转换为纯文本日志{p_end}
{phang2}{cmd:. translate mylog.smcl mylog.log}

{pstd}与上述相同，但如果{cmd:mylog.log}已存在则替换{p_end}
{phang2}{cmd:. translate mylog.smcl mylog.log, replace}

{pstd}将结果窗口的输出放入纯文本文件{p_end}
{phang2}{cmd:. translate @Results mylog.txt}

{pstd}将SMCL日志转换为PostScript文件{p_end}
{phang2}{cmd:. translate mylog.smcl mylog.ps}

{pstd}与上述相同，但使用翻译器{cmd:txt2ps}，并在{cmd:mylog.ps}已存在时替换{p_end}
{phang2}{cmd:. translate read.me mylog.ps, trans(txt2ps) replace}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:transmap query} {cmd:.}{it:ext}会在宏{cmd:r(suffix)}中存储映射的扩展名（不含前导点），或者如果{it:ext}未映射则存储{it:ext}。

{pstd}
{cmd:translator query} {it:translatorname}将在宏{opt r(setopt)}中为每个{it:setopt}、{it:setval}对存储{it:setval}。

{pstd}
{cmd:printer query} {it:printername}（仅适用于Unix）会在宏{cmd:r(suffix)}中存储打印机期望的输入的“文件类型”（当前为"{cmd:ps}"或"{cmd:txt}")，并在宏{cmd:r(command)}中存储将输出发送到打印机的命令。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <translate.sthlp>}