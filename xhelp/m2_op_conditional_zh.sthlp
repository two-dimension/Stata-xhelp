{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-2] op_conditional" "mansection M-2 op_conditional"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] exp" "help m2_exp_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "Syntax" "m2_op_conditional_zh##syntax"}{...}
{viewerjumpto "Description" "m2_op_conditional_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m2_op_conditional_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m2_op_conditional_zh##remarks"}{...}
{viewerjumpto "Conformability" "m2_op_conditional_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "m2_op_conditional_zh##diagnostics"}
{help m2_op_conditional:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[M-2] op_conditional} {hline 2}}条件运算符
{p_end}
{p2col:}({mansection M-2 op_conditional:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{it:a} {cmd:?} {it:b} : {it:c}


{p 4 4 2}
其中 {it:a} 必须计算为一个实标量，而 {it:b} 和 {it:c} 可以是任何类型。


{marker description}{...}
{title:描述}

{p 4 4 2}
条件运算符返回 {it:b} 如果 {it:a} 为真（{it:a} 不等于 0），否则返回 {it:c}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-2 op_conditionalRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
条件运算符

	{cmd:dof = (k==0 ? n-1 : n-k)}

{p 4 4 2}
比 {cmd:if}-{cmd:else} 替代方案更紧凑

	{cmd:if (k==0) dof = n-1}
	{cmd:else      dof = n-k}

{p 4 4 2} 并且可以作为表达式的一部分使用：

	{cmd:mse = ess/(k==0 ? n-1 : n-k)}


{marker conformability}{...}
{title:适配性}

    {it:a} {cmd:?} {it:b} : {it:c}:
		{it:a}:  1 {it:x} 1
		{it:b}:  {it:r1 x c1}
		{it:c}:  {it:r2 x c2}
	   {it:result}:  {it:r1 x c1}  或  {it:r2 x c2}
	

{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
在 {it:a} {cmd:?} {it:b} : {it:c} 中，仅评估必要的部分：
{it:a} 和 {it:b} 如果 {it:a} 为真，或者 {it:a} 和 {it:c} 如果 {it:a} 为假。
然而，{cmd:++} 和 {cmd:--} 运算符总是被评估：

	{cmd:(}{it:k}{cmd:==0 ?} {it:i}{cmd:++ :} {it:j}{cmd:++)}

{p 4 4 2}
无论 {it:k} 的值如何，都增加 {it:i} 和 {it:j}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_op_conditional.sthlp>}