{smcl}
{* *! version 1.1.4  19oct2017}{...}
{vieweralsosee "[P] sleep" "mansection P sleep"}{...}
{viewerjumpto "Syntax" "sleep_zh##syntax"}{...}
{viewerjumpto "Description" "sleep_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sleep_zh##linkspdf"}{...}
{viewerjumpto "Example" "sleep_zh##example"}
{help sleep:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[P] sleep} {hline 2}}暂停指定时间{p_end}
{p2col:}({mansection P sleep:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmd:sleep} {it:#}

{pstd}其中 {it:#} 是以毫秒计的时间（1,000 毫秒 = 1 秒）。


{marker description}{...}
{title:描述}

{pstd}
{cmd:sleep} 告诉 Stata 在继续下一条命令之前暂停 {it:#} 毫秒。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P sleepRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker example}{...}
{title:示例}

	{cmd:. sleep 10000}

{pstd}暂停 10 秒{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sleep.sthlp>}