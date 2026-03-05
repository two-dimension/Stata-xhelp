{smcl}
{* *! version 1.0.15  29jan2019}{...}
{vieweralsosee "[P] 窗口编程" "mansection P windowprogramming"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] 对话框编程" "help dialog_programming_zh"}{...}
{viewerjumpto "语法" "window programming##syntax"}{...}
{viewerjumpto "描述" "window programming##description"}{...}
{viewerjumpto "备注" "window programming##remarks"}
{help window_programming:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[P] 窗口编程} {hline 2}}编程菜单和窗口{p_end}
{p2col:}({mansection P windowprogramming:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p2colset 5 35 37 2}{...}
{p2col :{helpb window fopen} ...}显示打开对话框{p_end}
{p2col :{helpb window fsave} ...}显示保存对话框{p_end}
{p2col :{helpb window manage} {it:subcmd} ...}管理窗口特性{p_end}
{p2col :{helpb window menu} {it:subcmd} ...}创建菜单{p_end}
{p2col :{helpb window push} {it:command_line}}将命令复制到历史窗口{p_end}
{p2col :{helpb window stopbox} {it:subcmd} ...}显示消息框{p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:window} 命令允许您打开、关闭和管理 Stata 界面中的窗口。 使用 {bind:{cmd:window menu}} 的子命令，您还可以在 Stata 主菜单栏的 {hi:用户} 菜单中添加和删除菜单项。 {bind:{cmd:window push}} 将 {it:command_line} 添加到历史窗口。


{marker remarks}{...}
{title:备注}

{pstd}
有关编程窗口和菜单的完整文档，请参见系统帮助。

{pstd}
有关创建对话框的文档，请参见
{manhelp dialog_programming P:对话框编程}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <window_programming.sthlp>}