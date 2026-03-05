{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] det()" "mansection M-5 det()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] lud()" "help mf_lud_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] 矩阵" "help m4_matrix_zh"}{...}
{viewerjumpto "语法" "mf_det_zh##syntax"}{...}
{viewerjumpto "描述" "mf_det_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_det_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_det_zh##remarks"}{...}
{viewerjumpto "可兼容性" "mf_det_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_det_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_det_zh##source"}
{help mf_det:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[M-5] det()} {hline 2}}矩阵的行列式
{p_end}
{p2col:}({mansection M-5 det():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:数值标量} 
{cmd:det(}{it:数值矩阵 A}{cmd:)}

{p 8 12 2}
{it:数值标量} 
{cmd:dettriangular(}{it:数值矩阵 A}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:det(}{it:A}{cmd:)} 返回 {it:A} 的行列式。

{p 4 4 2}
{cmd:dettriangular(}{it:A}{cmd:)} 返回 {it:A} 的行列式，将 {it:A} 视为三角形矩阵（即使它不是）。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 det()备注和示例:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
行列式的计算是通过获得 {it:A} 的 LU 分解，然后计算 {it:U} 的行列式:

		det({it:A}) = det({it:PLU})
		       = det({it:P})*det({it:L})*det({it:U})
		       = (+/-1)*1*det({it:U})
		       = +/-det({it:U})

{p 4 4 2}
由于 {it:U} 是（上）三角形的，det({it:U}) 只是其对角元素的乘积。
请参阅 {bf:{help mf_lud_zh:[M-5] lud()}}。


{marker conformability}{...}
{title:可兼容性}

    {cmd:det(}{it:A}{cmd:)}, {cmd:dettriangular(}{it:A}{cmd:)}:
		{it:A}:  {it:n x n}
	   {it:结果}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
    {cmd:det(}{it:A}{cmd:)} 和 
    {cmd:dettriangular(}{it:A}{cmd:)} 
    如果 {it:A} 是 0 {it:x} 0，则返回 1。

{p 4 4 2}
    如果 {it:A} 不是方阵，{cmd:det(}{it:A}{cmd:)} 将中止并报错，并且如果 {it:A} 包含缺失值，则返回缺失值。
    
{p 4 4 2}
    如果 {it:A} 不是方阵，{cmd:dettriangular(}{it:A}{cmd:)} 将中止并报错，如果 {it:A} 的对角线上的任何元素缺失，则返回缺失值。

{p 4 4 2}
    如果行列式超过 8.99e+307，{cmd:det(}{it:A}{cmd:)} 和 {cmd:dettriangular(}{it:A}{cmd:)} 都将返回缺失值。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view det.mata, adopath asis:det.mata},
{view dettriangular.mata, adopath asis:dettriangular.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_det.sthlp>}