{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-3] mata memory" "mansection M-3 matamemory"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-1] Limits" "help m1_limits_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] mata clear" "help mata_clear_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] Intro" "help m3_intro_zh"}{...}
{viewerjumpto "Syntax" "mata_memory_zh##syntax"}{...}
{viewerjumpto "Description" "mata_memory_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mata_memory_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mata_memory_zh##remarks"}
{help mata_memory:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-3] mata memory} {hline 2}}报告 Mata 内存使用情况
{p_end}
{p2col:}({mansection M-3 matamemory:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
	: {cmd:mata memory}


{p 4 4 2}
此命令用于在 Mata 模式下，在 Mata 的冒号提示符后使用。
要在 Stata 的点提示符下使用此命令，请输入

		. {cmd:mata: mata memory}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mata} {cmd:memory} 提供 Mata 当前内存利用情况的概述。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-3 matamemoryRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

	: {cmd:mata memory}
	{txt}                                 #              字节
	  {hline 51}
	  自动加载的函数   {res}       15              5,514
	  {txt}ado函数          {res}        0                  0
	  {txt}定义的函数      {res}        0                  0

	  {txt}矩阵和标量     {res}       14              8,256

	  {txt}开销                            {res}          1,972
	{txt}  {hline 51}
	  总计                  {res}       29             15,742{txt}


{p 4 4 2}
函数分为三种类型：

{p 8 12 2}
1.  {it:自动加载的函数}，指的是当前加载的库函数
    （并且将会自动卸载）来自 {help mata_mlib_zh:.mlib} 库文件和 {help mata_mosave_zh:.mo}
    对象文件。

{p 8 12 2}
2.  {it:Ado 函数}，指的是当前加载的函数
    其源代码出现在 ado 文件中。这些函数将在 ado 文件自动卸载时被清除。

{p 8 12 2}
3.  {it:定义的函数}，指的是已经交互式或通过 do 文件定义的函数，这些函数只会在执行 {cmd:mata clear}、{cmd:mata drop}、Stata
    {cmd:clear mata} 或 Stata {cmd:clear all} 命令时被清除；参见
    {bf:{help mata_clear_zh:[M-3] mata clear}},
    {bf:{help mata_drop_zh:[M-3] mata drop}}，以及
    {bf:{help clear_zh:[D] clear}}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mata_memory.sthlp>}