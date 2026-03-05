{smcl}
{* *! version 1.1.24  01nov2018}{...}
{vieweralsosee "[P] smcl" "mansection P smcl"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] display" "help display_zh"}{...}
{vieweralsosee "[RPT] dyndoc" "help dyndoc_zh"}{...}
{vieweralsosee "[R] log" "help log_zh"}{...}
{vieweralsosee "[RPT] markdown" "help markdown_zh"}{...}
{vieweralsosee "viewer" "help viewer"}{...}
{vieweralsosee "[U] 18.11.6 Writing system help" "help examplehelpfile_zh"}{...}
{viewerjumpto "Description" "smcl_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "smcl_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "smcl_zh##remarks"}
{help smcl:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[P] smcl} {hline 2}}Stata 标记和控制语言{p_end}
{p2col:}({mansection P smcl:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
SMCL，即 Stata 标记和控制语言，发音为“smickle”，是 Stata 的输出语言。SMCL 指令，例如 "{cmd:{c -(}it:...{c )-}}" 在

{pin2}
您可以使用 SMCL 输出 {c -(}it:斜体{c )-}。

{pstd}
会影响输出的显示方式：

{pin2}
您可以使用 SMCL 输出 {it:斜体}。

{pstd}
所有 Stata 输出都通过 SMCL 处理：帮助文件、统计结果，甚至您编写的程序中的 {help display_zh} 的输出。

{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection P smclRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注在以下标题下列出：

        {help smcl##modes:SMCL 模式}
        {help smcl##general_syntax:命令摘要 -- 一般语法}
        {help smcl##repeated_material:用于替代重复内容的帮助文件预处理指令}
        {help smcl##line_paragraph_mode:在线和段落模式下使用的格式指令}
        {help smcl##link_mode:在线和段落模式下使用的链接指令}
        {help smcl##line_mode:在线模式下使用的格式指令}
        {help smcl##paragraph_mode:段落模式下使用的格式指令}
        {help smcl##class:从常量和当前值类中插入值}
        {help smcl##ascii:使用 ASCII 和扩展 ASCII 代码显示字符}


{marker modes}{...}
{title:SMCL 模式}

{pstd}
SMCL 始终处于以下三种模式之一：

{center:1.  SMCL 行模式     }
{center:2.  SMCL 段落模式}
{center:3.  原样模式         }

{pstd}
模式 1 和 2 非常相似——在这两种模式中，SMCL 指令是可识别的，而这两种模式之间的区别仅在于它们如何处理空白和回车。在段落模式中——之所以称为段落模式，是因为它适用于将文本格式化为段落——SMCL 会将一行连接到下一行，并拆分行以形成长度几乎相等的输出行。在行模式下，SMCL 保持文本与您输入时几乎相同。例如，在行模式下，输入的文本

        变量名称        均值        标准误差

{pstd}
（这在帮助文件中可能出现）将完全按您输入的方式显示间隔。在段落模式下，以上内容将输出为“变量名称均值标准误差”，意味着它将全部连成一体。另一方面，以下文本

{pin}
SMCL 的两个主要用法是您撰写的程序和您编写的帮助文件以记录这些程序，但 SMCL 可以在任何上下文中使用。
Stata 在屏幕上显示的所有内容都是通过 SMCL 处理的。

{pstd}
将在段落模式下以良好的格式的段落显示。

{pstd}
在模式 3 原样模式下，不解释 SMCL 指令；文本按照您输入的原样显示。几乎没有必要使用此模式。

{pstd}
指令 {cmd:{c -(}smcl{c )-}} 后跟一个回车表示开始行和段落 SMCL 模式。默认的 SMCL 模式是行模式。使用指令 {cmd:{c -(}p{c )-}} 进入段落模式。当遇到空白行时，段落模式结束，SMCL 行模式重新建立，或者给出指令 {cmd:{c -(}p_end{c )-}}。

{pstd}
只有在行模式下才能切换到其他模式。除了用于 SMCL 段落模式的指令 {cmd:{c -(}p{c )-}}，还有使能原样模式的指令 {cmd:{c -(}asis{c )-}}。要从这两种模式返回到 SMCL 模式，必须使用指令 {cmd:{c -(}smcl{c )-}}。


{marker general_syntax}{...}
{title:命令摘要 -- 一般语法}

{pstd}
假设 {cmd:{c -(}xyz{c )-}} 是一个 SMCL 指令，尽管它不是。
{cmd:{c -(}xyz{c )-}} 可能有以下任一语法：

{marker syntax}{...}
{center:语法 1:  {cmd:{c -(}xyz{c )-}}          }
{center:语法 2:  {cmd:{c -(}xyz:}{it:text}{cmd:{c )-}}     }
{center:语法 3:  {cmd:{c -(}xyz} {it:args}{cmd:{c )-}}     }
{center:语法 4:  {cmd:{c -(}xyz} {it:args}{cmd::}{it:text}{cmd:{c )-}}}

{pstd}
语法 1 的意思是“执行 {cmd:{c -(}xyz{c )-}} 所执行的所有操作”。
语法 2 的意思是“执行 {cmd:{c -(}xyz{c )-}} 所执行的所有操作，作用于文本 {it:text}，然后停止执行”。
语法 3 的意思是“执行 {cmd:{c -(}xyz{c )-}} 所执行的所有操作，受 {it:args} 的修饰”。最后，语法 4 的意思是“执行 {cmd:{c -(}xyz{c )-}} 所执行的所有操作，受 {it:args} 的修饰，作用于文本 {it:text}，然后停止执行”。

{pstd}
并非每个 SMCL 指令都有所有四种语法，哪些语法是允许的在下面的描述中将明确说明。

{pstd}
在语法 3 和 4 中，{it:text} 可以包含其他 SMCL 指令。然而，注意一个重要的限制：大括号不仅必须匹配，而且必须在同一个物理（输入）行上匹配。


{marker repeated_material}{...}
{title:用于替代重复内容的帮助文件预处理指令}

    {cmd:INCLUDE help} {it:arg} 遵循 {help smcl##syntax:语法 3}。
{pin}{cmd:INCLUDE} 指令指定 SMCL 替换名为 {it:arg}{cmd:.ihlp} 的文件的内容。这在需要多次包含相同文本时非常有用。


{marker line_paragraph_mode}{...}
{title:在线和段落模式下使用的格式指令}

    {cmd:{c -(}sf{c )-}}, {cmd:{c -(}it{c )-}}, 和 {cmd:{c -(}bf{c )-}} 遵循 {help smcl##syntax:语法 1 和 2}。
{pin}这些指令指定字体的外观。
{cmd:{c -(}sf{c )-}} 表示标准字体，{cmd:{c -(}it{c )-}} 表示斜体，{cmd:{c -(}bf{c )-}} 表示粗体。

{pin}在 {help smcl##syntax:语法 1} 中使用时，这些指令切换到指定的字体样式，并且这种样式会持续使用，直到给出另一个指令。

{pin}在 {help smcl##syntax:语法 2} 中使用时，它们以指定的方式显示 {it:text}，然后将字体样式切换回之前的样式。

    {cmd:{c -(}input{c )-}}, {cmd:{c -(}error{c )-}}, {cmd:{c -(}result{c )-}}, 和 {cmd:{c -(}text{c )-}} 遵循 {help smcl##syntax:语法 1 和 2}。
{pin}这些指令指定文本的呈现方式：指示用户输入、错误、计算结果或围绕计算结果的文本。

{pin}这些样式通常呈现为颜色。在结果窗口上，白色背景下，Stata 默认以黑色和粗体显示输入，以红色显示错误消息，以黑色和粗体显示计算结果，以黑色显示文本。然而，真实颜色与 {cmd:{c -(}input{c )-}}, {cmd:{c -(}error{c )-}}, {cmd:{c -(}result{c )-}} 和 {cmd:{c -(}text{c )-}} 之间的关系可能不是默认的（用户可以重置它）。

    {cmd:{c -(}inp{c )-}}, {cmd:{c -(}err{c )-}}, {cmd:{c -(}res{c )-}}, 和 {cmd:{c -(}txt{c )-}} 遵循 {help smcl##syntax:语法 1 和 2}。
{pin}这四个命令是 {cmd:{c -(}input{c )-}}, {cmd:{c -(}error{c )-}}, {cmd:{c -(}result{c )-}}, 和 {cmd:{c -(}text{c )-}} 的同义词。

    {cmd:{c -(}cmd{c )-}} 遵循 {help smcl##syntax:语法 1 和 2}。
{pin}{cmd:{c -(}cmd{c )-}} 类似于“颜色”样式，是在帮助文件中显示 Stata 命令的推荐方法。 {cmd:{c -(}cmd{c )-}} 不应该与 {cmd:{c -(}inp{c )-}} 混淆；{cmd:{c -(}inp{c )-}} 显示实际键入的命令，而 {cmd:{c -(}cmd{c )-}} 是显示可能键入的命令的推荐方法。我们建议以 {cmd:{c -(}txt{c )-}} 的方式呈现帮助文件，并使用 {cmd:{c -(}cmd{c )-}} 来显示命令；在帮助文件中使用任何 {cmd:{c -(}sf{c )-}}, {cmd:{c -(}it{c )-}}, 或 {cmd:{c -(}bf{c )-}}，但我们建议不要使用任何“颜色” {cmd:{c -(}inp{c )-}}, {cmd:{c -(}err{c )-}}, 或 {cmd:{c -(}res{c )-}}，除非您正在显示实际的 Stata 输出。

{pstd}{cmd:{c -(}cmdab:}{it:text1}{cmd::}{it:text2}{cmd:{c )-}} 遵循 {help smcl##syntax:语法 2} 的变体（注意双冒号）。{p_end}
{pin}{cmd:{c -(}cmdab{c )-}} 是在帮助文件中显示 Stata 命令和选项的最小缩写的推荐方法； {it:text1} 表示最小缩写，{it:text2} 表示其余文本。当整个命令或选项名称是最小缩写时，您可以省略 {it:text2} 和额外的冒号。
{cmd:{c -(}cmdab:}{it:text}{cmd:{c )-}} 等效于 {cmd:{c -(}cmd:}{it:text}{cmd:{c )-}}。

{pstd}{cmd:{c -(}opt} {it:option}{cmd:{c )-}},
    {cmd:{c -(}opt} {it:option}{cmd:(}{it:arg}{cmd:){c )-}},
    {cmd:{c -(}opt} {it:option}{cmd:(}{it:a}{cmd:,}{it:b}{cmd:){c )-}}, 和
    {cmd:{c -(}opt} {it:option}{cmd:(}{it:a}{cmd:|}{it:b}{cmd:){c )-}}
    遵循 {help smcl##syntax:语法 3}; 是 {cmd:{c -(}cmd{c )-}} 的替代方法。{p_end}
{pstd}{cmd:{c -(}opt} {it:option1}{cmd::}{it:option2}{cmd:{c )-}},
    {cmd:{c -(}opt} {it:option1}{cmd::}{it:option2}{cmd:(}{it:arg}{cmd:){c )-}},
    {cmd:{c -(}opt} {it:option1}{cmd::}{it:option2}{cmd:(}{it:a}{cmd:,}{it:b}{cmd:){c )-}}, 和
    {cmd:{c -(}opt} {it:option1}{cmd::}{it:option2}{cmd:(}{it:a}{cmd:|}{it:b}{cmd:){c )-}} 遵循 {help smcl##syntax:语法 3 和 4}; 是 {cmd:{c -(}cmdab{c )-}} 的替代方法。{p_end}
{pin}{cmd:{c -(}opt{c )-}} 是显示选项的推荐方法。
     {cmd:{c -(}opt{c )-}} 允许您轻松包含参数。

  SMCL 指令 ...{col 30}等同于键入 ...
  {hline 76}
  {cmd:{c -(}opt} {it:option}{cmd:{c )-}}{col 30}{cmd:{c -(}cmd:}{it:option}{cmd:{c )-}}
  {cmd:{c -(}opt} {it:option}{cmd:(}{it:arg}{cmd:)}{cmd:{c )-}}{col 30}{cmd:{c -(}cmd:}{it:option}{cmd:({c )-}{c -(}it:}{it:args}{cmd:{c )-}{c -(}cmd:){c )-}}
  {cmd:{c -(}opt} {it:option}{cmd:(}{it:a}{cmd:,}{it:b}{cmd:)}{cmd:{c )-}}{col 30}{cmd:{c -(}cmd:}{it:option}{cmd:({c )-}{c -(}it:}{it:a}{cmd:{c )-}{c -(}cmd:,{c )-}{c -(}it:}{it:b}{cmd:{c -}{c -(}cmd:){c )-}}
  {cmd:{c -(}opt} {it:option}{cmd:(}{it:a}{cmd:|}{it:b}{cmd:)}{cmd:{c )-}}{col 30}{cmd:{c -(}cmd:}{it:option}{cmd:({c )-}{c -(}it:}{it:a}{cmd:{c )-}|{c -(}it:}{it:b}{cmd:{c -}{c -(}cmd:){c )-}}

  {cmd:{c -(}opt} {it:option1}{cmd::}{it:option2}{cmd:{c )-}}{col 30}{cmd:{c -(}cmd:}{it:option1}{cmd::}{it:option2}{cmd:{c )-}}
  {cmd:{c -(}opt} {it:option1}{cmd::}{it:option2}{cmd:(}{it:arg}{cmd:)}{cmd:{c )-}}{col 30}{cmd:{c -(}cmd:}{it:option1}{cmd::}{it:option2}{cmd:({c )-}{c -(}it:}{it:arg}{cmd:{c -}{c -(}cmd:){c )-}}
  {cmd:{c -(}opt} {it:option1}{cmd::}{it:option2}{cmd:(}{it:a}{cmd:,}{it:b}{cmd:)}{cmd:{c )-}}{...}
 {col 30}{cmd:{c -(}cmd:}{it:option1}{cmd::}{it:option2}{cmd:({c )-}{c -(}it:}{it:a}{cmd:{c -}{c -(}cmd:,{c )-}{c -(}it:}{it:b}{cmd:{c )-}{c -(}cmd:){c -}}
  {cmd:{c -(}opt} {it:option1}{cmd::}{it:option2}{cmd:(}{it:a}{cmd:|}{it:b}{cmd:)}{cmd:{c )-}}{col 30}{cmd:{c -(}cmd:}{it:option1}{cmd::}{it:option2}{cmd:({c )-}{c -(}it:}{it:a}{cmd:{c -}|{c -(}it:}{it:b}{cmd:{c )-}{c -(}cmd:){c -}}
  {hline 76}

{pin}{it:option1} 表示最小缩写，{it:option2} 表示其余文本。

{pin}{it:a}{cmd:,}{it:b} 和 {it:a}{cmd:|}{it:b} 可以包含任意数量的元素。以 {cmd:{c -(}cmd{c )-}} 样式显示的可用元素包括 {cmd:,}、{cmd:=}、{cmd::}、{cmd:*}、{cmd:%} 和 {cmd:()}。以普通文本样式显示的多个元素：{c |}、{c -(}{c )-} 和 []。

{pin}另外，{cmd:{c -(}opth} {it:option}{cmd:(}{it:arg}{cmd:){c )-}} 与 {cmd:{c -(}opt{c )-}} 等价，除了 {it:arg} 作为链接显示；有关更多详细信息，请参见 {it:{help smcl##link_mode:在线和段落模式下使用的链接指令}}。

    {cmd:{c -(}hilite{c )-}} 和 {cmd:{c -(}hi{c )-}} 遵循 {help smcl##syntax:语法 1 和 2}。
{pin}{cmd:{c -(}hilite{c )-}} 和 {cmd:{c -(}hi{c )-}} 是同义词。
{cmd:{c -(}hilite{c )-}} 是在帮助文件中突出显示（引起注意）某事的推荐方式。您可能会突出显示，例如，对手册、Stata 期刊或书籍的引用。

    {cmd:{c -(}ul{c )-}} 遵循 {help smcl##syntax:语法 2 和 3}。
{pin}{cmd:{c -(}ul on{c )-}} 开始下划线模式。{cmd:{c -(}ul off{c )-}} 结束下划线模式。{cmd:{c -(}ul:}{it:text}{cmd:{c )-}} 将 {it:text} 下划线。

    {cmd:{c -(}*{c )-}} 遵循 {help smcl##syntax:语法 2 和 4}。
{pin}{cmd:{c -(}*{c )-}} 指示注释。随后的内容（在大括号内）将被忽略。

    {cmd:{c -(}hline{c )-}} 遵循 {help smcl##syntax:语法 1 和 3}。
{pin}{cmd:{c -(}hline{c )-}} ({help smcl##syntax:语法 1}) 绘制横向线，跨越页面的其余部分。 {cmd:{c -(}hline} {it:#}{cmd:{c )-}} ({help smcl##syntax:语法 3}) 绘制 {it:#} 个字符的横向线。 {cmd:{c -(}hline{c )-}}（无论语法）通常在行模式中使用。

    {cmd:{c -(}.-{c )-}} 遵循 {help smcl##syntax:语法 1}。
{pin}{cmd:{c -(}.-{c )-}} 是 {cmd:{c -(}hline{c )-}} 的同义词（{help smcl##syntax:语法 1}）。

    {cmd:{c -(}dup} {it:#}{cmd::}{it:text}{cmd:{c )-}} 遵循 {help smcl##syntax:语法 4}。
{pin}{cmd:{c -(}dup{c )-}} 将 {it:text} 重复 {it:#} 次。

    {cmd:{c -(}char} {it:code}{cmd:{c )-}} 和 {cmd:{c -(}c} {it:code}{cmd:{c )-}} 是同义词，遵循 {help smcl##syntax:语法 3}。
{pin}
这些指令显示指定的字符，否则在您的键盘上可能很难输入。请参阅下面的 {it:{help smcl##ascii:使用 ASCII 和扩展 ASCII 代码显示字符}}。

    {cmd:{c -(}reset{c )-}} 遵循 {help smcl##syntax:语法 1}。
{pin}{cmd:{c -(}reset{c )-}} 等同于编码 {cmd:{c -(}txt{c )-}{c -(}sf{c )-}}。


{marker link_mode}{...}
{title:在线和段落模式下使用的链接指令}

{pstd}
所有链接命令都共享一个特性，即当允许使用 {help smcl##syntax:语法 4} 时，

{center:语法 4:  {cmd:{c -(}xyz} {it:args}{cmd::}{it:text}{cmd:{c )-}}}

{pstd}
那么 {help smcl##syntax:语法 3} 也是允许的，

{center:语法 3:  {cmd:{c -(}xyz} {it:args}{cmd:{c )-}}     }

{pstd}
如果您指定 {help smcl##syntax:语法 3}，Stata 将其视为您指定了 {help smcl##syntax:语法 4}，插入冒号并重复参数。

{pstd}
链接指令，可在行模式或段落模式下使用，具体如下：

    {cmd:{c -(}help} {it:args}[{cmd::}{it:text}]{cmd:{c )-}} 遵循 {help smcl##syntax:语法 3 和 4}。
{pin}{cmd:{c -(}help{c )-}} 将 {it:args} 显示为指向 {cmd:help} {it:args} 的链接；请参阅 {manhelp help R}。如果您还指定了可选的 {cmd::}{it:text}，则将 {it:text} 显示为文本，而不是 {it:args}，但您仍然会被引导到 {it:args} 的帮助文件。

    {cmd:{c -(}helpb} {it:args}[{cmd::}{it:text}]{cmd:{c )-}} 遵循 {help smcl##syntax:语法 3 和 4}。
{pin}{cmd:{c -(}helpb{c )-}} 相当于 {cmd:{c -(}help{c )-}}，只不过 {it:args} 或 {it:text}以粗体显示。

    {cmd:{c -(}manhelp} {it:args1 args2}[{cmd::}{it:text}]{cmd:{c )-}} 遵循 {help smcl##syntax:语法 3 和 4}。
{pin}{cmd:{c -(}manhelp{c )-}} 将 {cmd:[}{it:args2}{cmd:]} {it:args1} 显示为指向 {cmd:help} {it:args1} 的链接；因此 {cmd:{c -(}manhelp summarize R{c )-}} 将显示 {manhelp summarize R}。指定可选的 {cmd::}{it:text} 将显示 {it:text}，而不是 {it:args1}，但您仍然会被引导到 {it:args1} 的帮助文件。

    {cmd:{c -(}manhelpi} {it:args1 args2}[{cmd::}{it:text}]{cmd:{c )-}} 遵循 {help smcl##syntax:语法 3 和 4}。
{pin}{cmd:{c -(}manhelpi{c )-}} 相当于 {cmd:{c -(}manhelp{c )-}}，只不过 {it:args} 或 {it:text} 以斜体显示。

{marker markername}{...}
{pstd}{cmd:{c -(}help} {it:args}{cmd:##}{it:markername}[{cmd:|}{it:viewername}][{cmd::}{it:text}]{cmd:{c )-}} 和 {cmd:{c -(}marker} {it:markername}{cmd:{c )-}} 遵循 {help smcl##syntax:语法 3}.{p_end}
{pin}它们让用户跳转到文件中的特定位置，而不仅仅是文件的顶部。 {cmd:{c -(}help} {it:args}{cmd:##}{it:markername}{cmd:{c )-}} 将 {it:args}{cmd:##}{it:markername} 显示为链接，跳转到由 {cmd:{c -(}marker} {it:markername}{cmd:{c )-}} 标记的位置。指定可选的 {cmd:|}{it:viewername} 将在名为 {it:viewername} 的新查看器窗口中显示 {cmd:{c -(}marker} {it:markername}{cmd:{c )-}} 的结果； {cmd:_new} 是一个有效的 {it:viewername}，为新的查看器分配一个唯一名称。指定可选的 {cmd::}{it:text} 将显示 {it:text}，而不是 {it:args}{cmd:##}{it:markername}。 {it:args} 表示包含 {cmd:{c -(}marker{c )-}} 的文件名。如果 {it:args} 包含空格，请务必将其用引号括起来。

{pin}
我们将指令记录为 {cmd:{c -(}help} ...{cmd:{c )-}}；不过， {cmd:view}、{cmd:net}、{cmd:ado} 和 {cmd:update} 可以替代 {cmd:help}，尽管您可能希望仅使用 {cmd:help} 或 {cmd:view}。

    {cmd:{c -(}help_d:}{it:text}{cmd:{c )-}} 遵循 {help smcl##syntax:语法 2}。
{pin}{cmd:{c -(}help_d{c )-}} 将 {it:text} 显示为链接，显示一个帮助对话框，用户可以在其中获得任何 Stata 命令的交互式帮助。

    {cmd:{c -(}newvar}[{cmd::}{it:args}]{cmd:{c )-}} 遵循 {help smcl##syntax:语法 1 和 2}。
{pin}{cmd:{c -(}newvar{c )-}} 将 {it:newvar} 显示为指向 {cmd:help newvar} 的链接。如果您还指定了可选的 {cmd::}{it:args}，Stata 将 {it:newvar} 和 {it:args} 连接以显示 {it:newvar<args>}。

    {cmd:{c -(}var}[{cmd::}{it:args}]{cmd:{c )-}} 和 {cmd:{c -(}varname}[{cmd::}{it:args}]{cmd:{c )-}} 遵循 {help smcl##syntax:语法 1 和 2}。
{pin}{cmd:{c -(}var{c )-}} 和 {cmd:{c -(}varname{c )-}} 将 {it:varname} 显示为指向 {cmd:help varname} 的链接。如果您还指定了可选的 {cmd::}{it:args}，Stata 将 {it:args} 连接到 {it:varname} 以显示 {it:varname<args>}。

    {cmd:{c -(}vars}[{cmd::}{it:args}]{cmd:{c )-}} 和 {cmd:{c -(}varlist}[{cmd::}{it:args}]{cmd:{c )-}} 遵循 {help smcl##syntax:语法 1 和 2}。
{pin}{cmd:{c -(}vars{c )-}} 和 {cmd:{c -(}varlist{c )-}} 将 {it:varlist} 显示为指向 {cmd:help varlist} 的链接。如果您还指定了可选的 {cmd::}{it:args}，Stata 将 {it:args} 连接到 {it:varlist} 以显示 {it:varlist<args>}。

    {cmd:{c -(}depvar}[{cmd::}{it:args}]{cmd:{c )-}} 遵循 {help smcl##syntax:语法 1 和 2}。
{pin}{cmd:{c -(}depvar{c )-}} 将 {it:depvar} 显示为指向 {cmd:help depvar} 的链接。如果您还指定了可选的 {cmd::}{it:args}，Stata 将 {it:args} 连接到 {it:depvar}，以显示 {it:depvar<args>}。

    {cmd:{c -(}depvars}[{cmd::}{it:args}]{cmd:{c )-}} 和 {cmd:{c -(}depvarlist}[{cmd::}{it:args}]{cmd:{c )-}} 遵循 {help smcl##syntax:语法 1 和 2}。
{pin}{cmd:{c -(}depvars{c )-}} 和 {cmd:{c -(}depvarlist{c )-}} 将 {it:depvarlist} 显示为指向 {cmd:help depvarlist} 的链接。如果您还指定了可选的 {cmd::}{it:args}，Stata 将 {it:args} 连接到 {it:depvarlist} 以显示 {it:depvarlist<args>}。

    {cmd:{c -(}indepvars}[{cmd::}{it:args}]{cmd:{c )-}} 遵循 {help smcl##syntax:语法 1 和 2}。
{pin}{cmd:{c -(}indepvars{c )-}} 将 {it:indepvars} 显示为指向 {cmd:help varlist} 的链接。如果您还指定了可选的 {cmd::}{it:args}，Stata 将 {it:args} 连接到 {it:indepvars} 以显示 {it:indepvars<args>}。

    {cmd:{c -(}ifin{c )-}} 遵循 {help smcl##syntax:语法 1}。
{pin}{cmd:{c -(}ifin{c )-}} 显示 [{it:if}] 和 [{it:in}]，其中 {it:if} 是指向 {cmd:help} {cmd:if} 附加条件的链接，而 {it:in} 是指向 {cmd:help} {cmd:in} 附加条件的链接。

    {cmd:{c -(}weight{c )-}} 遵循 {help smcl##syntax:语法 1}。
{pin}{cmd:{c -(}weight{c )-}} 显示 [{it:weight}]，其中 {it:weight} 是指向 {cmd:help} 的链接，为 {it:weight} 规格。

    {cmd:{c -(}dtype{c )-}} 遵循 {help smcl##syntax:语法 1}。
{pin}{cmd:{c -(}dtype{c )-}} 显示 [{it:type}]，其中 {it:type} 是指向 {cmd:help data types} 的链接。

    {cmd:{c -(}search} {it:args}[{cmd::}{it:text}]{cmd:{c )-}} 遵循 {help smcl##syntax:语法 3 和 4}。
{pin}{cmd:{c -(}search{c )-}} 将 {it:text} 显示为链接，显示 {cmd:search} 在 {it:args} 上的结果；请参阅 {manhelp search R}。

    {cmd:{c -(}search_d:}{it:text}{cmd:{c )-}} 遵循 {help smcl##syntax:语法 2}。
{pin}{cmd:{c -(}search_d{c )-}} 将 {it:text} 显示为链接，将显示 {hi:关键词搜索} 对话框，用户可以在其中输入所需的关键字以获取交互式帮助。

    {cmd:{c -(}dialog} {it:args}[{cmd::}{it:text}]{cmd:{c )-}} 遵循 {help smcl##syntax:语法 3 和 4}。
{pin}{cmd:{c -(}dialog{c )-}} 将 {it:text} 显示为链接，将启动 {it:args} 的对话框。 {it:args} 必须包含对话框的名称，并且可以选择性地包含 {bind:{cmd:, message(}{it:string}{cmd:)}，其中 {it:string} 是要传递给对话框的消息。

    {cmd:{c -(}browse} {it:args}[{cmd::}{it:text}]{cmd:{c )-}} 遵循 {help smcl##syntax:语法 3 和 4}。
{pin}{cmd:{c -(}browse{c )-}} 将 {it:text} 显示为链接，将启动用户的浏览器，指向 {it:args}。因为 {it:args} 通常是包含冒号的 URL，所以 {it:args} 通常必须用引号括起来。

    {cmd:{c -(}view} {it:args}[{cmd::}{it:text}]{cmd:{c )-}} 遵循 {help smcl##syntax:语法 3 和 4}。
{pin}{cmd:{c -(}view{c )-}} 将 {it:text} 显示为链接，将在查看器中显示文件名 {it:args}。如果 {it:args} 是 URL，请确保用引号将其括起来。 {cmd:{c -(}view{c )-}} 在 SMCL 文件（如帮助文件）中的使用很少，因为您通常不会知道文件的固定位置，除非它是 URL。 {cmd:{c -(}view{c )-}} 有时会在程序中使用，因为程序知道它创建的文件的位置。

{pin}{cmd:{c -(}view{c )-}} 也可以与 {cmd:{c -(}marker{c )-}} 一起使用； 请参阅 {help smcl##markername:上述内容}。

    {cmd:{c -(}view_d:}{it:text}{cmd:{c )-}} 遵循 {help smcl##syntax:语法 2}。
{pin}{cmd:{c -(}view_d{c )-}} 将 {it:text} 显示为链接，将显示 {hi:选择要查看的文件} 对话框，用户可以在其中输入要显示的文件名称或 URL。

    {cmd:{c -(}manpage} {it:args}[{cmd::}{it:text}]{cmd:{c )-}} 遵循 {help smcl##syntax:语法 3 和 4}。
{pin}{cmd:{c -(}manpage{c )-}} 将 {it:text} 显示为链接，将启动用户的 PDF 查看器，指向 {it:args}。 {it:args} 是 Stata 手册（例如 {cmd:R} 或 {cmd:SVY}）和页码。页码是可选的。如果没有指定页码，PDF 查看器将打开文件的第一页。

    {cmd:{c -(}mansection} {it:args}[{cmd::}{it:text}]{cmd:{c )-}} 遵循 {help smcl##syntax:语法 3 和 4}。
{pin}{cmd:{c -(}mansection{c )-}} 将 {it:text} 显示为链接，将启动用户的 PDF 查看器，指向 {it:args}。 {it:args} 是 Stata 手册（例如 {cmd:R} 或 {cmd:SVY}）和手册中的命名目标（例如 {cmd:predict} 或 {cmd:regresspostestimation}）。命名目标是可选的。如果指定，则应由没有空格的字符组成。如果未指定命名目标，PDF 查看器将打开文件的第一页。

    {cmd:{c -(}manlink} {it:man} {it:entry}{cmd:{c )-}} 和 {cmd:{c -(}manlinki} {it:man} {it:entry}{cmd:{c )-}} 遵循 {help smcl##syntax:语法 3}。
{pin}{cmd:{c -(}manlink{c )-}} 和 {cmd:{c -(}manlinki{c )-}} 使用 {cmd:{c -(}mansection{c )-}} 指令显示 {it:man} 和 {it:entry} 作为链接，将启动用户的 PDF 查看器，指向该手册条目。 {it:man} 是 Stata 手册（例如 {cmd:R} 或 {cmd:SVY}），而 {it:entry} 是该手册中的条目名称（例如 {cmd:predict} 或 {cmd:regress postestimation}）。命名目标应按其在手册条目中的标题显示。

        SMCL 指令 ...{col 31}等同于键入 ...
        {hline 69}
        {cmd:{c -(}manlink} {it:man} {it:entry}{cmd:{c )-}}{col 31}{cmd:{c -(}bf:{c -(}mansection} {it:man} {it:entry_ns}{cmd::[}{it:man}{cmd:]} {it:entry}{cmd:{c )-}{c )-}}
        {cmd:{c -(}manlinki} {it:man} {it:entry}{cmd:{c )-}}{col 31}{cmd:{c -(}bf:{c -(}mansection} {it:man} {it:entry_ns}{cmd::[}{it:man}{cmd:]} {cmd:{c -(}it:}{it:entry}{cmd:{c )-}{c )-}{c )-}}
        {hline 69}

{pin}{it:entry_ns} 是 {it:entry}，其中以下字符被去除：空格、左引号和右引号（{cmd:`} 和 {cmd:'}）、{cmd:#}、{cmd:$}、{cmd:~}、{cmd:{c -(}}、{cmd:{c )-}}、{cmd:[} 和 {cmd:]}。

    {cmd:{c -(}net} {it:args}[{cmd::}{it:text}]{cmd:{c )-}} 遵循 {help smcl##syntax:语法 3 和 4}。
{pin}{cmd:{c -(}net{c )-}} 将 {it:args} 显示为链接，将在查看器中显示 {cmd:net} {it:args} 的结果；请参阅 {manhelp net R}。指定可选的 {cmd::}{it:text}，将 {it:text} 显示，而不是 {it:args}。出于安全原因， {cmd:net get} 和 {cmd:net install} 不能以这种方式执行。相反，请使用 {cmd:{c -(}net describe} {it:...}{cmd:{c )-}} 显示该页面，从那里用户可以单击适当的链接以安装所需材料。每当 {it:args} 包含冒号时（如 {it:args} 是 URL），请务必将 {it:args} 用引号括起来。

{pin}{cmd:{c -(}net cd .:}{it:text}{cmd:{c )-}} 将 {it:text} 显示为链接，显示当前 {cmd:net} 位置的内容。

{pin}{cmd:{c -(}net{c )-}} 也可以与 {cmd:{c -(}marker{c )-}} 一起使用； 请参阅 {help smcl##markername:上述内容}。

    {cmd:{c -(}net_d:}{it:text}{cmd:{c )-}} 遵循 {help smcl##syntax:语法 2}。
{pin}{cmd:{c -(}net_d{c )-}} 将 {it:text} 显示为链接，将显示 {hi:关键词搜索} 对话框，用户可以在其中搜索 Stata 的附加信息。

    {cmd:{c -(}netfrom_d:}{it:text}{cmd:{c )-}} 遵循 {help smcl##syntax:语法 2}。
{pin}{cmd:{c -(}netfrom_d{c )-}} 将 {it:text} 显示为链接，将显示 {hi:选择下载站点} 对话框，用户可以在其中输入 URL，然后查看该站点的内容。此指令很少使用。

    {cmd:{c -(}ado} {it:args}[{cmd::}{it:text}]{cmd:{c )-}} 遵循 {help smcl##syntax:语法 3 和 4}。
{pin}{cmd:{c -(}ado{c )-}} 将 {it:text} 显示为链接，将在查看器中显示 {cmd:ado} {it:args} 的结果；请参阅 {manhelp net R}。出于安全原因， {cmd:ado uninstall} 不能以这种方式执行。相反，请使用 {cmd:{c -(}ado describe} {it:...}{cmd:{c )-}} 显示该软件包，从那里用户可以单击以卸载（删除）该材料。

{pin}{cmd:{c -(}ado{c )-}} 也可以与 {cmd:{c -(}marker{c )-}} 一起使用； 请参阅 {help smcl##markername:上述内容}。

    {cmd:{c -(}ado_d:}{it:text}{cmd:{c )-}} 遵循 {help smcl##syntax:语法 2}。
{pin}{cmd:{c -(}ado_d{c )-}} 将 {it:text} 显示为链接，将显示 {hi:搜索已安装程序} 对话框，用户可以从中搜索之前安装的社区贡献例程（如有需要，还可以卸载它们）。

    {cmd:{c -(}update} {it:args}[{cmd::}{it:text}]{cmd:{c )-}} 遵循 {help smcl##syntax:语法 3 和 4}。
{pin}{cmd:{c -(}update{c )-}} 将 {it:text} 显示为链接，将在查看器中显示 {cmd:update} {it:args} 的结果；请参阅 {manhelp update R}。
如果 {it:args} 包含 URL，请注意将 {it:args} 用引号括起来。

{pin}{it:args} 可以省略，因为 {cmd:update} 命令在没有参数的情况下也是有效的。 {cmd:{c -(}update:}{it:text}{cmd:{c )-}} 实际上是使用 {cmd:{c -(}update{c )-}} 指令的最佳方法，因为它允许用户选择是否以及从何处更新他们的 Stata。

{pin}{cmd:{c -(}update{c )-}} 也可以与 {cmd:{c -(}marker{c )-}} 一起使用； 请参阅 {help smcl##markername:上述内容}。

    {cmd:{c -(}update_d:}{it:text}{cmd:{c )-}} 遵循 {help smcl##syntax:语法 2}。
{pin}{cmd:{c -(}update_d{c )-}} 将 {it:text} 显示为链接，将显示 {hi:选择官方更新站点} 对话框，用户可以在其中输入源（通常是 https://www.stata.com，但也可能是本地 CD 驱动器），从中安装官方更新。

    {cmd:{c -(}back:}{it:text}{cmd:{c )-}} 遵循 {help smcl##syntax:语法 2}。
{pin}{cmd:{c -(}back{c )-}} 将 {it:text} 显示为链接，采取等同于按下查看器的 {hi:返回} 按钮的操作。

    {cmd:{c -(}clearmore:}{it:text}{cmd:{c )-}} 遵循 {help smcl##syntax:语法 2}。
{pin}{cmd:{c -(}clearmore{c )-}} 将 {it:text} 显示为链接，采取等同于按下 Stata 的 {hi:清除 -more- 条件} 按钮的操作。
{cmd:{c -(}clearmore{c )-}} 对 Stata 的开发人员而言没有多大用处。

    {cmd:{c -(}stata} {it:args}[{cmd::}{it:text}]{cmd:{c )-}} 遵循 {help smcl##syntax:语法 3 和 4}。
{pin}{cmd:{c -(}stata{c )-}} 将 {it:text} 显示为链接，将在结果窗口中执行 Stata 命令 {it:args}。 Stata 会在执行显示在 Web 浏览器中的命令之前首先询问。

    {cmd:{c -(}matacmd} {it:args}[{cmd::}{it:text}]{cmd:{c )-}} 遵循 {help smcl##syntax:语法 3 和 4}。
{pin}{cmd:{c -(}matacmd{c )-}} 的工作方式与 {cmd:{c -(}stata{c )-}} 相同，只是它将命令提交给 Mata。如果 Mata 尚未启动，该命令将在前面加上 {cmd:mata}，以允许 Stata 执行它。

{marker line_mode}{...}
{title:在线模式下使用的格式指令}

    {cmd:{c -(}title:}{it:text}{cmd:{c )-}}（回车键）遵循 {help smcl##syntax:语法 2}。
{pin}{cmd:{c -(}title:}{it:text}{cmd:{c )-}} 将 {it:text} 作为标题显示。

    {cmd:{c -(}center:}{it:text}{cmd:{c )-}} 和 {cmd:{c -(}centre:}{it:text}{cmd:{c )-}} 遵循 {help smcl##syntax:语法 2}。
    {cmd:{c -(}center} {it:#}{cmd::}{it:text}{cmd:{c )-}} 和 {cmd:{c -(}centre} {it:#}{cmd::}{it:text}{cmd:{c )-}} 遵循 {help smcl##syntax:语法 4}。
{pin}{cmd:{c -(}center:}{it:text}{cmd:{c )-}} 和 
{cmd:{c -(}centre:}{it:text}{cmd:{c )-}} 是同义词；它们在行上居中显示文本。{cmd:{c -(}center:}{it:text}{cmd:{c )-}} 通常应后跟回车键；否则，后续任何文本将显示在同一行上。使用 {help smcl##syntax:语法 4}，它们在宽度为 {it:#} 的字段中居中显示文本。

    {cmd:{c -(}rcenter:}{it:text}{cmd:{c )-}} 和 {cmd:{c -(}rcentre:}{it:text}{cmd:{c )-}} 遵循 {help smcl##syntax:语法 2}。
    {cmd:{c -(}rcenter} {it:#}{cmd::}{it:text}{cmd:{c )-}} 和 {cmd:{c -(}rcentre} {it:#}{cmd::}{it:text}{cmd:{c )-}} 遵循 {help smcl##syntax:语法 4}。
{pin}{cmd:{c -(}rcenter:}{it:text}{cmd:{c )-}} 和 
{cmd:{c -(}rcentre:}{it:text}{cmd:{c )-}} 是同义词。 
{cmd:{c -(}rcenter{c )-}} 等同于 {cmd:{c -(}center{c )-}}，只是 {it:text} 在左右不等的空格处显示一个空格。
{cmd:{c -(}rcenter:}{it:text}{cmd:{c )-}} 应后跟回车键；否则，后续任何文本将显示在同一行上。使用 {help smcl##syntax:语法 4}，它们在宽度为 {it:#} 的字段中居中显示文本。

    {cmd:{c -(}right:}{it:text}{cmd:{c )-}} 遵循 {help smcl##syntax:语法 2}。
{pin}{cmd:{c -(}right:}{it:text}{cmd:{c )-}} 将 {it:text} 显示为右边距对齐的文本，最后一个字符与右边距对齐。
    {cmd:{c -(}right:}{it:text}{cmd:{c )-}} 应后跟回车键。

    {cmd:{c -(}lalign} {it:#}{cmd::}{it:text}{cmd:{c )-}} 和 {cmd:{c -(}ralign} {it:#}{cmd::}{it:text}{cmd:{c )-}} 遵循 {help smcl##syntax:语法 4}。
{pin}{cmd:{c -(}lalign{c )-}} 将 {it:text} 左对齐到宽 {it:#} 字符的字段中，而 {cmd:{c -(}ralign{c )-}} 右对齐 {it:text} 到宽 {it:#} 字符的字段中。

    {cmd:{c -(}dlgtab} [{it:#} [{it:#}]]{cmd::}{it:text}{cmd:{c )-}} 遵循 {help smcl##syntax:语法 2 和 4}。
{pin}{cmd:{c -(}dlgtab{c )-}} 将 {it:text} 显示为对话框标签。第一个 {it:#} 指定从左侧缩进对话框标签的字符数，而第二个 {it:#} 指定从右侧缩进的字符数。默认值为 {cmd:{c -(}dlgtab 4 2:}{it:text}{cmd:{c )-}}。

    {cmd:{c -(}...{c )-}} 遵循 {help smcl##syntax:语法 1}。
{pin}{cmd:{c -(}...{c )-}} 指定下一个回车键被视为空白。

    {cmd:{c -(}col} {it:#}{cmd:{c )-}} 遵循 {help smcl##syntax:语法 3}。
{pin}{cmd:{c -(}col} {it:#}{cmd:{c )-}} 跳转到列 {it:#}。\n如果您已经在该列的输出中，{cmd:{c -(}col} {it:#}{cmd:{c )-}} 就不会起作用。

    {cmd:{c -(}space} {it:#}{cmd:{c )-}} 遵循 {help smcl##syntax:语法 3}。
{pin}{cmd:{c -(}space} {it:#}{cmd:{c )-}} 等同于键入 {it:#} 个空白字符。

    {cmd:{c -(}tab{c )-}} 遵循 {help smcl##syntax:语法 1}。
{pin}{cmd:{c -(}tab{c )-}} 与键入制表符字符的效果相同。制表符停靠点设置在每八个空格处。

{pin}注意：SMCL 还理解制表符字符，并将其视为与 {cmd:{c -(}tab{c )-}} 命令相同，因此您可以在文件中包含制表符。


{marker paragraph_mode}{...}
{title:段落模式下使用的格式指令}

    {cmd:{c -(}p{c )-}} 遵循 {help smcl##syntax:语法 3}。完整语法为 {cmd:{c -(}p} {it:# # # #}{cmd:{c )-}}。
{pin}{cmd:{c -(}p} {it:# # # #}{cmd:{c )-}} 进入段落模式。第一个 {it:#} 指定首行缩进的字符数；第二个 {it:#} 指定第二行及后续行的缩进量；第三个 {it:#} 指定所有行右边距的缩进量；第四个 {it:#} 为段落的总宽度。如果未指定数字，则默认值为零，因此输入 {cmd:{c -(}p{c )-}} 没有数字的效果与输入 {cmd:{c -(}p 0 0 0 0{c )-}} 等同； {cmd:{c -(}p} {it:#}{cmd:{c )-}} 等同于 {cmd:{c -(}p} {it:#} {cmd:0 0 0{c )-}}，依此类推。第四个 {it:#} 的零意味着使用默认的段落宽度；请参阅 {help linesize}。
{cmd:{c -(}p{c )-}}（带数字或不带数字）可以后跟回车键；这没有区别。

{pin}当遇到空白行、遇到 {cmd:{c -(}p_end{c )-}} 指令或遇到 {cmd:{c -(}smcl{c )-}}（回车键）时，段落模式结束。

{pin}还添加了几个快捷指令，用于常用的段落模式设置：

{p2colset 15 36 38 16}{...}
{p2col :SMCL 指令 ...}等同于键入 ...{p_end}
{p2line}
{p2col :{cmd:{c -(}pstd{c )-}}}{cmd:{c -(}p 4 4 2{c )-}}{p_end}
{p2col :{cmd:{c -(}psee{c )-}}}{cmd:{c -(}p 4 13 2{c )-}}{p_end}
{p2col :{cmd:{c -(}phang{c )-}}}{cmd:{c -(}p 4 8 2{c )-}}{p_end}
{p2col :{cmd:{c -(}pmore{c )-}}}{cmd:{c -(}p 8 8 2{c )-}}{p_end}
{p2col :{cmd:{c -(}pin{c )-}}}{cmd:{c -(}p 8 8 2{c )-}}{p_end}
{p2col :{cmd:{c -(}phang2{c )-}}}{cmd:{c -(}p 8 12 2{c )-}}{p_end}
{p2col :{cmd:{c -(}pmore2{c )-}}}{cmd:{c -(}p 12 12 2{c )-}}{p_end}
{p2col :{cmd:{c -(}pin2{c )-}}}{cmd:{c -(}p 12 12 2{c )-}}{p_end}
{p2col :{cmd:{c -(}phang3{c )-}}}{cmd:{c -(}p 12 16 2{c )-}}{p_end}
{p2col :{cmd:{c -(}pmore3{c )-}}}{cmd:{c -(}p 16 16 2{c )-}}{p_end}
{p2col :{cmd:{c -(}pin3{c )-}}}{cmd:{c -(}p 16 16 2{c )-}}{p_end}
{p2colreset}{...}

    {cmd:{c -(}p_end{c )-}} 遵循 {help smcl##syntax:语法 1}。
{pin}{cmd:{c -(}p_end{c )-}} 是在段落之间结束段落的一种方法，无需在段落之间留下空白行。 {cmd:{c -(}p_end{c )-}} 可以后跟回车键，也可以不后跟；这不会影响输出。

    {cmd:{c -(}p2colset} {it:# # # #}{cmd:{c )-}} 遵循 {help smcl##syntax:语法 3}。
{pin}{cmd:{c -(}p2colset{c )-}} 设置双列表格的列间距。第一个 {it:#} 指定第一列的起始位置，第二个 {it:#} 指定第二列的位置，第三个 {it:#} 指定第二列后续行的位置，最后一个 {it:#} 指定从右侧缩进的字符数。

{pstd}{cmd:{c -(}p2col} [{it:# # # #}]{cmd::}[{it:first_column_text}]{cmd:{c )-}} [{it:second_column_text}] 遵循 {help smcl##syntax:语法 2 和 4}.{p_end}
{pin}{cmd:{c -(}p2col{c )-}} 指定由两个列组成的表格的行。可选的数字重新定义此行仅适用的 {cmd:{c -(}p2colset{c )-}} 中指定的数字。如果未指定 {it:first_column_text} 或 {it:second_column_text}，则相应的列将留空。

    {cmd:{c -(}p2line} [{it:# #}]{cmd:{c )-}} 遵循 {help smcl##syntax:语法 1 和 3}。
{pin}{cmd:{c -(}p2line{c )-}} 为双列表格绘制虚线。第一个 {it:#} 指定左侧缩进，第二个 {it:#} 指定右侧缩进。如果不指定数字，则默认值基于在 {cmd:{c -(}p2colset{c )-}} 中提供的数字。

    {cmd:{c -(}p2colreset{c )-}} 遵循 {help smcl##syntax:语法 1}。
{pin}{cmd:{c -(}p2colreset{c )-}} 恢复 {cmd:{c -(}p2col{c )-}} 默认值。

    {cmd:{c -(}synoptset} [{it:#}] [{cmd:tabbed}|{cmd:notes}]{cmd:{c )-}} 遵循 {help smcl##syntax:语法 1 和 3}。
{pin}{cmd:{c -(}synoptset{c )-}} 设置标准列间距，以便在语法图表中用于记录选项。 {it:#} 指定第一列的宽度；如果未指定，宽度默认值为 20。可选参数 {cmd:tabbed} 指定表将包含标题或“选项”组的“标签”。可选参数 {cmd:notes} 指定某些表条目将带有脚注，从而导致第一列的缩进大于 {cmd:tabbed} 参数所暗示的。

    {cmd:{c -(}synopthdr}[{cmd::}{it:first_column_header}]{cmd:{c )-}} 遵循 {help smcl##syntax:语法 1 和 2}。
{pin}{cmd:{c -(}synopthdr}{it:...}{cmd:{c )-}} 输出语法图表选项表的标准标题。 {it:first_column_header} 用于标题第一列的标题；如果未指定 {it:first_column_header}，则第一列的标题为“{it:options}”。第二列的标题始终为“描述”。

    {cmd:{c -(}syntab}{cmd::}{it:text}{cmd:{c )-}} 遵循 {help smcl##syntax:语法 2}。
{pin}{cmd:{c -(}syntab}{cmd::}{it:text}{cmd:{c )-}} 输出 {it:text}，作为语法图表选项表中的子标题或“标签”。

    {cmd:{c -(}synopt}{cmd::}[{it:first_column_text}]{cmd:{c )-}}[{it:second_column_text}] 遵循 {help smcl##syntax:语法 2}。
{pin}{cmd:{c -(}synopt{c )-}} 指定由两个列组成的表格的行；其效果等同于 {cmd:{c -(}p2col{c )-}}（见上文）。

    {cmd:{c -(}p2coldent}{cmd::}[{it:first_column_text}]{cmd:{c )-}}[{it:second_column_text}] 遵循 {help smcl##syntax:语法 2}。
{pin}{cmd:{c -(}p2coldent}{it:...}{cmd:{c )-}}与 {cmd:{c -(}synopt{c )-}} 相同，只是 {it:first_column_text} 以标准缩进（可以是负的）显示。 {it:second_column_text} 在段落模式中显示，直到遇到空行、 {cmd:{c -(}p_end{c )-}} 或回车键为止。列的位置由之前的 {cmd:{c -(}synoptset{c )-}} 或 {cmd:{c -(}p2colset{c )-}} 指令确定。

    {cmd:{c -(}synoptline{c )-}} 遵循 {help smcl##syntax:语法 1}。
{pin}{cmd:{c -(}synoptline{c )-}} 绘制延伸到先前的 {cmd:{c -(}synoptset{c )-}} 或较少的 {cmd:{c -(}p2colset{c )-}} 指令边界的横线。

    {cmd:{c -(}bind:}{it:text}{cmd:{c )-}} 遵循 {help smcl##syntax:语法 2}。
{pin}{cmd:{c -(}bind:}{it:text}{cmd:{c )-}} 将 {it:text} 始终保持在同一行中，即使这样会使段落的一行变短。 {cmd:{c -(}bind:}{it:text}{cmd:{c )-}} 还可以用于在段落中插入一个或多个真实空格，如果您指定 {it:text} 为一个或多个空格。

    {cmd:{c -(}break{c )-}} 遵循 {help smcl##syntax:语法 1}。
{pin}{cmd:{c -(}break{c )-}} 强制换行，而不结束段落。

{marker class}{...}
{title:从常量和当前值类中插入值}

{pstd}
指令 {cmd:{c -(}ccl{c )-}} 输出常量和当前值类（{cmd:c()}）对象中包含的值。例如，{cmd:{c -(}ccl pi{c )-}} 提供常量 pi (3.14159...) 中含有的值，存储于 {cmd:c(pi)} 中。有关所有可用 {cmd:c()} 对象的列表，请参见 {manhelp creturn P}。


{marker ascii}{...}
{title:使用 ASCII 和扩展 ASCII 代码显示字符}

{pstd}
指令 {cmd:{c -(}char{c )-}} —— 同义词为 {cmd:{c -(}c{c )-}} —— 允许您以 Latin1 编码输出任何 ASCII 或扩展 ASCII 字符。以 Latin1 编码的扩展 ASCII 字符转换为 UTF-8 编码的等效 Unicode 字符。例如，{cmd:{c -(}c 232{c )-}} 相当于键入字母 {hi:è}，因为在 Latin1 中，扩展 ASCII 码 232 定义为带重音的字母“e”。您还可以直接键入 Unicode 字符 {hi:è}（码点 {bf:\u00e8}）。

{pstd}
您可以通过键入 {cmd:{c -(}c} {it:#}{cmd:{c )-}} 来访问所有以 Latin1 编码的 ASCII 和扩展 ASCII 字符，其中 {it:#} 的范围在 1 到 255 之间。或者，如果您愿意，您可以键入 {cmd:{c -(}c 0x}{it:#}{cmd:{c )-}}，其中 {it:#} 是 1 到 ff 之间的十六进制数字。因此 {cmd:{c -(}c 0x6a{c )-}} 也是 {hi:j}，因为十六进制数字 6a 等于十进制数字 106。

{pstd}
此外，为了让您无需记住数字，{cmd:{c -(}c{c )-}} 为某些因某种原因而难以输入的字符提供特殊代码。这些包括

{center:{cmd:{c -(}c S|{c )-}}    $ (美元符号)      }
{center:{cmd:{c -(}c 'g{c )-}}    ` (开单引号)}
{center:{cmd:{c -(}c -({c )-}}    {c -(} (左大括号) }
{center:{cmd:{c -(}c )-{c )-}}    {c )-} (右大括号)}

{pstd}
{cmd:{c -(}c S|{c )-}} 和 {cmd:{c -(}c 'g{c )-}} 被包含不是因为它们难以输入或导致 SMCL 出现任何问题，而是因为在 Stata {cmd:display} 语句中，它们可能很难显示，因为它们是 Stata 的宏替换字符，并且往往会被 Stata 解读。

{pstd}
{cmd:{c -(}c -({c )-}} 和 {cmd:{c -(}c )-{c )-}} 被包含是因为 {cmd:{c -(}} 和 {cmd:{c )-}} 用于将 SMCL 指令括起来。尽管 {cmd:{c -(}} 和 {cmd:{c )-}} 对于 SMCL 有特殊含义，但 SMCL 通常会正确显示这两个字符，只要它们没有特殊含义时。SMCL 遵循一个规则，即当它不理解它认为应该是指令的内容时，它会以未修改的形式显示出它未理解的内容。

{pstd}
SMCL 还提供以下线条绘制字符：

{center:{cmd:{c -(}c -{c )-}}      {c -}, 一个宽破折号字符         }

{center:{cmd:{c -(}c |{c )-}}      {c |}, 一个高 {|}                      }

{center:{cmd:{c -(}c +{c )-}}      {c +}, 一个宽的破折号在高 {|} 的上方}

{center:{cmd:{c -(}c TT{c )-}}     {c TT}, 一个顶部的 T                       }

{center:{cmd:{c -(}c BT{c )-}}     {c BT}, 一个底部的 T                    }

{center:{cmd:{c -(}c LT{c )-}}     {c LT}, 一个左侧的 T                      }

{center:{cmd:{c -(}c RT{c )-}}     {c RT}, 一个右侧的 T                     }

{center:{cmd:{c -(}c TLC{c )-}}    {c TLC}, 一个左上角             }

{center:{cmd:{c -(}c TRC{c )-}}    {c TRC}, 一个右上角            }

{center:{cmd:{c -(}c BRC{c )-}}    {c BRC}, 一个右下角         }

{center:{cmd:{c -(}c BLC{c )-}}    {c BLC}, 一个左下角          }

{pstd}
上述字符并不是真正的 ASCII；它们是给 SMCL 绘制线的指令。然而，这些“字符”实际上都是一字符宽、一字符高，因此您可以将它们作为字符在输出中使用。

{pstd}
最后，SMCL 提供以下西欧字符：

{center:{cmd:{c -(}c a'{c )-}}   {c a'}      {cmd:{c -(}c A'{c )-}}   {c A'}}
{center:{cmd:{c -(}c e'{c )-}}   {c e'}      {cmd:{c -(}c E'{c )-}}   {c E'}}
{center:{cmd:{c -(}c i'{c )-}}   {c i'}      {cmd:{c -(}c I'{c )-}}   {c I'}}
{center:{cmd:{c -(}c o'{c )-}}   {c o'}      {cmd:{c -(}c O'{c )-}}   {c O'}}
{center:{cmd:{c -(}c u'{c )-}}   {c u'}      {cmd:{c -(}c U'{c )-}}   {c U'}}

{center:{cmd:{c -(}c a'g{c )-}}  {c a'g}      {cmd:{c -(}c A'g{c )-}}  {c A'g}}
{center:{cmd:{c -(}c e'g{c )-}}  {c e'g}      {cmd:{c -(}c E'g{c )-}}  {c E'g}}
{center:{cmd:{c -(}c i'g{c )-}}  {c i'g}      {cmd:{c -(}c I'g{c )-}}  {c I'g}}
{center:{cmd:{c -(}c o'g{c )-}}  {c o'g}      {cmd:{c -(}c O'g{c )-}}  {c O'g}}
{center:{cmd:{c -(}c u'g{c )-}}  {c u'g}      {cmd:{c -(}c U'g{c )-}}  {c U'g}}

{center:{cmd:{c -(}c a^{c )-}}   {c a^}      {cmd:{c -(}c A^{c )-}}   {c A^}}
{center:{cmd:{c -(}c e^{c )-}}   {c e^}      {cmd:{c -(}c E^{c )-}}   {c E^}}
{center:{cmd:{c -(}c i^{c )-}}   {c i^}      {cmd:{c -(}c I^{c )-}}   {c I^}}
{center:{cmd:{c -(}c o^{c )-}}   {c o^}      {cmd:{c -(}c O^{c )-}}   {c O^}}
{center:{cmd:{c -(}c u^{c )-}}   {c u^}      {cmd:{c -(}c U^{c )-}}   {c U^}}

{center:{cmd:{c -(}c a~{c )-}}   {c a~}      {cmd:{c -(}c A~{c )-}}   {c A~}}
{center:{cmd:{c -(}c o~{c )-}}   {c o~}      {cmd:{c -(}c O~{c )-}}   {c O~}}

{center:{cmd:{c -(}c a:{c )-}}   {c a:}      {cmd:{c -(}c A:{c )-}}   {c A:}}
{center:{cmd:{c -(}c e:{c )-}}   {c e:}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <smcl.sthlp>}