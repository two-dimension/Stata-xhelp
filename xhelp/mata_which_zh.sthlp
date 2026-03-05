{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-3] mata which" "mansection M-3 matawhich"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] Intro" "help m3_intro_zh"}{...}
{viewerjumpto "Syntax" "mata_which_zh##syntax"}{...}
{viewerjumpto "Description" "mata_which_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mata_which_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mata_which_zh##remarks"}
{help mata_which:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-3] mata which} {hline 2}}识别函数
{p_end}
{p2col:}({mansection M-3 matawhich:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
: {cmd:mata} {cmd:which}
{it:fcnname}{cmd:()}


{p 4 4 2}
此命令用于 Mata 模式，需在 Mata 的冒号提示符下使用。
要从 Stata 的点提示符使用此命令，请输入：

		. {cmd:mata: mata which} ...


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mata which} {it:fcnname} 查找 {it:fcnname}{cmd:()} 并报告它是内建的、存储在 {help mata_mlib_zh:.mlib} 库中，还是存储在 {helpb mata mosave:.mo} 文件中。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection M-3 matawhichRemarksandexamples:备注和示例}

{pstd}
上述部分并未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:mata} {cmd:which} {it:fcnname}{cmd:()} 查找 
{it:fcnname}{cmd:()} 并报告其所在位置：

	: {cmd:mata which I()}
	  I():  内建

	: {cmd:mata which assert()}
	  assert():  lmatabase

	: {cmd:mata which myfcn()}
	  userfunction():  .\myfcn.mo

	: {cmd:mata which nosuchfunction()}
	{err:function nosuchfunction() not found}
	r(111);

{p 4 4 2}
函数 {cmd:I()} 为内建函数；它是用 C 语言编写的，并且是 Mata 本身的一部分。

{p 4 4 2}
函数 {cmd:assert()} 是一个库函数，实际上，其可执行对象代码位于官方 
函数库 {cmd:lmatabase.mlib} 中。

{p 4 4 2}
函数 {cmd:myfcn()} 存在并且其可执行对象代码存储在文件 {cmd:myfcn.mo} 中，该文件位于当前目录。

{p 4 4 2}
函数 {cmd:nosuchfunction()} 不存在。

{p 4 4 2}
回到 {cmd:mata} {cmd:which} {cmd:assert()}，它位于 lmatabase.mlib 中，如果你想知道 
lmatabase.mlib 的存储位置，可以在 Stata 提示符下输入 {cmd:findfile} {cmd:lmatabase.mlib}
；请参见 
{bf:{help findfile_zh:[P] findfile}}.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mata_which.sthlp>}