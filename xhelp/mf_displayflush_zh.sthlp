{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] displayflush()" "mansection M-5 displayflush()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] display()" "help mf_display_zh"}{...}
{vieweralsosee "[M-5] printf()" "help mf_printf_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] IO" "help m4_io_zh"}{...}
{viewerjumpto "语法" "mf_displayflush_zh##syntax"}{...}
{viewerjumpto "描述" "mf_displayflush_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_displayflush_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_displayflush_zh##remarks"}{...}
{viewerjumpto "诊断" "mf_displayflush_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_displayflush_zh##source"}
{help mf_displayflush:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[M-5] displayflush()} {hline 2}}清空终端输出缓冲区{p_end}
{p2col:}({mansection M-5 displayflush():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void}
{cmd:displayflush()}


{marker description}{...}
{title:描述}

{p 4 4 2}
为了实现更好的性能，Stata 会对终端输出进行缓冲，因此在程序中，输出在执行 {help mf_display_zh:display()} 或 
{help mf_printf_zh:printf()} 命令时可能不会立即出现。输出可能会被保留在缓冲区中，并在稍后显示。

{p 4 4 2}
{cmd:displayflush()} 强制 Stata 在终端上显示所有待处理的输出。{cmd:displayflush()} 很少使用。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 displayflush()Remarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
请参见 {bf:{help mf_printf_zh:[M-5] printf()}} 以获取 
{help mf_printf##force:displayflush()} 使用示例。

{p 4 4 2}
使用 {cmd:displayflush()} 会降低执行速度。仅在输出必须立即在终端上显示时使用 {cmd:displayflush()}，例如在提供指示程序正在执行何种操作的消息时。


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{pstd}
此功能是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_displayflush.sthlp>}