{smcl}
{* *! version 1.0.7  19oct2017}{...}
{vieweralsosee "[P] window stopbox" "mansection P windowstopbox"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] capture" "help capture_zh"}{...}
{vieweralsosee "[P] window programming" "help window_programming_zh"}{...}
{viewerjumpto "Syntax" "window_stopbox_zh##syntax"}{...}
{viewerjumpto "Description" "window_stopbox_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "window_stopbox_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "window_stopbox_zh##remarks"}
{help window_stopbox:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[P] window stopbox} {hline 2}}显示消息框{p_end}
{p2col:}({mansection P windowstopbox:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 23 2}
{cmd:window} {opt stop:box}
{{opt stop}|{opt note}|{opt rusure}}
[{cmd:"}{it:行 1}{cmd:"}
[{cmd:"}{it:行 2}{cmd:"}
[{cmd:"}{it:行 3}{cmd:"}
[{cmd:"}{it:行 4}{cmd:"}]]]]


{marker description}{...}
{title:描述} 

{pstd}
{cmd:window} {cmd:stopbox} 允许 Stata 程序显示消息框。最多可以在消息框中显示四行文本。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P windowstopboxRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
Stata 程序员可以使用三种类型的消息框。第一种是 {cmd:stop} 消息框。 {cmd:window stopbox stop} 显示一个旨在用于错误消息的消息框。这种类型的消息框总是以返回代码 1 退出。

{p 8 17 2}{cmd:. window stopbox stop "您必须输入变量名称。"  "请再试一次。"}

       （{cmd:stop} 消息框显示）

       {cmd}--中断--
       r(1);{txt}

{pstd}
第二种消息框是 {cmd:note} 消息框。{cmd:window} {cmd:stopbox} {cmd:note} 显示一个旨在用于信息消息或备注的消息框。这种类型的消息框总是以返回代码 0 退出。

{p 8 17 2}{cmd:. window stopbox note "您答对了 4 个问题中的 3 个。"  "按 OK 继续。"}

       （{cmd:note} 消息框显示）

{pstd}
关闭前两种类型的消息框的唯一方法是单击框底部显示的 {hi:OK} 按钮。

{pstd}
第三种消息框是 {cmd:rusure} （即 "您确定吗？"）消息框。该消息框允许 Stata 程序向用户询问问题。用户可以通过单击 {hi:Yes} 或 {hi:No} 来关闭该框。如果用户单击 {hi:Yes}，消息框以返回代码 0 退出；如果用户单击 {hi:No}，则以返回代码 1 退出。

{pstd}
Stata 程序应该使用 {cmd:capture} 命令来确定用户是单击了 {hi:Yes} 还是 {hi:No}。
       
{p 8 25 2}{cmd:. capture window stopbox rusure "您想从内存中清除当前数据集吗？"}{p_end}

       （{cmd:rusure} 消息框显示）

       {cmd:. if _rc == 0 clear}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <window_stopbox.sthlp>}