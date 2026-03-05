{smcl}
{* *! version 1.2.6  15may2018}{...}
{vieweralsosee "[M-5] cat()" "mansection M-5 cat()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] IO" "help m4_io_zh"}{...}
{viewerjumpto "语法" "mf_cat_zh##syntax"}{...}
{viewerjumpto "描述" "mf_cat_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_cat_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_cat_zh##remarks"}{...}
{viewerjumpto "符合性" "mf_cat_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_cat_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_cat_zh##source"}
{help mf_cat:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[M-5] cat()} {hline 2}}将文件加载到字符串矩阵中
{p_end}
{p2col:}({mansection M-5 cat():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:string colvector}
{cmd:cat(}{it:string scalar {help filename_zh}} [{cmd:,}
{it:real scalar line1} [{cmd:,}
{it:real scalar line2}]]{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:cat(}{it:{help filename_zh}}{cmd:)} 返回一个包含文本文件 {it:filename} 中行的列向量。

{p 4 4 2}
{cmd:cat(}{it:filename}{cmd:,} {it:line1}{cmd:)} 返回一个包含文本文件 {it:filename} 中从行号 {it:line1} 开始的行的列向量。

{p 4 4 2}
{cmd:cat(}{it:filename}{cmd:,} {it:line1}{cmd:,} {it:line2}{cmd:)} 返回一个包含文本文件 {it:filename} 中从行号 {it:line1} 到行号 {it:line2} 的行的列向量。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 cat()Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:cat(}{it:filename}{cmd:)} 在行末移除换行符。


{marker conformability}{...}
{title:符合性}

    {cmd:cat(}{it:filename}{cmd:,} {it:line1}{cmd:,} {it:line2}{cmd:)}:
	 {it:filename}:  1 {it:x} 1
	    {it:line1}:  1 {it:x} 1        (可选)
	    {it:line2}:  1 {it:x} 1        (可选)
	   {it:result}:  {it:r x} 1, {it:r}>=0


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:cat(}{it:filename}{cmd:)} 如果 {it:filename} 不存在，则中止并报告错误。

{p 4 4 2}
{cmd:cat()} 如果 {it:filename} 的大小为 0 字节，则返回 0 {it:x} 1 结果。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view cat.mata, adopath asis:cat.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_cat.sthlp>}