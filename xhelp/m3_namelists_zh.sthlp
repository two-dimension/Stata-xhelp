{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-3] namelists" "mansection M-3 namelists"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] Intro" "help m3_intro_zh"}{...}
{viewerjumpto "Syntax" "m3_namelists_zh##syntax"}{...}
{viewerjumpto "Description" "m3_namelists_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m3_namelists_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m3_namelists_zh##remarks"}
{help m3_namelists:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-3] namelists} {hline 2}}指定矩阵和函数名称
{p_end}
{p2col:}({mansection M-3 namelists:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 4 4 2}
许多 {cmd:mata} 命令允许或需要一个 {it:namelist}，例如


{p 8 16 2}
: {cmd:mata} {cmdab:d:escribe} 
[{it:namelist}] 
[{cmd:,} 
{cmd:all}]


{p 4 4 2}
{it:namelist} 被定义为一个矩阵和/或函数名称的列表，例如

		{cmd:alpha beta foo()}

{p 4 4 2} 
上述 {it:namelist} 指代矩阵 {cmd:alpha} 和 {cmd:beta} 以及名为 {cmd:foo()} 的函数。

{p 4 4 2}
函数名称总是以 {cmd:()} 结尾，因此

		{cmd:alpha}     指代名为 {cmd:alpha} 的矩阵

		{cmd:alpha()}   指代同名的函数


{p 4 4 2}
名称还可以使用 {cmd:*} 和 {cmd:?} 通配符字符来指定：

		{cmd:*}          表示这里可以有零个或多个字符

                {cmd:?}          表示这里必须有一个字符

{p 4 4 2}
因此，

		{cmd:*}          表示所有矩阵
		{cmd:*()}        表示所有函数
		{cmd:* *()}      表示所有矩阵和所有函数

		{cmd:s*}         表示所有以 {it:s} 开头的矩阵
		{cmd:s*()}       表示所有以 {it:s} 开头的函数

		{cmd:*e}         表示所有以 {it:e} 结尾的矩阵
		{cmd:*e()}       表示所有以 {it:e} 结尾的函数

		{cmd:s*e}        表示所有以 {it:s} 开头并以 {it:e} 结尾的矩阵
		{cmd:s*e()}      表示所有以 {it:s} 开头并以 {it:e} 结尾的函数

		{cmd:s?e}        表示所有以 {it:s} 开头并以 {it:e} 结尾的矩阵
				并且中间有一个字符
		{cmd:s?e()}      表示所有以 {it:s} 开头并以 {it:e} 结尾的函数
				并且中间有一个字符


{marker description}{...}
{title:描述}

{p 4 4 2}
{it:Namelists} 出现在语法图中。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-3 namelistsRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
某些 {it:namelists} 仅允许矩阵，而某些仅允许函数。
即使仅允许函数，也必须包括 {cmd:()} 后缀。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m3_namelists.sthlp>}