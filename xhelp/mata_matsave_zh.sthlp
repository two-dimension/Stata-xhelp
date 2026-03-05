{smcl}
{* *! version 1.1.8  15may2018}{...}
{vieweralsosee "[M-3] mata matsave" "mansection M-3 matamatsave"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] Intro" "help m3_intro_zh"}{...}
{viewerjumpto "语法" "mata_matsave_zh##syntax"}{...}
{viewerjumpto "描述" "mata_matsave_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mata_matsave_zh##linkspdf"}{...}
{viewerjumpto "mata matsave 选项" "mata_matsave_zh##options_mata_matsave"}{...}
{viewerjumpto "mata matuse 选项" "mata_matsave_zh##option_mata_matuse"}{...}
{viewerjumpto "备注" "mata_matsave_zh##remarks"}{...}
{viewerjumpto "诊断" "mata_matsave_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mata_matsave_zh##source_code"}
{help mata_matsave:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-3] mata matsave} {hline 2}}保存和恢复矩阵
{p_end}
{p2col:}({mansection M-3 matamatsave:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
: {cmd:mata} {cmd:matsave}
{it:{help filename_zh}}
{it:namelist}
[{cmd:,}
{cmd:replace}
]

{p 8 16 2}
: {cmd:mata} {cmd:matuse}
{it:{help filename_zh}}
[{cmd:,}
{cmd:replace}
]

{p 8 16 2}
: {cmd:mata} {cmdab:matd:escribe}
{it:{help filename_zh}}


{p 4 4 2}
其中 {it:namelist} 是在 
{bf:{help m3_namelists_zh:[M-3] namelists}} 中定义的矩阵名称列表。

{p 4 4 2}
如果 {it:filename} 没有指定后缀，默认为{cmd:.mmat}。

{p 4 4 2}
这些命令用于Mata模式下在Mata的冒号提示符之后。
要从Stata的点提示符使用这些命令，请输入

		. {cmd:mata: mata matsave} ...


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mata} {cmd:matsave} 将指定的全局矩阵保存到 
{it:{help filename_zh}} 中。

{p 4 4 2}
{cmd:mata} {cmd:matuse} 加载存储在 {it:filename} 中的矩阵。

{p 4 4 2}
{cmd:mata} {cmd:matdescribe} 描述 {it:filename} 的内容。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-3 matamatsaveRemarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker options_mata_matsave}{...}
{title:mata matsave 选项}

{p 4 8 2}
{cmd:replace} 指定如果 {it:{help filename_zh}} 已经存在，可以被替换。


{marker option_mata_matuse}{...}
{title:mata matuse 选项}

{p 4 8 2}
{cmd:replace} 指定与存储在 {it:{help filename_zh}} 中的矩阵同名的任何内存中矩阵可以被替换。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
这些命令用于交互使用；它们不适用于程序内部。请参见 {bf:{help mf_fopen_zh:[M-5] fopen()}} 以了解Mata的编程功能，用于读取和写入文件。
在编程环境中，如果您有一个矩阵 {it:X} 并希望将其写入文件
{cmd:mymatrix.myfile}，您可以编写 

		{cmd}fh = fopen("mymatrix.myfile", "w")
		fputmatrix(fh, X)
		fclose(fh){txt}

{p 4 4 2}
稍后，您可以通过编写

		{cmd}fh = fopen("mymatrix.myfile", "r")
		X = fgetmatrix(fh)
		fclose(fh){txt}

{p 4 4 2}
{cmd:mata} {cmd:matsave}, 
{cmd:mata} {cmd:matuse}, 
以及
{cmd:mata} {cmd:matdescribe} 
是在程序外使用的，当您进行交互操作时。
您可以保存您的全局矩阵

	: {cmd:mata matsave mywork *}
	(保存 A, X, Z, beta)
	文件 mywork.mmat 已保存

{p 4 4 2}
然后稍后可以将它们取回：

	: {cmd:mata matuse mywork}
	(加载 A, X, Z, beta)

{p 4 4 2}
{cmd:mata} {cmd:matdescribe} 将告知您文件的内容：

	: {cmd:mata matdescribe mywork}
	文件 mywork.mmat 于 2016 年 4 月 4 日 08:46:39 创建，包含 
	X, X, Z, beta


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:mata} {cmd:matsave} 保存视图矩阵的内容。因此
当它们通过 {cmd:mata} {cmd:matuse} 恢复时，内容将是
正确的，无论Stata在内存中加载了哪些数据。


{marker source_code}{...}
{title:源代码}

{p 4 4 2}
{view mata_matsave.ado, adopath asis:mata_matsave.ado},
{view mata_matuse.ado, adopath asis:mata_matuse.ado},
{view mata_matdescribe.ado, adopath asis:mata_matdescribe.ado},
{view mmat_.mata, adopath asis:mmat_.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mata_matsave.sthlp>}