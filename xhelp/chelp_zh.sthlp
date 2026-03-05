{smcl}
{* *! version 1.0.2  03jun2013}{...}
{vieweralsosee "prdocumented" "help previously documented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] hsearch" "help hsearch_zh"}{...}
{vieweralsosee "[R] net search" "help net_search_zh"}{...}
{vieweralsosee "[R] search" "help search_zh"}{...}
{viewerjumpto "Syntax" "chelp_zh##syntax"}{...}
{viewerjumpto "Description" "chelp_zh##description"}{...}
{viewerjumpto "Remarks" "chelp_zh##remarks"}
{help chelp:English Version}
{hline}{...}
{pstd}
{cmd:chelp} 继续可用，但从 Stata 13 开始不再是 Stata 的官方部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。

{pstd}
请参见 {help help_zh} 以获取 {cmd:chelp} 的推荐替代方案。


{title:标题}

{p2colset 5 18 20 2}{...}
{p2col :{hi:[R] chelp} {hline 2}}在结果窗口中显示系统帮助{p_end}
{p2colreset}{...}

{hline}

{title:Stata 的帮助系统}

{pstd}
Stata 用户可以获得几种类型的帮助。有关更多信息，请参见 {help help_advice_zh:获取帮助的建议}。
下面的信息是有关 Stata 的 {cmd:chelp} 命令的技术细节。

{hline}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmdab:ch:elp} [{it:command_or_topic_name}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:chelp} 命令显示有关指定命令或主题的帮助信息。

{phang}Stata for Mac、Stata for Unix（GUI）和 Stata for Windows：{break}
{cmd:chelp} 在结果窗口中显示帮助。

{phang}Stata for Unix（GUI 和控制台均适用）：{break}
  {cmd:man} 是 {cmd:chelp} 的同义词。


{marker remarks}{...}
{title:备注}

{pstd}
要获得任何 Stata 命令的帮助，请输入 {cmd:chelp} {it:command}。

{pstd}
{cmd:chelp} 最好通过示例进行解释。

{p2colset 11 47 49 2}{...}
{p2col 9 45 49 2: 要获取帮助 ...}输入{p_end}
{p2col: {cmd:regress}}{cmd:chelp regress}{p_end}
{p2col: {cmd:regress} 的后估计工具}{cmd:chelp regress postestimation}{p_end}
{p2col:}或{space 2} {cmd:chelp regress post}{p_end}
{p2col: 图形选项 {cmd:xlabel()}}{cmd:chelp graph xlabel()}{p_end}
{p2col: Stata 函数 {cmd:strpos()}}{cmd:chelp strpos()}{p_end}
{p2col: Mata 函数 {cmd:optimize()}}{cmd:chelp mata optimize()}{p_end}
{p2colreset}{...}

{pstd}
提示：

{phang2}
o {cmd:chelp} 显示 {cmd:help} 命令的帮助信息。

{phang2}
o {cmd:chelp guide} 显示基本 Stata 概念的目录。

{phang2}
o {cmd:chelp estimation commands} 显示所有 Stata 估计命令的字母列表。

{phang2}
o {cmd:chelp functions} 按类别显示 Stata 函数的帮助信息。

{phang2}
o {cmd:chelp mata functions} 显示 Mata 函数的主题目录。

{phang2}
o {cmd:chelp ts glossary} 显示时间序列手册的词汇表，其他 Stata 专业手册也类似。

{pstd}
请参见 {findalias frhelp} 以获取完整
描述如何使用 {cmd:chelp}。


{hline}

{title:当看到 {hline 2}more{hline 2} 时该怎么办}

{pstd}
每当命令的输出即将滚出屏幕时，Stata 会暂停并在结果窗口底部显示字符 {cmd:{hline 2}more{hline 2}}。

{col 13}操作{col 49}结果
{col 5}{hline 23}{col 32}{hline 40}
{col 5}按 {hi:Enter} 或 {hi:Return}{col 32}显示一行文本

{col 5}按 {hi:b}{col 32}显示上一个屏幕的文本

{col 5}按 {hi:Ctrl-K}{col 32}{hline 2}more{hline 2} 条件被清除，输出停止 

{col 5}按 {hi:q}{col 32}{hline 2}more{hline 2} 条件被清除，输出停止

{col 5}按其他任何键{col 32}显示下一个屏幕的文本
{col 9}(例如空格键)

{col 5}PC：
{col 9}按 {hi:Ctrl-Break}{col 32}Stata 尽快停止处理命令

{col 5}Mac：
{col 9}按 {hi:Command-.}{col 34}"     "       "       "       "     "

{col 5}Unix（控制台）：
{col 9}按 {hi:Ctrl-C}{col 34}"     "       "       "       "     "

{col 5}Unix（GUI）：
{col 9}按 {hi:Ctrl-Break}{col 34}"     "       "       "       "     "


{pstd}
{hline 2}more{hline 2} 时常发生，而不仅仅是在 {cmd:chelp} 中，因为 
Stata 不会在未征得您的同意的情况下滚动信息。

{pstd}
在其他命令给出的 {hline 2}more{hline 2} 情况下，这些相同的按键也可以工作，只是按 {hi:b} 仅适用于
{cmd:chelp}。您不能在其他命令中按 {hi:b} 返回上一个屏幕。


{title:中断 Stata 命令}

{pstd}
您可以随时按 {hi:Ctrl-Break}（或 {hi:Command-.} 或 {hi:Ctrl-C}）来中断 Stata 中的任何命令，而不仅仅是在
{hline 2}more{hline 2} 的响应中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <chelp.sthlp>}