{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] diag()" "mansection M-5 diag()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] _diag()" "help mf__diag_zh"}{...}
{vieweralsosee "[M-5] diagonal()" "help mf_diagonal_zh"}{...}
{vieweralsosee "[M-5] isdiagonal()" "help mf_isdiagonal_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Manipulation" "help m4_manipulation_zh"}{...}
{viewerjumpto "Syntax" "mf_diag_zh##syntax"}{...}
{viewerjumpto "Description" "mf_diag_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_diag_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_diag_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_diag_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_diag_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_diag_zh##source"}
{help mf_diag:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-5] diag()} {hline 2}}创建对角矩阵
{p_end}
{p2col:}({mansection M-5 diag():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:数值矩阵}
{cmd:diag(}{it:数值矩阵 Z}{cmd:)}

{p 8 12 2}
{it:数值矩阵}
{cmd:diag(}{it:数值向量 z}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:diag()} 创建对角矩阵。

{p 4 4 2}
{cmd:diag(}{it:Z}{cmd:)}, {it:Z} 为矩阵，提取 {it:Z} 的主对角线以创建新的矩阵。 {it:Z} 必须是方形。

{p 4 4 2}
{cmd:diag(}{it:z}{cmd:)}, {it:z} 为向量，创建一个新矩阵，其对角线的元素为 {it:z} 的元素。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 diag()备注和示例:备注和示例}

{pstd}
以上部分未包含在该帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
不要将 {cmd:diag()} 与其功能逆操作 {cmd:diagonal()} 混淆；见 
{bf:{help mf_diagonal_zh:[M-5] diagonal()}}。
{cmd:diag()} 从向量（或矩阵）中创建矩阵； 
{cmd:diagonal()} 将矩阵的对角线提取到向量中。

{p 4 4 2}
应避免使用 {cmd:diag()}，因为这会浪费内存。
{help m2_op_colon_zh:冒号运算符} 允许您直接使用向量：

		所需计算         等价
		{hline 45}
		{cmd:diag(}{it:v}{cmd:)*}{it:X}, 
		     {it:v} 为列              {it:v}{cmd::*}{it:X}
		     {it:v} 为行               {it:v}{bf:'}{cmd::*}{it:X}
		     {it:v} 为矩阵            {cmd:diagonal(}{it:v}{cmd:):*}{it:X}

	        {it:X}{cmd:*diag(}{it:v}{cmd:)}
		     {it:v} 为列              {it:X}{cmd::*}{it:v}{bf:'}
		     {it:v} 为行               {it:X}{cmd::*}{it:v}
		     {it:v} 为矩阵            {it:X}{cmd::*diagonal(}{it:v}){bf:'}
		{hline 45}

{p 4 4 2}
在上述表中，假设 {it:v} 为实数。如果 {it:v} 可能是复数，则必须将出现的转置运算符更改为
{cmd:transposeonly()} 调用，因为我们不想要共轭。例如，{it:v}{bf:'}{cmd::*}{it:X} 将变为
{cmd:transposeonly(}{it:v}{cmd:):*}{it:X}。


{marker conformability}{...}
{title:相容性}

    {cmd:diag(}{it:Z}{cmd:)}:
		{it:Z}:  {it:m x n}
	   {it:result}:  min({it:m},{it:n}) {it:x} min({it:m},{it:n})

    {cmd:diag(}{it:z}{cmd:)}:
		{it:z}:  {it:1 x n}  或  {it:n x 1}
	   {it:result}:  {it:n x n}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view diag.mata, adopath asis:diag.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_diag.sthlp>}