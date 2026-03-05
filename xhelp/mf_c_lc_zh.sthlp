{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] c()" "mansection M-5 c()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Programming" "help m4_programming_zh"}{...}
{viewerjumpto "Syntax" "mf_c_lc_zh##syntax"}{...}
{viewerjumpto "Description" "mf_c_lc_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_c_lc_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_c_lc_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_c_lc_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_c_lc_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_c_lc_zh##source"}
{help mf_c_lc:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[M-5] c()} {hline 2}}访问 c() 值
{p_end}
{p2col:}({mansection M-5 c():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:scalar}
{cmd:c(}{it:string scalar name}{cmd:)}


{p 4 4 2}
返回的是一个实数或字符串标量，具体取决于 
{it:name} 的值。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:c(}{it:name}{cmd:)} 返回 Stata 的 
c 类值；请参见 {bf:{help creturn_zh:[P] creturn}}。

{p 4 4 2}
不要将 {cmd:c()} 与 {cmd:C()} 混淆，后者将实数参数转为复数；请参见 {bf:{help mf_c_zh:[M-5] C()}}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 c()Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
请参见 
{bf:{help creturn_zh:[P] creturn}} 或在 Stata 中输入 

	{cmd:. creturn list}

{p 4 4 2}
以查看 {cmd:c()} 中存储的内容。特别有用的 {cmd:c()} 值包括 

		{it:string} {cmd:c("current_date")}
		{it:string} {cmd:c("current_time")}
		{it:string} {cmd:c("os")}
		{it:string} {cmd:c("dirsep")}


{marker conformability}{...}
{title:相容性}

    {cmd:c(}{it:name}{cmd:)}:
	    {it:name}:  1 {it:x} 1
	   {it:result}: 1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:c(}{it:name}{cmd:)}
根据请求的特定 {cmd:c()} 值返回字符串或实数。如果 {it:name} 是无效名称或包含未定义的 {cmd:c()} 值的名称，则返回 ""。


{marker source}{...}
{title:源代码}

{p 4 4 2}
该函数内置。 
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_c_lc.sthlp>}