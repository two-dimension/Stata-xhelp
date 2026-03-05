{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] invorder()" "mansection M-5 invorder()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-1] Permutation" "help m1_permutation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Manipulation" "help m4_manipulation_zh"}{...}
{viewerjumpto "Syntax" "mf_invorder_zh##syntax"}{...}
{viewerjumpto "Description" "mf_invorder_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_invorder_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_invorder_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_invorder_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_invorder_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_invorder_zh##source"}
{help mf_invorder:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] invorder()} {hline 2}}置换向量操作
{p_end}
{p2col:}({mansection M-5 invorder():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{it:real vector}
{cmd:invorder(}{it:real vector p}{cmd:)}

{p 8 16 2}
{it:real vector}
{cmd:revorder(}{it:real vector p}{cmd:)}


{p 4 8 2}
其中 {it:p} 被假定为
{help m6_glossary##permutation_vector:置换向量}。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:invorder(}{it:p}{cmd:)} 返回能够撤销 {it:p} 执行的置换的置换向量。

{p 4 4 2}
{cmd:revorder(}{it:p}{cmd:)} 返回 {it:p} 执行的置换的逆置换向量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 invorder()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
请参阅 {bf:{help m1_permutation_zh:[M-1] Permutation}} 以获取置换向量的描述。总结如下：

{p 8 12 2}
1.  置换向量 {it:p} 用于对矩阵 {it:X} 的行或列进行置换：{it:r} {it:x} {it:c}。

{p 12 12 2}
    如果 {it:p} 被用来对 {it:X} 的行进行置换，则通过 {it:Y} = {it:X}{cmd:[}{it:p}{cmd:,}{cmd:.]} 得到置换后的 {it:X}。

{p 12 12 2}
    如果 {it:p} 被用来对 {it:X} 的列进行置换，则通过 {it:Y} = {it:X}{cmd:[.,} {it:p}{cmd:]} 得到置换后的 {it:X}。

{p 8 12 2}
2.  如果 {it:p} 用于对 {it:X} 的行进行置换，则称其为行置换向量。行置换向量是 {it:r} {it:x} 1 列向量。

{p 8 12 2}
3.  如果 {it:p} 用于对 {it:X} 的列进行置换，则称其为列置换向量。列置换向量是 1 {it:x} {it:c} 行向量。

{p 8 12 2}
4.  行置换向量包含从 1 到 {it:r} 的整数的置换。

{p 8 12 2}
5.  列置换向量包含从 1 到 {it:c} 的整数的置换。

{p 4 4 2}
假设 {it:p} 是行置换向量，则 

		{it:Y} = {it:X}{cmd:[}{it:p}{cmd:,} {cmd:.]}

{p 4 4 2}
{cmd:invorder(}{it:p}{cmd:)} 返回撤销 {it:p} 的行置换向量：

		{it:X} = {it:Y}{cmd:[invorder(}{it:p}{cmd:),} {cmd:.]}

{p 4 4 2}
也就是说，使用
{bf:{help m1_permutation_zh:[M-1] Permutation}} 的矩阵符号， 

		{it:Y} = {it:P}{it:X}      意味着    {it:X} = {it:P}^(-1){it:Y}

{p 4 4 2}
如果 {it:p} 是与置换矩阵 {it:P} 相对应的置换向量，{cmd:invorder(}{it:p}{cmd:)} 是与置换矩阵 {it:P}^(-1) 相对应的置换向量。

{p 4 4 2}
{cmd:revorder(}{it:p}{cmd:)} 返回撤销 {it:p} 的顺序的置换向量。例如，假设行置换向量 {it:p} 将 {it:X} 的行置换，使得对角元素按升序排列。那么 
{cmd:revorder(}{it:p}{cmd:)} 将使得 {it:X} 的行置换，使得对角元素按降序排列。


{marker conformability}{...}
{title:相容性}


{p 4 4 2}
{cmd:invorder(}{it:p}{cmd:)},
{cmd:revorder(}{it:p}{cmd:)} :
{p_end}
		{it:p}:  {it:r} {it:x} 1  或  1 {it:x c}
	   {it:result}:  {it:r} {it:x} 1  或  1 {it:x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:invorder(}{it:p}{cmd:)} 和 
{cmd:revorder(}{it:p}{cmd:)} 
在 {it:p} 不是置换向量时可能会中止并产生错误或无意义的结果。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view invorder.mata, adopath asis:invorder.mata},
{view revorder.mata, adopath asis:revorder.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_invorder.sthlp>}