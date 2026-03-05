{smcl}
{* *! version 1.1.6  19oct2017}{...}
{vieweralsosee "[P] capture" "mansection P capture"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] break" "help break_zh"}{...}
{vieweralsosee "[P] confirm" "help confirm_zh"}{...}
{vieweralsosee "[P] quietly" "help quietly_zh"}{...}
{viewerjumpto "Syntax" "capture_zh##syntax"}{...}
{viewerjumpto "Description" "capture_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "capture_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "capture_zh##remarks"}
{help capture:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[P] capture} {hline 2}}获取返回代码{p_end}
{p2col:}({mansection P capture:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmdab:cap:ture} [{cmd::}] {it:command}


        {cmdab:cap:ture} {cmd:{c -(}}
                {it:stata_commands} 
        {cmd:{c )-}}


{marker description}{...}
{title:描述}

{pstd}
{cmd:capture} 执行 {it:command}，抑制所有输出（包括错误信息，如果有的话），并发出一个返回代码零。由 {it:command} 生成的实际返回代码存储在内置标量 {cmd:_rc} 中。

{pstd}
{cmd:capture} 可与 {cmd:{c -(}}{cmd:{c )-}} 结合使用，以生成捕获块，可以抑制该块命令的输出。有关更多信息，请参见 {mansection P captureRemarksandexamplestechnote6:技术说明} 在 {bf:[P] capture} 中。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P captureRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
在 do-files 和程序中，{cmd:capture} 很有用，因为当一个命令发出非零返回代码时，其执行会终止。在敏感命令前加上 {cmd:capture} 可以让 do-file 或程序在出现错误的情况下继续运行。此外，do-files 和程序可以通过根据标量 {cmd:_rc} 的内容来适当地响应任何情况。

{pstd} 
{cmd:capture} 可以与 {cmd:noisily} 结合使用，无论返回代码如何，都显示输出和任何错误信息。例如， 

{phang2}{cmd:. capture noisily regress y x} {p_end}

{pstd}
将显示错误信息并将返回代码存储在 {cmd:_rc} 中，或显示输出并将返回代码零存储在 {cmd:_rc} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <capture.sthlp>}