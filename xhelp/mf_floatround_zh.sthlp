{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] floatround()" "mansection M-5 floatround()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "Syntax" "mf_floatround_zh##syntax"}{...}
{viewerjumpto "Description" "mf_floatround_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_floatround_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_floatround_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_floatround_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_floatround_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_floatround_zh##source"}
{help mf_floatround:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-5] floatround()} {hline 2}}以浮点精度进行四舍五入
{p_end}
{p2col:}({mansection M-5 floatround():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数矩阵}
{cmd:floatround(}{it:实数矩阵 x}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:floatround(}{it:x}{cmd:)} 返回 
{it:x} 按照 IEEE 4 字节实数（浮点）精度进行四舍五入。
{cmd:floatround()} 是 Stata 的 {helpb float()} 函数的逐元素等效函数。此 Mata 函数无法被命名为 {cmd:float()}，因为 {cmd:float} 这个词在 Mata 中是保留字。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 floatround()Remarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

        : {cmd:printf("  %21x\n", .1)}
           +1.999999999999aX-004
 
        : {cmd:printf("  %21x\n", floatround(.1))}
           +1.99999a0000000X-004


{marker conformability}{...}
{title:相容性}

    {cmd:floatround(}{it:x}{cmd:)}:
		{it:x}:  {it:r x c}
	   {it:result}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:floatround(}{it:x}{cmd:)}
如果 
{it:x} < -1.fffffeX+7e
（大约 -1.70141173319e+38）
或 
{it:x} > 1.fffffeX+7e
（大约 1.70141173319e+38），
将返回缺失值（{cmd:.}）。

{p 4 4 2}
与大多数函数相比，
{cmd:floatround(}{it:x}{cmd:)}
如果 {it:x} 包含缺失值，则返回与 {it:x} 相同类型的缺失值；
如果 {it:x}=={cmd:.}，则为 {cmd:.}， 
如果 {it:x}=={cmd:.a}，则为 {cmd:.a}， 
如果 {it:x}=={cmd:.b}，则为 {cmd:.b}，等等，
如果 {it:x}=={cmd:.z}，则为 {cmd:.z}。 


{marker source}{...}
{title:源代码}

{p 4 4 2}
功能是内建的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_floatround.sthlp>}