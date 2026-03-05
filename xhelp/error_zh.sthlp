{smcl}
{* *! version 1.1.4  19oct2017}{...}
{vieweralsosee "[P] error" "mansection P error"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] break" "help break_zh"}{...}
{vieweralsosee "[P] capture" "help capture_zh"}{...}
{vieweralsosee "[P] exit" "help exit_zh"}{...}
{vieweralsosee "[R] search" "help search_zh"}{...}
{viewerjumpto "Syntax" "error_zh##syntax"}{...}
{viewerjumpto "Description" "error_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "error_zh##linkspdf"}
{help error:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[P] error} {hline 2}}显示通用错误信息并退出{p_end}
{p2col:}({mansection P error:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmdab:err:or} {it:{help exp_zh}}


{marker description}{...}
{title:描述}

{pstd}
{cmd:error} 显示与表达式相关的最通用形式错误信息，并将返回代码设置为表达式的评估结果。如果表达式的评估结果为0，{cmd:error} 不做任何操作。否则，非零返回代码将强制程序或发生该错误的 {cmd:capture} 块退出。如果使用 {cmd:error} 本身发生错误，{cmd:error} 会将返回代码设置为197。
{p_end}


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection P errorRemarksandexamples:备注和示例}

{pstd}
上述章节不包括在此帮助文件中。


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <error.sthlp>}