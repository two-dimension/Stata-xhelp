{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] sizeof()" "mansection M-5 sizeof()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Programming" "help m4_programming_zh"}{...}
{viewerjumpto "语法" "mf_sizeof_zh##syntax"}{...}
{viewerjumpto "描述" "mf_sizeof_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_sizeof_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_sizeof_zh##remarks"}{...}
{viewerjumpto "兼容性" "mf_sizeof_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_sizeof_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_sizeof_zh##source"}
{help mf_sizeof:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-5] sizeof()} {hline 2}}对象占用的字节数
{p_end}
{p2col:}({mansection M-5 sizeof():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real scalar}
{cmd:sizeof(}{it:transmorphic matrix A}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:sizeof(}{it:A}{cmd:)} 
返回 {it:A} 占用的字节数。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 sizeof()Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:sizeof(}{it:A}{cmd:)} 
返回的数字与 {cmd:mata describe} 所示的数字相同；请参见
{bf:{help mata_describe_zh:[M-3] mata describe}}。

{p 4 4 2}
一个 500 {it:x} 5 的实数矩阵消耗 20,000 字节：

	: {cmd:sizeof(mymatrix)}
	  20000

{p 4 4 2}
然而，一个 500 {it:x} 5 的视图矩阵仅消耗 24 字节：

	: {cmd:sizeof(myview)}
	  24

{p 4 4 2}
要获取一个函数占用的字节数，请传递一个解引用的函数指针：

	: {cmd:sizeof(*&myfcn())}
	  320


{marker conformability}{...}
{title:兼容性}

    {cmd:sizeof(}{it:A}{cmd:)}:
		{it:A}:  {it:r x c}
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:sizeof(}{it:A}{cmd:)} 返回的数字不包括任何开销，通常为 64 字节，但可以更少（在最近使用的标量情况下，可能为零）。

{p 4 4 2}
如果 {it:A} 是一个指针矩阵，返回的数字反映了存储 {it:A} 本身所需的内存量，不包括它的兄弟矩阵占用的内存。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_sizeof.sthlp>}