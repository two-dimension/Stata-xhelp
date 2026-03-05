{smcl}
{* *! version 1.2.3  19oct2017}{...}
{viewerdialog help "help_d"}{...}
{vieweralsosee "[R] help" "mansection R help"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "help advice" "help help_advice_zh"}{...}
{vieweralsosee "[R] net search" "help net_search_zh"}{...}
{vieweralsosee "[R] search" "help search_zh"}{...}
{viewerjumpto "Syntax" "help_zh##syntax"}{...}
{viewerjumpto "Menu" "help_zh##menu"}{...}
{viewerjumpto "Description" "help_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "help_zh##linkspdf"}{...}
{viewerjumpto "Options" "help_zh##options"}{...}
{viewerjumpto "Remarks" "help_zh##remarks"}{...}
{viewerjumpto "Video example" "help_zh##video"}
{help help:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[R] help} {hline 2}}在 Stata 中显示帮助{p_end}
{p2col:}({mansection R help:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{hline}

{title:Stata 的帮助系统}

{pstd}
Stata 用户可以获得几种类型的帮助。有关更多信息，请参见 {help help_advice_zh:获取帮助的建议}。
以下信息是关于 Stata 的 {cmd:help} 命令的技术细节。

{hline}

{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmdab:h:elp} [{it:command_or_topic_name}] [{cmd:,}
{opt non:ew}
{opt name(viewername)}
{opt mark:er(markername)}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:帮助 > Stata 命令...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:help} 命令显示关于指定命令或主题的帮助信息。 {cmd:help} 启动一个新的查看器以显示指定命令或主题的帮助，或者在 Stata 的 Unix 控制台中显示帮助。
如果 {cmd:help} 后面没有跟命令或主题名称，Stata 将显示关于使用帮助系统和文档的建议。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection R helpRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt nonew} 指定如果查看器窗口已经打开，则不为帮助主题打开新的查看器窗口。默认情况下，每次输入 {cmd:help} 时都会打开一个新的查看器窗口，以便同时查看多个帮助文件。 {cmd:nonew} 会导致帮助文件在最上面的打开的查看器中显示。

{phang}
{opt name(viewername)} 指定在名为 {it:viewername} 的查看器窗口中显示帮助。如果命名窗口已存在，其内容将被替换。如果命名窗口不存在，则会创建该窗口。

{phang}
{opt marker(markername)} 指定帮助文件打开到帮助文件中 {it:markername} 的位置。


{marker remarks}{...}
{title:备注}

{pstd}
要获取任何 Stata 命令的帮助，请输入 {cmd:help} {it:command} 或选择 {bf:帮助 > Stata 命令...} 并填写 {it:command}。

{pstd}
{cmd:help} 最好通过示例来解释。

{p2colset 11 47 49 2}{...}
{p2col 9 45 49 2: 要获取 ... 的帮助}type{p_end}
{p2col: {cmd:regress}}{cmd:help regress}{p_end}
{p2col: {cmd:regress} 的后验估计工具}{cmd:help regress postestimation}{p_end}
{p2col:}或{space 2} {cmd:help regress post}{p_end}
{p2col: 图形选项 {cmd:xlabel()}}{cmd:help graph xlabel()}{p_end}
{p2col: Stata 函数 {cmd:strpos()}}{cmd:help strpos()}{p_end}
{p2col: Mata 函数 {cmd:optimize()}}{cmd:help mata optimize()}{p_end}
{p2colreset}{...}

{pstd}
提示：

{phang2}
o {cmd:help} 显示有关使用帮助系统和文档的建议。

{phang2}
o {cmd:help guide} 显示基本 Stata 概念的目录。

{phang2}
o {cmd:help estimation commands} 显示所有 Stata 估计命令的字母顺序列表。

{phang2}
o {cmd:help functions} 按类别显示 Stata 函数的帮助。

{phang2}
o {cmd:help mata functions} 显示 Mata 函数的主题目录。

{phang2}
o {cmd:help ts glossary} 显示时间序列手册的词汇表，对其他 Stata 专业手册同样适用。

{pstd}
如果您输入 {cmd:help} {it:topic} 且未找到 {it:topic} 的帮助，Stata 将自动搜索 {it:topic}。

{pstd}
例如，尝试输入 {cmd:help forecasting}。未找到预测的帮助文件，因此 Stata 执行 {cmd:search forecasting} 并在查看器中显示结果。

{pstd}
有关如何使用 {cmd:help} 的完整说明，请参见 {findalias frhelp}。
{p_end}


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=UpXNMeTzmuI":Stata 中的快速帮助}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <help.sthlp>}