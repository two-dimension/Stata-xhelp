{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] edittoint()" "mansection M-5 edittoint()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] edittozero()" "help mf_edittozero_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Manipulation" "help m4_manipulation_zh"}{...}
{viewerjumpto "语法" "mf_edittoint_zh##syntax"}{...}
{viewerjumpto "描述" "mf_edittoint_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_edittoint_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_edittoint_zh##remarks"}{...}
{viewerjumpto "兼容性" "mf_edittoint_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_edittoint_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_edittoint_zh##source"}
{help mf_edittoint:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] edittoint()} {hline 2}}编辑矩阵以修正舍入误差（整数）
{p_end}
{p2col:}({mansection M-5 edittoint():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:数字矩阵}
{cmd:edittoint(}{it:数字矩阵 Z}{cmd:,}
{it:实数标量 amt}{cmd:)}

{p 8 8 2}
{it:无返回值}{bind:         }
{cmd:_edittoint(}{it:数字矩阵 Z}{cmd:,}
{it:实数标量 amt}{cmd:)}


{p 8 8 2}
{it:数字矩阵} 
{cmd:edittointtol(}{it:数字矩阵 Z}{cmd:,}
{it:实数标量 tol}{cmd:)}

{p 8 8 2}
{it:无返回值}{bind:         }
{cmd:_edittointtol(}{it:数字矩阵 Z}{cmd:,}
{it:实数标量 tol}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
这些编辑函数将矩阵的元素设置为接近整数的整数。

{p 4 4 2}
{cmd:edittoint(}{it:Z}{cmd:,} {it:amt}{cmd:)} 和 
{cmd:_edittoint(}{it:Z}{cmd:,} {it:amt}{cmd:)} 将 

		{it:Z_ij} = {cmd:round(}{it:Z_ij}{cmd:)}        如果  |{it:Z_ij}-{cmd:round(}Z_ij{cmd:)}| <= |{it:tol}|

{p 4 4 2}
对于 {it:Z} 实数并且设置

	    Re({it:Z_ij}) = {cmd:round(}Re(Z_ij){cmd:)}  如果 |Re({it:Z_ij})-{cmd:round(}Re(Z_ij){cmd:)}| <= |{it:tol}|

	    Im({it:Z_ij}) = {cmd:round(}Im(Z_ij){cmd:)}  如果 |Im({it:Z_ij})-{cmd:round(}Im(Z_ij){cmd:)}| <= |{it:tol}|

{p 4 4 2}
对于 {it:Z} 复数，在这两种情况下 

	    {it:tol} = {cmd:abs(}{it:amt}{cmd:)}{cmd:*epsilon(sum(abs(}{it:Z}{cmd:))/(rows(}{it:Z}{cmd:)*cols(}{it:Z}{cmd:)))}

{p 4 4 2}
{cmd:edittoint()} 保持 {it:Z} 不变并返回编辑后的矩阵。
{cmd:_edittoint()} 就地编辑 {it:Z}。

{p 4 4 2}
{cmd:edittointtol(}{it:Z}{cmd:,} {it:tol}{cmd:)} 和
{cmd:_edittointtol(}{it:Z}{cmd:,} {it:tol}{cmd:)} 进行相同的操作，只是 
{it:tol} 被直接指定。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 edittoint()Remarksandexamples:备注和例子}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
这些函数对应于在 
{bf:{help mf_edittozero_zh:[M-5] edittozero()}} 中记录的 {cmd:edittozero()} 函数，不同之处在于它们不仅限于将接近零的值重置为零，而是将接近整数的值重置为整数。

{p 4 4 2}
请参见 {bf:{help mf_edittozero_zh:[M-5] edittozero()}}。
虽然建议使用那里记录的函数，但这里记录的函数一般不建议使用。尽管在实际问题中常常出现零，因此有理由怀疑小数会因为舍入误差而趋近于零，但整数的出现则较为少见。

{p 4 4 2}
如果你有理由相信整数值是可能的，那么请毫不犹豫地使用这些函数。


{marker conformability}{...}
{title:兼容性}

    {cmd:edittoint(}{it:Z}{cmd:,} {it:amt}{cmd:)}:
		{it:Z}:  {it:r x c}
	      {it:amt}:  1 {it:x} 1
	   {it:result}:  {it:r x c}

    {cmd:_edittoint(}{it:Z}{cmd:,} {it:amt}{cmd:)}:
	{it:输入:}
		{it:Z}:  {it:r x c}
	      {it:amt}:  1 {it:x} 1
	{it:输出:}
		{it:Z}:  {it:r x c}

    {cmd:edittointtol(}{it:Z}{cmd:,} {it:tol}{cmd:)}:
		{it:Z}:  {it:r x c}
	      {it:tol}:  1 {it:x} 1
	   {it:result}:  {it:r x c}

    {cmd:_edittointtol(}{it:Z}{cmd:,} {it:tol}{cmd:)}:
	{it:输入:}
		{it:Z}:  {it:r x c}
	      {it:tol}:  1 {it:x} 1
	{it:输出:}
		{it:Z}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view edittoint.mata, adopath asis:edittoint.mata},
{view _edittoint.mata, adopath asis:_edittoint.mata},
{view edittointtol.mata, adopath asis:edittointtol.mata},
{view _edittointtol.mata, adopath asis:_edittointtol.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_edittoint.sthlp>}