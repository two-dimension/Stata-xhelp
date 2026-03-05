{smcl}
{* *! version 1.1.5  19oct2017}{...}
{vieweralsosee "[R] translate" "mansection R translate"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] log" "help log_zh"}{...}
{vieweralsosee "[P] smcl" "help smcl_zh"}{...}
{vieweralsosee "viewer" "help viewer"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph print" "help graph_print_zh"}{...}
{viewerjumpto "Syntax" "print_zh##syntax"}{...}
{viewerjumpto "Description" "print_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "print_zh##linkspdf"}{...}
{viewerjumpto "Options" "print_zh##options"}{...}
{viewerjumpto "Examples" "print_zh##examples"}{...}
{viewerjumpto "Technical note for Unix users" "print_zh##technote"}{...}
{viewerjumpto "Technical note for Unix(GUI) users" "print_zh##GUI"}
{help print:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[R] translate} {hline 2}}打印文件
{p_end}
{p2col:}({mansection R translate:查看完整PDF手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{p 8 14 2}{cmd:print} {it:filename} [{cmd:,} {cmd:like(}{it:ext}{cmd:)} {cmd:name(}{it:windowname}{cmd:)} {it:override_options} ]

{pstd}
{it:filename} 除了作为要打印的文件名外，还可以指定为 {cmd:@Result} 表示打印结果窗口， {cmd:@Viewer} 表示打印最上面的查看窗口，以及 {cmd:@Graph} 表示打印最上面的图形窗口。Unix(GUI) 用户在指定 {cmd:@Viewer} 或 {cmd:@Graph} 时，应使用 {cmd:name} 选项，以确保在打开多个查看器或图形时打印正确的窗口（请参考 {help print##GUI:Unix(GUI)用户的技术说明}）。

{marker description}{...}
{title:描述}

{pstd}
{cmd:print} 打印日志和 SMCL 文件。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R translateQuickstart:快速入门}

        {mansection R translateRemarksandexamples:备注和示例}

{pstd}
上面的部分不包括在此帮助文件中。

{marker options}{...}
{title:选项}

{phang}
{cmd:like(}{it:ext}{cmd:)} 指定文件应如何转换为适合打印的形式。默认情况下，根据 {it:filename} 的扩展名确定转换方法。因此， {hi:mylog.smcl} 根据转换 {hi:smcl} 文件的规则进行转换。（在这种情况下，规则是 {help translate_zh} 的 {cmd:smcl2prn} 转换器。）

{pmore}
以下扩展名的规则是预定义的：

{p 12 22 2}{hi:.txt} {space 2} 假设输入文件包含纯文本{p_end}
{p 12 22 2}{hi:.log} {space 2} 假设输入文件包含 Stata 日志文本

{p 12 22 2}{hi:.smcl} {space 1} 假设输入文件包含 {help smcl_zh:SMCL}

{pmore}
如果您希望打印扩展名不同于上述列出的文件，可以定义新扩展名，但这不是必须的。如果文件 {hi:read.me} 包含文本，您可以输入 {cmd:print read.me, like(txt)}。另一方面，您可以输入

{p 12 16 2}{cmd:. transmap define .me .txt}

{pmore}
来告诉 Stata 将 {hi:.me} 文件始终视为 {hi:.txt} 文件。

{pmore}
选项 {cmd:like()} 会覆盖记录的规则。

{phang}
{cmd:name(}{it:windowname}{cmd:)} 指定打印查看器或图形时要打印哪个窗口。省略 {cmd:name()} 选项将打印最上面的查看器或图形（Unix(GUI) 用户：请参见 {help print##GUI:Unix(GUI)用户的技术说明}）。在打印结果窗口时，{cmd:name()} 选项被忽略。

{pmore}
窗口名称在窗口标题的括号内。例如，如果查看器窗口的标题是 {hi:Viewer (}{hi:#1}{hi:)}{hi: [help print]}，则窗口的名称是 {hi:#1}。如果图形窗口的标题是 {hi:Graph (MyGraph)}，则窗口的名称是 {hi:MyGraph}。如果图形是 {cmd:asis} 或 {cmd:graph7} 图形，窗口标题中没有名称，则为 {it:windowname} 指定 {hi:""}。

{phang}
{it:override_options} 指的是 {help translate_zh} 的覆盖选项。{cmd:print} 使用 {cmd:translate} 将文件转换为适合发送到打印机的格式。要查看 {it:X} 文件的可覆盖内容，请输入 "{cmd:translator query} {it:X}{cmd:2prn}"。例如，要查看打印 {cmd:smcl} 文件的可覆盖内容，请输入 "{cmd:translator query smcl2prn}"。请参阅 {help translate_zh}。

{marker examples}{...}
{title:示例}

{phang}{cmd:. print mylog.smcl}

{phang}{cmd:. print mylog.log}

{phang}{cmd:. print @Results}

{phang}{cmd:. print @Viewer}

{phang}{cmd:. print @Graph, name(MyGraph)}

{marker technote}{...}
{title:Unix 用户的技术说明}

{pstd}
按出厂设置，Stata 假设您的 Unix 计算机上连接有 PostScript 打印机，且可以使用 Unix 命令 lpr(1) 将 PostScript 文件发送到打印机。如果您需要更改该设置，请参阅 {help printer_zh}。对于那些已经阅读过的人，您会记得其中一个例子是

{phang2}{cmd:. printer define prn ps "lpr -Plexmark @"}

{pstd}
您还可以定义多个打印机。在这种情况下， {cmd:print} 的语法为

{p 8 14 2}{cmd:print} {it:filename} [{cmd:,} {cmd:like(}{it:ext}{cmd:)} {cmdab:pr:inter:(}{it:printername}{cmd:)} {it:override_options} ]

{marker GUI}{...}
{title:Unix(GUI) 用户的技术说明}

{pstd}
X-Windows 没有窗口 z-order 的概念，这阻碍了 Stata 确定哪个窗口是最上面的窗口。相反，Stata 根据收集焦点的窗口确定哪个窗口是最上面的。然而，一些窗口管理器会将焦点设置到某个窗口，而不将该窗口移到最上面。对于 Stata 来说，最上面的窗口在视觉上可能并不显得是最上面的。所以您应该始终使用 {cmd:name()} 选项以确保打印正确的查看器或图形窗口。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <print.sthlp>}