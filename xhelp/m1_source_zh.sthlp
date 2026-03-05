{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-1] 源代码" "mansection M-1 Source"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] 查看源代码" "help viewsource_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-1] 介绍" "help m1_intro_zh"}{...}
{viewerjumpto "语法" "m1_source_zh##syntax"}{...}
{viewerjumpto "描述" "m1_source_zh##description"}{...}
{viewerjumpto "链接到 PDF 文档" "m1_source_zh##linkspdf"}{...}
{viewerjumpto "备注" "m1_source_zh##remarks"}
{help m1_source:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-1] 源代码} {hline 2}}查看源代码
{p_end}
{p2col:}({mansection M-1 Source:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 4 8 2}
{cmd:viewsource}
{it:functionname}{cmd:.mata}


{marker description}{...}
{title:描述}

{p 4 4 2}
许多 Mata 函数都是用 Mata 编写的。  
{cmd:viewsource} 允许你检查它们的源代码。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection M-1 SourceRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
一些 Mata 函数是用 C 语言实现的（它们是 Mata 本身的一部分），而其他函数是用 Mata 编写的。

{p 4 4 2}
{cmd:viewsource} 允许你查看用 Mata 编写的官方源代码。  审查这段代码是学习 Mata 的好方法。

{p 4 4 2}
官方源代码存储在 {cmd:.mata} 文件中。 例如，要查看 {cmd:diag()} 的源代码（参见 {help mf_diag_zh:[M-5] diag()}），输入

	. {cmd:viewsource diag.mata}

{p 4 4 2}
你需要在 Stata 的点提示符下输入，而不是在 Mata 的冒号提示符下输入。

{p 4 4 2}
如果函数是内置的，例如 
{cmd:abs()}（参见 {help mf_abs_zh:[M-5] abs()}），那么当你尝试查看源代码时，将会发生以下情况：

	. {cmd:viewsource abs.mata}
	{err:file "abs.mata" not found}
	r(601);

{p 4 4 2}
你可以使用 {cmd:mata which} （参见 {bf:{help mata_which_zh:[M-3] mata which}}）命令验证 {cmd:abs()} 是内置的：

	. {cmd:mata: mata which abs()}
	  abs():  内置

{p 4 4 2}
如果分发包含源代码，{cmd:viewsource} 也可用于查看社区贡献函数的源代码（可能不包含）。 
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m1_source.sthlp>}