{smcl}
{* *! version 1.1.5  19oct2017}{...}
{viewerdialog changeeol "dialog changeeol"}{...}
{vieweralsosee "[D] changeeol" "mansection D changeeol"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] filefilter" "help filefilter_zh"}{...}
{vieweralsosee "[D] hexdump" "help hexdump_zh"}{...}
{viewerjumpto "语法" "changeeol_zh##syntax"}{...}
{viewerjumpto "描述" "changeeol_zh##description"}{...}
{viewerjumpto "PDF文档链接" "changeeol_zh##linkspdf"}{...}
{viewerjumpto "选项" "changeeol_zh##options"}{...}
{viewerjumpto "示例" "changeeol_zh##examples"}
{help changeeol:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[D] changeeol} {hline 2}}转换文本文件的行结束符{p_end}
{p2col:}({mansection D changeeol:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 13 2}
{cmd:changeeol} {it:{help filename_zh}1} {it:{help filename_zh}2}{cmd:, eol(}{it:platform}{cmd:)} [{it:options}]

{phang}
{it:filename1} 和 {it:filename2} 必须是文件名。

{p 4 10 2}
注意：如果文件名包含空格，则可以使用双引号将文件名括起来，并且必须使用引号。

{synoptset 18 tabbed}{...}
{synopthdr}
{synoptline}
{p2coldent :* {cmd:eol(windows)}}转换为Windows风格的行结束符 ({cmd:\r\n}){p_end}
{p2coldent :* {cmd:eol(dos)}}同义词 {cmd:eol(windows)}{p_end}
{p2coldent :* {cmd:eol(unix)}}转换为Unix风格的行结束符 ({cmd:\n}){p_end}
{p2coldent :* {cmd:eol(mac)}}转换为Mac风格的行结束符 ({cmd:\n}){p_end}
{p2coldent :* {cmd:eol(classicmac)}}转换为经典Mac风格的行结束符 ({cmd:\r}){p_end}
{synopt :{opt replace}}如果 {it:{help filename_zh}2} 已经存在，则覆盖{p_end}
{synopt :{opt force}}如果 {it:filename1} 是二进制文件，则强制将其转换为 {it:filename2}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt eol()} 是必需的。{p_end}


{marker description}{...}
{title:描述}

{pstd}
{opt changeeol} 将文本文件 {it:{help filename_zh}1} 转换为文本文件 {it:filename2}，使用指定的Windows/Unix/Mac/经典Mac风格的行结束符。{cmd:changeeol} 将行结束符从一种文件类型更改为另一种。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D changeeolQuickstart:快速开始}

        {mansection D changeeolRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:eol(windows}|{opt dos}|{opt unix}|{opt mac}|{cmd:classicmac)}
指定 {it:{help filename_zh}2} 的目标平台风格。{cmd:eol()} 是必需的。

{phang}
{opt replace} 指定如果 {it:{help filename_zh}2} 已存在，则替换它。

{phang}
{opt force} 指定如果 {it:{help filename_zh}1} 是二进制文件，则对其进行转换。


{marker examples}{...}
{title:示例}

{phang}Windows{p_end}
{phang2}{cmd:. changeeol orig.txt newcopy.txt, eol(windows)}{p_end}

{phang}Unix{p_end}
{phang2}{cmd:. changeeol orig.txt newcopy.txt, eol(unix)}{p_end}

{phang}Mac{p_end}
{phang2}{cmd:. changeeol orig.txt newcopy.txt, eol(mac)}{p_end}

{phang}经典Mac{p_end}
{phang2}{cmd:. changeeol orig.txt newcopy.txt, eol(classicmac)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <changeeol.sthlp>}