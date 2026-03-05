{smcl}
{* *! version 1.0.2  15may2016}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] dtaversion" "help dtaversion_zh"}{...}
{viewerjumpto "Syntax" "dtaverify_zh##syntax"}{...}
{viewerjumpto "Description" "dtaverify_zh##description"}{...}
{viewerjumpto "Remarks" "dtaverify_zh##remarks"}{...}
{viewerjumpto "Aside for programmers" "dtaverify_zh##aside"}
{help dtaverify:English Version}
{hline}{...}
{title:标题}

{p 4 22 2}
{hi:[R] dtaverify} {hline 2} 验证 .dta 文件构建


{marker syntax}{...}
{title:语法}

        {cmd:dtaverify} {it:{help 文件名}}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:dtaverify} 验证 {it:文件名} 的内容是否
按照 StataCorp 指定的标准正确构建。
如果文件构建不正确，{cmd:dtaverify} 会详细说明
该文件与标准的差异。

{p 4 4 2}
另请参见 {manhelp dtaversion R}。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:dtaverify} 可用于

{p 8 11 2}
o{bind:  }调试用其他语言和在生成 Stata {cmd:.dta} 文件的包编写的程序，方法是对这些程序生成的文件运行 {cmd:dtaverify}。

{p 8 11 2}
o{bind:  }验证一个 {cmd:.dta} 文件
未随后遭到损坏。

{p 4 4 2}
{cmd:dtaverify} 提供有用的调试信息。
{cmd:dtaverify} 如果数据集符合 StataCorp 指定的标准，则返回 0，否则返回非零值。

{p 4 4 2}
{cmd:.dta} 文件的标准可以在
{manhelp dta P:File formats .dta} 中找到。
Stata {cmd:.dta} 文件的格式随着时间的推移而改变。
这些标准被称为格式 102、格式 103 等。
{cmd:.dta} 文件包含指定文件使用的标准的标识符，因此
当前版本的 Stata 可以读取符合以前标准的数据集。
有关更多信息，包括与 Stata 版本相关的文件格式表，请参见
{manhelp dtaversion R}。

{p 4 4 2}
{cmd:dtaverify} 目前可以验证标准格式 115 及其后续格式。
如果在旧数据集上运行 {cmd:dtaverify}，
{cmd:dtaverify} 将提供有关如何验证其构建的说明。


{marker aside}{...}
{title:程序员的附注} 

{p 4 4 2} 
{cmd:dtaverify} 的源代码可能对 Stata 程序员感兴趣，原因有两个：

{p 8 11 2}
1. 它提供了文件格式的有用次要描述。

{p 8 11 2}
2. 它提供了一个如何在 Mata 中编写代码以读取复杂二进制格式的示例。

{p 4 4 2}
{cmd:dtaverify} 是存储在 dtaverify.ado 中的命令，实际上是
一个切换器，跳转到其他特定于标准的例程。
它本身并不有趣，但特定于标准的例程是有趣的。
我们建议您查看 {stata "viewsource dtaverify_118.ado"}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dtaverify.sthlp>}