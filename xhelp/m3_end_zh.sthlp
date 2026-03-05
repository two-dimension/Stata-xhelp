{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-3] end" "mansection M-3 end"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] Intro" "help m3_intro_zh"}{...}
{viewerjumpto "Syntax" "m3_end_zh##syntax"}{...}
{viewerjumpto "Description" "m3_end_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m3_end_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m3_end_zh##remarks"}
{help m3_end:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[M-3] end} {hline 2}}退出 Mata 并返回 Stata
{p_end}
{p2col:}({mansection M-3 end:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
	: {cmd:end}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:end} 退出 Mata 并返回 Stata。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection M-3 endRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
当您从 Mata 退出返回 Stata 时，Mata 不会清除自己；因此，如果您稍后再次返回 Mata，您将回到您之前的位置。        
请参见 {bf:{help m3_mata_zh:[M-3] mata}}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m3_end.sthlp>}