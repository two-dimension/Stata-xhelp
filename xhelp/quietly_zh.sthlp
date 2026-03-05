{smcl}
{* *! version 1.1.3  19oct2017}{...}
{vieweralsosee "[P] quietly" "mansection P quietly"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] capture" "help capture_zh"}{...}
{viewerjumpto "Syntax" "quietly_zh##syntax"}{...}
{viewerjumpto "Description" "quietly_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "quietly_zh##linkspdf"}{...}
{viewerjumpto "Example of interactive use" "quietly_zh##example"}{...}
{viewerjumpto "Note for programmers" "quietly_zh##note"}
{help quietly:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[P] quietly} {hline 2}}安静地和显式地执行 Stata 命令{p_end}
{p2col:}({mansection P quietly:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    执行命令但抑制终端输出

	{cmdab:qui:etly} [{cmd::}] {it:command}


    执行命令并确保终端输出

	{cmdab:n:oisily} [{cmd::}] {it:command}


    指定要显示的输出类型

{phang2}{cmd:set} {cmdab:ou:tput} {c -(} {cmdab:p:roc} | {cmdab:i:nform} |
{cmdab:e:rror} {c )-}


{marker description}{...}
{title:描述}

{pstd}
{cmd:quietly} 在 {it:command} 执行期间抑制所有终端输出。
它在交互使用和程序中均非常有用。

{pstd}
{cmd:noisily} 在适当的情况下重新开启终端输出，在 {it:command} 执行期间。
它仅在程序中有用。

{pstd}
{cmd:set output} 指定要显示的输出。它仅在程序中有用，且即便如此也很少使用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P quietlyRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker example}{...}
{title:交互使用示例}

{pstd}
您不想看到特定回归的输出，而是想静默地运行回归，以便访问其返回结果中的一些内容。

{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. quietly regress mpg weight foreign headroom}

{pstd}
没有输出呈现，但回归的 {hi:e()} 返回结果现在可用。


{marker note}{...}
{title:程序员注意事项}

{pstd}
如果您编写程序或 ado 文件，例如 {cmd:mycmd}，您无需做任何特殊的处理，以便可以用 {cmd:quietly} 前缀您的命令。
也就是说，c-class 值 {cmd:c(noisily)}（见 {help creturn_zh:[P] creturn}）将在输出被抑制时返回 {cmd:0}，否则返回 {cmd:1}。因此您的程序可以如下编写：

	{cmd:program mycmd}
		...
		{cmd:display} ...
		{cmd:display} ...
		...
	{cmd:end}

{pstd} 或

	{cmd:program mycmd}
		...
		{cmd:if c(noisily) {c -(}}
			{cmd:display} ...
			{cmd:display} ...
		{cmd:{c )-}}
		...
	{cmd:end}

{pstd}
第一种风格是首选。如果用户执行 {cmd:quietly} {cmd:mycmd}，则 {cmd:display} 的输出以及所有其他命令的输出将自动被抑制。

{pstd}
然而，如果程序必须做显著的工作以生成要显示的内容，并且这样做的唯一原因是由于显示，那么第二种风格是首选。在这种情况下，您可以将额外的工作包含在仅在 {cmd:c(noisily)} 为真时执行的代码块中，从而使程序在以 {cmd:quietly} 调用时执行得更快。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <quietly.sthlp>}