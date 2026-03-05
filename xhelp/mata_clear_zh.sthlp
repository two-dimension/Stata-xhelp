{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-3] mata clear" "mansection M-3 mataclear"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] mata drop" "help mata_drop_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] Intro" "help m3_intro_zh"}{...}
{viewerjumpto "Syntax" "mata_clear_zh##syntax"}{...}
{viewerjumpto "Description" "mata_clear_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mata_clear_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mata_clear_zh##remarks"}
{help mata_clear:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-3] mata clear} {hline 2}}清除 Mata 的内存
{p_end}
{p2col:}({mansection M-3 mataclear:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
	: {cmd:mata clear}


{p 4 4 2}
此命令用于 Mata 模式，紧随 Mata 的冒号提示符后。
要从 Stata 的点提示符使用此命令，请输入

		. {cmd:mata: mata clear}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mata clear} 清除 Mata 的内存，实际上重置了 Mata。所有
函数、矩阵等都会被释放。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-3 mataclearRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
Stata 可以调用 Mata，而 Mata 可以调用 Stata，Stata 又可以调用 Mata，依此类推。
在这种情况下，{cmd:mata clear} 只释放不被先前调用的 Mata 使用的资源。

{p 4 4 2}
Stata 的 {cmd:clear all} 命令 
(见 {bf:{help clear_zh:[D] clear}})
执行了 {cmd:mata clear}，并且执行其他
操作。

{p 4 4 2}
有关清除单个矩阵或函数，请参见 {bf:{help mata_drop_zh:[M-3] mata drop}}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mata_clear.sthlp>}