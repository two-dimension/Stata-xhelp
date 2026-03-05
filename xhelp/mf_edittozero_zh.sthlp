{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] edittozero()" "mansection M-5 edittozero()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] edittoint()" "help mf_edittoint_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Manipulation" "help m4_manipulation_zh"}{...}
{viewerjumpto "Syntax" "mf_edittozero_zh##syntax"}{...}
{viewerjumpto "Description" "mf_edittozero_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_edittozero_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_edittozero_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_edittozero_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_edittozero_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_edittozero_zh##source"}
{help mf_edittozero:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-5] edittozero()} {hline 2}}编辑矩阵以修正舍入误差（零）{p_end}
{p2col:}({mansection M-5 edittozero():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:数值矩阵}
{cmd:edittozero(}{it:数值矩阵 Z}{cmd:,}
{it:实数标量 amt}{cmd:)}

{p 8 8 2}
{it:无效}{bind:         }
{cmd:_edittozero(}{it:数值矩阵 Z}{cmd:,}
{it:实数标量 amt}{cmd:)}


{p 8 8 2}
{it:数值矩阵} 
{cmd:edittozerotol(}{it:数值矩阵 Z}{cmd:,}
{it:实数标量 tol}{cmd:)}

{p 8 8 2}
{it:无效}{bind:         }
{cmd:_edittozerotol(}{it:数值矩阵 Z}{cmd:,}
{it:实数标量 tol}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
这些编辑函数将接近零的矩阵元素设置为零。
{cmd:edittozero(}{it:Z}{cmd:,} {it:amt}{cmd:)} 和 
{cmd:_edittozero(}{it:Z}{cmd:,} {it:amt}{cmd:)} 设定 

		{it:Z_ij} = 0          如果  |{it:Z_ij}| <= |{it:tol}|

{p 4 4 2}
对于 {it:Z} 实数，设定

		Re({it:Z_ij}) = 0      如果  |Re({it:Z_ij})| <= |{it:tol}|

		Im({it:Z_ij}) = 0      如果  |Im({it:Z_ij})| <= |{it:tol}|

{p 4 4 2}
对于 {it:Z} 复数，其中在这两种情况下 

		{it:tol} = {cmd:abs(}{it:amt}{cmd:)}{cmd:*epsilon(sum(abs(}{it:Z}{cmd:))/(rows(}{it:Z}{cmd:)*cols(}{it:Z}{cmd:)))}

{p 4 4 2}
{cmd:edittozero()} 保持 {it:Z} 不变并返回已编辑的矩阵。
{cmd:_edittozero()} 直接编辑 {it:Z}。

{p 4 4 2}
{cmd:edittozerotol(}{it:Z}{cmd:,} {it:tol}{cmd:)} 和
{cmd:_edittozerotol(}{it:Z}{cmd:,} {it:tol}{cmd:)} 做同样的事情，不同的是 
{it:tol} 是直接指定的。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 edittozero()Remarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注根据以下标题呈现：

	{help mf_edittozero##remarks1:背景}
	{help mf_edittozero##remarks2:复数值的处理}
	{help mf_edittozero##remarks3:建议}


{marker remarks1}{...}
{title:背景}

{p 4 4 2}
数值舍入误差导致某些数字应为零但却很小，因此有时需要将这些小数字重置为零。

{p 4 4 2}
问题在于识别这些小数字。1e-14算不算小呢？ 10,000算不算小呢？答案是，对于某些矩阵，1e-14可能不算小，因为矩阵中的大多数值都在1e-14左右，而小值是1e-28。而对于其他矩阵，10,000可能确实很小，因为大多数元素在1e+18左右。

{p 4 4 2}
{cmd:edittozero()} 尝试判断什么是小的。 {cmd:edittozerotol()} 将这个判断留给你。在 {cmd:edittozerotol(}{it:Z}{cmd:,} {it:tol}{cmd:)}, 你指定 {it:tol}，而 |{it:Z_ij}| <= {it:tol} 的元素将被设置为零。

{p 4 4 2}
然而，使用 {cmd:edittozero(}{it:Z}{cmd:,} {it:amt}{cmd:)}, 你指定 {it:amt}，然后 {it:tol} 将根据 {it:Z} 中元素的大小和 {it:amt} 的大小为你计算，使用的公式为

		{it:tol} = {it:amt} {cmd:* epsilon(} |{it:Z_ij}| 的平均值 {cmd:)}

{p 4 4 2}
{cmd:epsilon()} 指的是机器精度，而 
{cmd:epsilon(}{it:x}{cmd:)} 是返回单位为 {it:x} 的机器精度的函数：

		{cmd:epsilon(}{it:x}{cmd:)}  = |{it:x}|{cmd:*epsilon(1)}

{p 4 4 2}
而 {cmd:epsilon(1)} 在大多数计算机上约为 2.22e-16；请参阅 {bf:{help mf_epsilon_zh:[M-5] epsilon()}}。


{marker remarks2}{...}
{title:复数值的处理}

{p 4 4 2}
公式 

		{it:tol} = {it:amt} {cmd:* epsilon(} |{it:Z_ij}| 的平均值 {cmd:)}

{p 4 4 2}
同时适用于实数和复数。对于复数，|{it:Z_ij}| 是复数元素的模（长度）。

{p 4 4 2}
然而，而不是应用重置规则 

		{it:Z_ij} = 0          如果  |{it:Z_ij}| <= |{it:tol}|

{p 4 4 2}
如同在 {it:Z} 为实数时所做的那样，重置规则为 

		Re({it:Z_ij}) = 0      如果  |Re({it:Z_ij})| <= |{it:tol}|

		Im({it:Z_ij}) = 0      如果  |Im({it:Z_ij})| <= |{it:tol}|

{p 4 4 2}
第一条规则，即使对于复数来说，可能看起来更加吸引人，但是使用第二条规则的好处在于将接近纯实数或纯虚数的数字映射到纯实数或纯虚数的结果上。 


{marker remarks3}{...}
{title:建议}


{p 4 8 2}
1.
{cmd:edittozero(}{it:Z}{cmd:, 1)} 进行最小编辑。
小于 2.22e-16 乘以平均数的值将被设置为零。

{p 4 8 2}
2.
将 {cmd:edittozero(}{it:Z}{cmd:, 1000)} 编码通常是合理的，这会将小于 2.22e-13 乘以平均数的值设置为零。

{p 4 8 2}
3.
对于给定的计算，复数矩阵（具有非零虚部的矩阵）产生的舍入误差大于实数矩阵（即使以 {cmd:complex} 存储的零虚部矩阵）所产生的误差。这是因为，除了所有常见的舍入误差来源外，复杂值的乘法还涉及加法运算符，这引入了额外的舍入误差。因此，无论对于实数矩阵，{it:amt} 或 {it:tol} 的适当值是什么，对于复数矩阵而言，它的值更大。


{marker conformability}{...}
{title:兼容性}

    {cmd:edittozero(}{it:Z}{cmd:,} {it:amt}{cmd:)}:
		{it:Z}:  {it:r x c}
	      {it:amt}:  1 {it:x} 1
	   {it:result}:  {it:r x c}

    {cmd:_edittozero(}{it:Z}{cmd:,} {it:amt}{cmd:)}:
	{it:输入:}
		{it:Z}:  {it:r x c}
	      {it:amt}:  1 {it:x} 1
	{it:输出:}
		{it:Z}:  {it:r x c}

    {cmd:edittozerotol(}{it:Z}{cmd:,} {it:tol}{cmd:)}:
		{it:Z}:  {it:r x c}
	      {it:tol}:  1 {it:x} 1
	   {it:result}:  {it:r x c}

    {cmd:_edittozerotol(}{it:Z}{cmd:,} {it:tol}{cmd:)}:
	{it:输入:}
		{it:Z}:  {it:r x c}
	      {it:tol}:  1 {it:x} 1
	{it:输出:}
		{it:Z}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:edittozero(}{it:Z}{cmd:,} {it:amt}{cmd:)} 和 
{cmd:_edittozero(}{it:Z}{cmd:,} {it:amt}{cmd:)} 
保持标量不变，因为它们 
基于 |{it:Z_ij}| 的平均值计算可能的舍入误差。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view edittozero.mata, adopath asis:edittozero.mata},
{view _edittozero.mata, adopath asis:_edittozero.mata},
{view edittozerotol.mata, adopath asis:edittozerotol.mata},
{view _edittozerotol.mata, adopath asis:_edittozerotol.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_edittozero.sthlp>}