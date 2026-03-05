{smcl}
{* *! version 1.1.5  19oct2017}{...}
{vieweralsosee "[GSU] conren" "mansection GSU conren"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[GSU] B.1 每次启动 Stata 时执行命令" "help profile_zh"}{...}
{vieweralsosee "[P] smcl" "help smcl_zh"}{...}
{viewerjumpto "语法" "conren_zh##syntax"}{...}
{viewerjumpto "描述" "conren_zh##description"}{...}
{viewerjumpto "查找颜色方案" "conren_zh##color_scheme"}{...}
{viewerjumpto "您的终端是否可以下划线" "conren_zh##underline"}{...}
{viewerjumpto "如果您成功了..." "conren_zh##success"}{...}
{viewerjumpto "如果您没有成功..." "conren_zh##nosuccess"}
{help conren:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[GSU] conren} {hline 2}}设置 Stata for Unix(console) 的控制台呈现属性{p_end}
{p2col:}({mansection GSU conren:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    高级命令：

	{cmd:conren}

{p 8 15 2}{cmd:conren} {cmdab:s:tyle} {it:#}

{p 8 15 2}{cmd:conren} {cmd:ul} {it:#}

{p 8 15 2}{cmd:conren} {cmdab:t:est}

{p 8 15 2}{cmd:conren} {cmd:clear}


    低级命令：

{p 8 19 2}{cmd:set} {cmd:conren}

{p 8 19 2}{cmd:set} {cmd:conren} {cmd:clear}

{p 8 19 2}{cmd:set} {cmd:conren} [ {cmd:sf} | {cmd:bf} | {cmd:it} ]
	{c -(} {cmdab:res:ult} | [{cmd:txt}|{cmd:text}] |
	{cmdab:inp:ut} | {cmdab:err:or} | {cmdab:li:nk} |
	{cmdab:hi:lite} {c )-} [ {it:char} [ {it:char ...} ] ]

{p 8 19 2}{cmd:set} {cmd:conren} {char -(} {cmd:ulon} | {cmdab:ulof:f} {char )-}
	[ {it:char} [ {it:char ...} ] ]

{p 8 19 2}{cmd:set} {cmd:conren} {cmd:reset} [ {it:char} [ {it:char ...} ] ]


{pstd}其中 {it:char} 是

{p 8 10 2}{char -(} {it:任何字符} | {cmd:<}{it:#}{cmd:>} {char )-}

{p 4 11 2}
注意：此命令是为 Stata for Unix 设计的，特别是您通过键入 {cmd:stata} 启动的 Stata，而不是 {cmd:xstata}；也称为 Stata(console) 或 Stata 的非 GUI 版。不过，在窗口版本的 Stata 中，{cmd:conren} 会在结果窗口中输出当前呈现表（即 {cmd:conren test} 的输出）。


{marker description}{...}
{title:描述}

{pstd}
{cmd:conren} 和 {cmd:set} {cmd:conren} 可以改善您的屏幕输出显示。一些显示器，例如，{hi:可以} {err:显示} {res:颜色}，但 Stata 可能不知道您的显示器具备此功能。一些显示器具有 {bf:多种} 强度或 {bf:粗体}。一些显示器可以 {ul:下划线}。

{pstd}
高级 {cmd:conren} 命令允许您从多个预定义设置中设置显示样式和/或下划线方案。

{p 8 8 6}{cmd:conren} {cmd:style} 后接方案编号设置基于底层方案的颜色和字体代码。

{p 8 8 6}{cmd:conren} {cmd:ul} 后接下划线方案编号设置允许下划线的代码。

{p 8 8 6}{cmd:conren} 不带参数时显示一条消息，解释该命令并说明可用的样式和下划线方案编号范围。

{p 8 8 6}{cmd:conren} {cmd:test} 以 sf（标准字体）字体、{bf:bf（粗体）字体} 和 {it:it（斜体）字体} 显示三列输出，展示颜色的设置情况，包括下划线和不下划线。

{p 8 8 6}{cmd:conren} {cmd:clear} 清除所有当前定义的显示样式和下划线定义。

{pstd}
低级 {cmd:set} {cmd:conren} 命令让您查看和设置特定的显示和下划线编码。

{p 8 8 6}{cmd:set} {cmd:conren} 显示当前定义的显示代码列表。

{p 8 8 6}{cmd:set} {cmd:conren} {cmd:clear} 清除所有代码。

{p 8 8 6}{cmd:set} {cmd:conren} 后面接字体类型（{cmd:bf}、{cmd:sf} 或 {cmd:it}）和显示上下文（{cmd:result}、{cmd:text}、{cmd:input}、{cmd:error}、{cmd:link} 或 {cmd:hilite）后，紧接着一系列以空格分隔的字符，设置指定字体类型和显示上下文的编码。如果省略字体类型，编码将设为三个字体类型的相同指定编码。

{p 8 8 6}{cmd:set} {cmd:conren} {cmd:ulon} 及 {cmd:set} {cmd:conren} {cmd:uloff} 设置开启和关闭下划线的代码。

{p 8 8 6}{cmd:set} {cmd:conren} {cmd:reset} 设置关闭所有显示和下划线编码的代码。

{pstd}当 Stata 启动时，就像您键入了

{p 8 12 2}{cmd:. conren clear}

{pstd}这相当于低级命令

{p 8 12 2}{cmd:. set conren clear}

{pstd}
意思是 Stata 假定您的显示器无法显示不同的颜色、强度或下划线。Stata 之所以这样假定，是因为如果 Stata 假定相反，但您的终端无法提供该功能，结果可能会很糟糕。因此，花几分钟时间进行调整是非常值得的，您不需要成为计算机专家就可以做到这一点。键入错误命令不会导致永久性损坏。

{pstd}
接下来最糟糕的情况是 Stata 的输出看起来很糟，以至于您无法阅读；在这种情况下，只需 {help exit_zh} Stata。下次 Stata 会正常。

{pstd}
最糟糕的情况是您的窗口/屏幕/终端显示得如此混乱，以至于您必须关闭它并打开一个新的（或者，如果它确实是一个单独的终端，则关掉再重新开启）。


{marker color_scheme}{...}
{title:查找颜色方案}

{pstd}
首先让我们尝试各种颜色方案。什么有效且看起来不错取决于您的终端/显示器以及您使用的是白色还是黑色背景。（那你可以尝试改变一下，反正环境也不会太糟，我们喜欢用黑色背景，因为默认情况下，大部分输出使用绿色和黄色，而这些颜色在浅色背景上不太显眼。切换背景颜色的事情，会与 Unix 进行沟通，而不是与 Stata。）

{pstd}
首先，键入以下内容：

	{cmd:. conren}

{pstd}
这首先告诉您可用的显示方案和下划线方案的数量。有一些下划线方案和更多的显示方案。其中一些方案是为黑色背景设计的，而另一些则是为白色背景设计的。我们建议您首先选择一个显示样式方案，然后再探索可能的下划线方案。

{pstd}
您应键入

{p 8 12 2}{cmd:. conren style 1}

{pstd}
以试用显示样式方案 1。{cmd:conren} {cmd:style} 和 {cmd:conren} {cmd:ul} 会自动运行 {cmd:conren} {cmd:test} 以便您能在屏幕上查看结果。如果结果显然不好，请尝试另一种方案。如果结果色彩方案可能合理，请试试 Stata 并看看您的想法。尝试几个命令并查看一些帮助文件，以了解所选的显示样式方案是否合适。您总是可以用

	{cmd:. conren clear}

{pstd}
回到默认设置。

{pstd}
如果您无法看到正在键入的内容，那可能有点难。但请记住，如果情况糟糕，只需键入 {cmd:exit} 然后重新启动 Stata。


{marker underline}{...}
{title:您的终端是否可以下划线？}

{pstd}
请看上面的标题。它是否有下划线——下划线与字符在同一行并且实际上接触——或者它是否更粗糙地呈现，在第二行下面有一串破折号？

{pstd}
如果标题有下划线，请跳过此部分；显然 Stata 已经确定您的终端可以下划线并且正在这样做。

{pstd}
有时 Stata 不能自己弄清楚。让我们看看您是否可以下划线。键入

{p 8 12 2}{cmd:. conren ul 1}

{pstd}
输出是否有下划线，还是杂乱无章？如果是杂乱无章，您可以通过键入

{p 8 12 2}{cmd:. conren ul 0}

{pstd}
去除下划线代码（同时保留显示样式代码）。

{pstd}
您可以尝试其他可用的下划线方案，看看效果是否更好。


{marker success}{...}
{title:如果您成功了...}

{pstd}
假设您发现最适合您的设置是

{p 8 12 2}{cmd:. conren style 4}{p_end}
{p 8 12 2}{cmd:. conren ul 1}

{pstd}
下次您进入 Stata 时，如果您想要更漂亮的外观，您将需要输入这两个命令。为了避免这样，请创建一个文件 {hi:profile.do}，并将这两行放入该文件；请参见 {help profile_zh}。实际上，我们建议您将文件中的行写成

{p 8 12 2}{cmd:quietly conren style 4}{p_end}
{p 8 12 2}{cmd:quietly conren ul 1}

{pstd}
因为这样可以防止输出测试出现。


{marker nosuccess}{...}
{title:如果您没有成功...}

{pstd}
现在您真的需要具备一些技术知识。即使您知道通过“转义序列”导致终端上的特殊效果，Stata 的输出仍然可以变得更美观。

{pstd}
例如，假设您终端用于开启和关闭下划线的代码是 Esc-[4m 和 Esc-[24m。您可以通过键入

{p 8 12 2}{cmd:. set conren ulon  <27> [ 4 m}{p_end}
{p 8 12 2}{cmd:. set conren uloff <27> [ 2 4 m}

{pstd}
27 是转义的十进制代码，您可以通过将其用小于号和大于号包裹起来输入十进制代码。常规字符，您可以直接输入。但是，请记住，您必须在每个字符之间至少键入一个空格。

{pstd}
所有功能都可以通过这种方式进行设置。如果键入

	{cmd:. set conren}

{pstd}
Stata 将报告当前设置的内容。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <conren.sthlp>}