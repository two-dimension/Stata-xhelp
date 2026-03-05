{smcl}
{* *! version 1.2.3  10may2018}{...}
{vieweralsosee "[P] window fopen" "mansection P windowfopen"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] window stopbox" "help window stopbox"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] window programming" "help window_programming_zh"}{...}
{viewerjumpto "语法" "window_fopen_zh##syntax"}{...}
{viewerjumpto "描述" "window_fopen_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "window_fopen_zh##linkspdf"}{...}
{viewerjumpto "备注" "window_fopen_zh##remarks"}
{help window_fopen:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[P] window fopen} {hline 2}}显示打开/保存对话框{p_end}
{p2col:}({mansection P windowfopen:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{opt win:dow} {{opt fo:pen}|{opt fs:ave}} {it:macroname}
 {cmd:"}{it:title}{cmd:"} {cmd:"}{it:filter}{cmd:"} [{it:extension}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:window} {cmd:fopen} 和 {cmd:window} {cmd:fsave} 允许 Stata 程序员
在他们的程序中使用标准的 {hi:文件} > {hi:打开...} 和 {hi:文件} > {hi:保存} 
对话框。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P windowfopenRemarksandexamples:备注和示例}

{pstd}
上述章节不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:window} {cmd:fopen} 和 {cmd:window} {cmd:fsave} 调用操作系统的标准
{hi:文件} > {hi:打开...} 和 {hi:文件} > {hi:保存} 对话框。 
这些命令并不会自己打开或保存任何文件；它们只是从用户那里获取要
打开或保存的文件名并返回给你。返回的文件名保证是有效的，并包括完整路径。

{pstd} 
文件名在全局宏 {it:macroname} 中返回。
此外，如果 {it:macroname} 在开始时已定义，其内容将用于填充默认
文件名选择。

       {it:title} 显示为对话框的标题。

{pstd} 
{it:filter} 必须被指定。一个可能的规范是 {cmd:""}，
意味着没有过滤器。作为替代，{it:filter} 由成对的描述和通配符文件选择字符串
组成，用 '{cmd:|}' 分隔，例如

       {cmd:"Stata 图形|*.gph|所有文件|*.*"}

{pstd} 
Stata 使用该过滤器限制用户看到的文件。上述示例允许用户选择
Stata 图形文件或查看所有文件。对话框将显示一个下拉列表，用户
可以从中选择文件类型（扩展名）。每一对的第一个项目 ({cmd:Stata} {cmd:图形} 和 {cmd:所有} {cmd:文件}) 将在下拉列表中列出为选项。
每一对的第二个项目会限制对话框中显示的文件，以与通配符描述匹配。
例如，如果用户从列表框中选择 {cmd:Stata 图形}，则只有扩展名为
{cmd:.gph} 的文件会显示在文件对话框中。

{pstd} 
最后， {it:extension} 是可选的。它可以包含一串字符，默认情况下
添加到文件名的末尾。例如，如果 {it:extension} 被指定为 {cmd:xyz}，
并且用户在文件对话框中输入文件名为 {cmd:abc}，则 {cmd:abc.xyz} 将在
{it:macroname} 中返回。

{pstd} 
在 Windows 系统中，如果所用的 {it:filter} 不是 {cmd:*.*}，则默认
{it:extension} 将被忽略。例如，如果用户当前的过滤器是
{cmd:*.gph}，则默认扩展名将为 {cmd:.gph}，无论指定的 {it:extension}
是什么。

{pstd} 
由于 Windows 允许长文件名，{it:extension} 可能导致意想不到的结果。
例如，如果 {it:extension} 被指定为 {cmd:xyz}，并且用户输入的文件名是
{cmd:abc.def}，Windows 将在返回文件名给 Stata 前添加 {cmd:.xyz}，
因此结果文件名为 {cmd:abc.def.xyz}。Windows 用户应该注意，如果想要指定
不同于默认的扩展名，则必须在文件对话框中输入文件名，双引号包围：
{cmd:"abc.def"}。这适用于所有程序，而不仅仅是 Stata。

{pstd} 
如果用户在文件对话框上按下 {hi:取消} 按钮， 
{cmd:window fopen} 和 {cmd:window fsave} 将把 {it:macroname} 设置为空，并
以返回代码 601 退出。程序员应该使用 {cmd:capture} 命令来防止 601
返回代码显示给用户。

       {hline 47} 开始 dtaview.ado {hline 4}
       {cmd}program dtaview
                version {ccl stata_version}
                capture window fopen D_dta "选择要使用的数据集:" /*
                        */ "Stata 数据 (*.dta)|*.dta|所有文件 (*.*)|*.*" dta 
                if _rc==0 {c -(} 
                        display "用户选择了 $D_dta 作为文件名。"
                        use "$D_dta"
                {c )-}
       end{txt}
       {hline 47} 结束 dtaview.ado {hline 6}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <window_fopen.sthlp>}