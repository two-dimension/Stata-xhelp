{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] valofexternal()" "mansection M-5 valofexternal()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] findexternal()" "help mf_findexternal_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Programming" "help m4_programming_zh"}{...}
{viewerjumpto "Syntax" "mf_valofexternal_zh##syntax"}{...}
{viewerjumpto "Description" "mf_valofexternal_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_valofexternal_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_valofexternal_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_valofexternal_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_valofexternal_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_valofexternal_zh##source"}
{help mf_valofexternal:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[M-5] valofexternal()} {hline 2}}获取外部全局变量的值
{p_end}
{p2col:}({mansection M-5 valofexternal():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:变异矩阵}
{cmd:valofexternal(}{it:字符串标量名称}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:valofexternal(}{it:名称}{cmd:)} 返回由 {it:名称} 指定的外部全局矩阵、向量或标量的内容；如果未找到外部全局，则返回 {helpb mf_j##void_matrices:J(0,0,.)}。

{p 4 4 2}
另请参阅 {it:{help m2_declarations##remarks10:链接到外部全局}} 在 
{bf:{help m2_declarations_zh:[M-2] 声明}} 中。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 valofexternal()备注和示例:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
另请参阅 {bf:{help mf_findexternal_zh:[M-5] findexternal()}}。与返回外部全局的指针不同，{cmd:findexternal()}，{cmd:valofexternal()} 返回外部全局的内容。当外部全局包含标量时，这非常有用：

	{cmd:tol = valofexternal("tolerance")}
	{cmd:if (tol==J(0,0,.)) tol = 1e-6}

{p 4 4 2}
使用 {cmd:findexternal()}，一个替代方案可以是

	{cmd}if ((p = findexternal("tolerance"))==NULL) tol = 1e-6
	else tol = *p{txt}

{p 4 4 2}
出于效率考虑，应避免在非标量对象上使用 {cmd:valofexternal()}；请参阅 {bf:{help mf_findexternal_zh:[M-5] findexternal()}}。


{marker conformability}{...}
{title:兼容性}

    {cmd:valofexternal(}{it:名称}{cmd:)}:
	     {it:名称}:  1 {it:x} 1
	   {it:结果}:  {it:r x c}  或  0 {it:x} 0 如果未找到


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果 {it:名称} 包含无效名称，则 {cmd:valofexternal()} 会出现错误并中止。

{p 4 4 2}
如果 {it:名称} 不存在，则 {cmd:valofexternal(}{it:名称}{cmd:)} 返回 {cmd:J(0,0,.)}。


{marker source}{...}
{title:源代码}

{pstd}函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_valofexternal.sthlp>}