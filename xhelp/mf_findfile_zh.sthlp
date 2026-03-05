{smcl}
{* *! version 1.3.3  15may2018}{...}
{vieweralsosee "[M-5] findfile()" "mansection M-5 findfile()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] IO" "help m4_io_zh"}{...}
{viewerjumpto "Syntax" "mf_findfile_zh##syntax"}{...}
{viewerjumpto "Description" "mf_findfile_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_findfile_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_findfile_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_findfile_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_findfile_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_findfile_zh##source"}
{help mf_findfile:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] findfile()} {hline 2}}查找文件
{p_end}
{p2col:}({mansection M-5 findfile():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:string scalar}
{cmd:findfile(}{it:string scalar fn}{cmd:,}
{it:string scalar} {it:dirlist}{cmd:)}

{p 8 12 2}
{it:string scalar}
{cmd:findfile(}{it:string scalar fn}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:findfile(}{it:fn}{cmd:,} {it:dirlist}{cmd:)} 在以分号分隔的目录列表 {it:dirlist}中查找文件 {it:fn}，如果找到，返回完整的路径和文件名。如果未找到文件，{cmd:findfile()} 返回 ""。

{p 4 4 2}
{cmd:findfile(}{it:fn}{cmd:)} 等价于 {cmd:findfile(}{it:fn}{cmd:, c("adopath"))}。带有一个参数的 {cmd:findfile()} 在官方 Stata ado 路径中查找文件 {it:fn}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 findfile()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
例如，

	{cmd:findfile("kappa.ado")}

{p 4 4 2}
可能返回 "{cmd:C:\Program Files\Stata16\ado\base\k\kappa.ado}"。


{marker conformability}{...}
{title:兼容性}

    {cmd:findfile(}{it:fn}{cmd:,} {it:dirlist}{cmd:)}:
	      {it:fn}:  1 {it:x} 1
	 {it:dirlist}:  1 {it:x} 1  (可选)
	   {it:result}: 1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:findfile(}{it:fn}{cmd:,} {it:dirlist}{cmd:)} 和 
{cmd:findfile(}{it:fn}{cmd:)} 
如果未找到文件，则返回 ""。如果找到文件，返回的完整路径和文件名在 {cmd:findfile()} 完成时确保存在且可读。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view findfile.mata, adopath asis:findfile.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_findfile.sthlp>}