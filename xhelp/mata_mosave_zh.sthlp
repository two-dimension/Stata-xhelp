{smcl}
{* *! version 1.3.3  15may2018}{...}
{vieweralsosee "[M-3] mata mosave" "mansection M-3 matamosave"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] mata mlib" "help mata_mlib_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] Intro" "help m3_intro_zh"}{...}
{viewerjumpto "语法" "mata_mosave_zh##syntax"}{...}
{viewerjumpto "描述" "mata_mosave_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mata_mosave_zh##linkspdf"}{...}
{viewerjumpto "选项" "mata_mosave_zh##options"}{...}
{viewerjumpto "备注" "mata_mosave_zh##remarks"}
{help mata_mosave:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-3] mata mosave} {hline 2}}保存函数的编译代码到对象文件
{p_end}
{p2col:}({mansection M-3 matamosave:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
: {cmd:mata} {cmd:mosave}
{it:fcnname}{cmd:()}
[{cmd:,}
{cmd:dir(}{it:path}{cmd:)}
{cmd:complete}
{cmd:replace}]


{p 4 4 2}
此命令用于 Mata 模式，后跟 Mata 的冒号提示符。
要从 Stata 的点提示符使用此命令，请输入

		. {cmd:mata: mata mosave} ...


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mata} {cmd:mosave} 将指定函数的对象代码保存到文件 {it:fcnname}{cmd:.mo}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-3 matamosaveRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{p 4 8 2}
{cmd:dir(}{it:path}{it:)} 指定要写入文件的目录（文件夹）。
    {cmd:dir(.)} 是默认值，这意味着如果未指定 {cmd:dir()}，文件将写入当前（工作）目录。
    {it:path} 可以是目录名称，
    或者可以是 sysdir 简写 {cmd:STATA}、{cmd:BASE}、{cmd:SITE}、{cmd:PLUS}、{cmd:PERSONAL} 或 {cmd:OLDPLACE}；请参见 
    {bf:{help sysdir_zh:[P] sysdir}}。
    推荐使用 {cmd:dir(PERSONAL)}。

{p 4 8 2}
{cmd:complete} 用于保存类定义。它指定仅当定义完整时才保存；
    否则，将发出错误消息。
    请参见 {bf:{help m2_class_zh:[M-2] class}}。

{p 4 8 2}
{cmd:replace} 指定如果文件已存在，则可以替换该文件。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
请参见 {bf:{help m1_how_zh:[M-1] 如何}} 以获取对象代码的解释。

{p 4 4 2}
备注按以下标题呈现：

	{help mata_mosave##remarks1:用法示例}
	{help mata_mosave##remarks2:存储 .mo 文件的位置}
	{help mata_mosave##remarks3:.mo 文件与 .mlib 文件的使用}


{marker remarks1}{...}
{title:用法示例} 

{p 4 4 2}
{cmd:.mo} 文件包含一个函数的对象代码。如果你将函数的对象代码存储在 {cmd:.mo} 文件中，那么在未来的 Mata 会话中，可以在不重新编译源代码的情况下使用该函数。该函数将看起来成为 Mata 的一部分，就像手册中记录的所有其他函数一样。可以使用该函数，因为对象代码将在需要时自动找到并加载。

{p 4 4 2}
例如，

	: {cmd:function add(a,b) return(a+b)}

	: {cmd:add(1,2)}
	  3

	: {cmd:mata mosave add()}
	(创建文件 add.mo)

	: {cmd:mata clear}

	: {cmd:add(1,2)}
	  3

{p 4 4 2}
在上述示例中，函数 {cmd:add()} 被保存到当前目录中的 {cmd:add.mo} 文件中。清除 Mata 后，我们仍然可以使用该函数，因为 Mata 找到了存储的对象代码。


{marker remarks2}{...}
{title:存储 .mo 文件的位置}

{p 4 4 2}
Mata 能找到 {cmd:add()} 是因为文件 {cmd:add.mo} 在当前目录中，而我们的 ado 路径包括 {cmd:.}：

	. {cmd:adopath}
	{txt}  [1]  (BASE)      "{res}C:\Program Files\Stata16\ado\base\{txt}"
	  [2]  (SITE)      "{res}C:\Program Files\Stata16\ado\site\{txt}"
	  [3]              "{res}.{txt}"
	  [4]  (PERSONAL)  "{res}C:\ado\personal\{txt}"
	  [5]  (PLUS)      "{res}C:\ado\plus\{txt}"
	  [6]  (OLDPLACE)  "{res}C:\ado\{txt}"

{p 4 4 2}
如果后来我们更改当前目录，

	. {cmd:cd ..\otherdir}

{p 4 4 2}
Mata 将无法再找到文件 {cmd:add.mo}。因此，存储个人 {cmd:.mo} 文件的最佳位置是你的 
{cmd:PERSONAL} 目录。因此，与其输入 

	: {cmd:mata mosave example()}

{p 4 4 2}
我们更好的做法是输入

	: {cmd:mata mosave example(), dir(PERSONAL)}


{marker remarks3}{...}
{title:.mo 文件与 .mlib 文件的使用}

{p 4 4 2}
强烈推荐使用 {cmd:.mo} 文件。保存编译对象代码的备选方案是 {cmd:.mlib} 库；请参见 
{bf:{help mata_mlib_zh:[M-3] mata mlib}}
和 
{bf:{help m1_ado_zh:[M-1] Ado}}。

{p 4 4 2}
当你有许多函数并希望将它们结合到一个文件中时，库是有用的，特别是如果你想与他人分享这些函数，因为那样你只需分发一个文件。库的缺点是，每当你想删除或更改一个函数的代码时，必须重新构建它们。如果你只有少量对象文件，或者如果你有很多对象文件但分享不是问题，{cmd:.mo} 库更易于管理。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mata_mosave.sthlp>}