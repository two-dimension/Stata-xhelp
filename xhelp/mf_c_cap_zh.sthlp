{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] C()" "mansection M-5 C()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] Re()" "help mf_re_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Scalar" "help m4_scalar_zh"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "Syntax" "mf_c_cap_zh##syntax"}{...}
{viewerjumpto "Description" "mf_c_cap_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_c_cap_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_c_cap_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_c_cap_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_c_cap_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_c_cap_zh##source"}
{help mf_c_cap:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[M-5] C()} {hline 2}}生成复数
{p_end}
{p2col:}({mansection M-5 C():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:复数矩阵}{bind: }
{cmd:C(}{it:数值矩阵 A}{cmd:)}

{p 8 12 2}
{it:复数矩阵}{bind: }
{cmd:C(}{it:实数矩阵 R}{cmd:,}
{it:实数矩阵 I}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:C(}{it:A}{cmd:)} 将 {it:A} 转换为复数。
{cmd:C(}{it:A}{cmd:)} 如果 {it:A} 已经是复数，则返回 {it:A}。
如果 {it:A} 是实数，
{cmd:C(}{it:A}{cmd:)} 返回 {it:A}+0i -- 将 {it:A} 转换为复数。
因此，使用 {cmd:C(}{it:A}{cmd:)} 的方式确保
矩阵被视为复数。

{p 4 4 2}
{cmd:C(}{it:R}{cmd:,} {it:I}{cmd:)} 
返回复数矩阵
{it:R}+{it:I}i 
并且比替代方法
{bind:{it:R} {cmd:+} {it:I}{cmd::*1i}}更快。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 C()Remarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
许多 Mata 的函数是重载的，这意味着它们在给定实数参数时返回实数，而在给定复数参数时返回复数。
在提供实数参数时，如果结果不能表示为实数，则返回缺失值。
因此 {cmd:sqrt(-1)} 的结果为缺失，而 {cmd:sqrt(-1+0i)} 的结果为 1i。

{p 4 4 2}
{cmd:C()} 是将可能为实数的参数转换为复数的快速方法。
你可以编写

		{cmd:result = sqrt(C(}{it:x}{cmd:))}

{p 4 4 2}
如果 {it:x} 已经是复数，{cmd:C()} 不会执行任何操作；如果 {it:x} 是
实数，{cmd:C(}{it:x}{cmd:)} 返回相应的复数。

{p 4 4 2}
{cmd:C()} 的两个参数版本不常使用。
{cmd:C(}{it:R}{cmd:,} {it:I}{cmd:)} 在字面上等同于
{it:R} {cmd::+} {it:I}{cmd:*1i}，这意味着 {it:R} 和 {it:I} 只需满足 c-兼容性。
例如，{cmd:C(1, (1,2,3))}
的结果为 (1+1i, 1+2i, 1+3i)。


{marker conformability}{...}
{title:兼容性}

    {cmd:C(}{it:A}{cmd:)}:
		{it:A}:  {it:r x c}
	   {it:result}:  {it:r x c}

    {cmd:C(}{it:R}{cmd:,} {it:I}{cmd:)}:
		{it:R}:  {it:r1 x c1}
		{it:I}:  {it:r2 x c2}, {it:R} 和 {it:I} 需要 c-兼容
	   {it:result}:  max({it:r1},{it:r2}) {it:x} max({it:c1},{it:c2})



{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:C(}{it:Z}{cmd:)}, 如果 {it:Z} 是复数，则字面返回 {it:Z} 而不是 {it:Z} 的副本。这使得 
对复数参数应用 {cmd:C()} 的执行速度变得极快。

{p 4 4 2}
在 
{cmd:C(}{it:R}{cmd:,} {it:I}{cmd:)},
结果的 {it:i},{it:j} 元素将缺失，只要
{it:R}{cmd:[}{it:i}{cmd:,}{it:j}{cmd:]} 或 
{it:I}{cmd:[}{it:i}{cmd:,}{it:j}{cmd:]} 为缺失。
例如，{cmd:C((1,3,.), (.,2,4))} 的结果为 (., 3+2i, .)。
如果 
{it:R}{cmd:[}{it:i}{cmd:,}{it:j}{cmd:]} 和 
{it:I}{cmd:[}{it:i}{cmd:,}{it:j}{cmd:]} 均为缺失，则 
{it:R}{cmd:[}{it:i}{cmd:,}{it:j}{cmd:]} 
值将被使用；例如，{cmd:C(.a, .b)} 的结果为 {cmd:.a}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
该函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_c_cap.sthlp>}