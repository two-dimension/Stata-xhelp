{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] adosubdir()" "mansection M-5 adosubdir()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] IO" "help m4_io_zh"}{...}
{viewerjumpto "语法" "mf_adosubdir_zh##syntax"}{...}
{viewerjumpto "描述" "mf_adosubdir_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_adosubdir_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_adosubdir_zh##remarks"}{...}
{viewerjumpto "一致性" "mf_adosubdir_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_adosubdir_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_adosubdir_zh##source"}
{help mf_adosubdir:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] adosubdir()} {hline 2}}确定文件的 ado 子目录
{p_end}
{p2col:}({mansection M-5 adosubdir():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:string scalar}{bind:   }
{cmd:adosubdir(}{it:string scalar {help filename_zh}}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:adosubdir(}{it:{help filename_zh}}{cmd:)} 返回 Stata 搜索 {it:filename} 的子目录。通常，子目录将仅为 {it:filename} 的首字母。然而，某些文件可能会因其扩展名产生不同的子目录。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 adosubdir()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:adosubdir("xyz.ado")} 返回 "{cmd:x}"，因为 Stata ado 文件位于其首字母命名的子目录中。

{p 4 4 2}
{cmd:adosubdir("xyz.style")} 返回 "{cmd:style}"，因为 Stata 样式文件位于名为 {cmd:style} 的子目录中。


{marker conformability}{...}
{title:一致性}

{p 4 4 2}
    {cmd:adosubdir(}{it:filename}{cmd:)}:
{p_end}
	 {it:filename}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:adosubdir()} 在文件类型未知时返回文件名的首字母，从而将未知文件类型视为 ado 文件。

{p 4 4 2}
{cmd:adosubdir()} 如果文件名对操作系统来说过长则会中止并报错；其他任何情况不会导致中止并报错。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_adosubdir.sthlp>}