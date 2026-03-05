{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-3] mata stata" "mansection M-3 matastata"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] stata()" "help mf_stata_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] Intro" "help m3_intro_zh"}{...}
{viewerjumpto "Syntax" "mata_stata_zh##syntax"}{...}
{viewerjumpto "Description" "mata_stata_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mata_stata_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mata_stata_zh##remarks"}
{help mata_stata:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-3] mata stata} {hline 2}}执行 Stata 命令
{p_end}
{p2col:}({mansection M-3 matastata:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
: {cmd:mata} {cmd:stata} {it:stata_command}


{p 4 4 2}
该命令用于 Mata 模式下，接在 Mata 的冒号提示符后。

{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mata stata} {it:stata_command}
将 {it:stata_command} 传递给 Stata 执行。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-3 matastataRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:mata} {cmd:stata} 是一个便利工具，使您无需退出 Mata 即可执行 Stata 命令：

	: {cmd:st_view(V=., 1\5, ("mpg", "weight"))}
		{error:st_view():  3598  Stata 返回错误}
		{error:  <istmt>:     -  函数返回错误}
	r(3598);

	: {cmd:mata stata sysuse auto}
	(1978 年汽车数据)

	: {cmd:st_view(V=., 1\5, ("mpg", "weight"))}

{p 4 4 2}
{cmd:mata stata} 用于交互式使用。如果您希望从函数中执行 Stata 命令，请参见 
{bf:{help mf_stata_zh:[M-5] stata()}}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mata_stata.sthlp>}