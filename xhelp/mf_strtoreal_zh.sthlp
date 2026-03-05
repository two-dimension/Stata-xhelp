{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] strtoreal()" "mansection M-5 strtoreal()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] strofreal()" "help mf_strofreal_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{viewerjumpto "Syntax" "mf_strtoreal_zh##syntax"}{...}
{viewerjumpto "Description" "mf_strtoreal_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_strtoreal_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_strtoreal_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_strtoreal_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_strtoreal_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_strtoreal_zh##source"}
{help mf_strtoreal:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] strtoreal()} {hline 2}}将字符串转换为实数
{p_end}
{p2col:}({mansection M-5 strtoreal():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real matrix}{bind: }
{cmd:strtoreal(}{it:string matrix S}{cmd:)}

{p 8 12 2}
{it:real scalar}
{cmd:_strtoreal(}{it:string matrix S}{cmd:,} 
{it:R}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:strtoreal(}{it:S}{cmd:)} 返回 {it:S} 转换为实数的结果。不能转换的 {it:S} 元素将返回 {cmd:.}（缺失值）。

{p 4 4 2}
{cmd:_strtoreal(}{it:S}{cmd:,} {it:R}{cmd:)} 
功能与上述相同——它将转换后的值返回到 {it:R} 中——并返回无法转换的元素数量。在这种情况下，{it:R} 的对应值包含 {cmd:.}（缺失值）。 


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 strtoreal()Remarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:strtoreal("1.5")} 返回 (数值) 1.5。  

{p 4 4 2}
{cmd:strtoreal("-2.5e+1")} 返回 (数值) -25。

{p 4 4 2}
{cmd:strtoreal("not a number")} 返回 (数值) {cmd:.}（缺失值）。  

{p 4 4 2}
通常情况下， 
{cmd:strtoreal(}{it:S}{cmd:)} 和 
{cmd:_strtoreal(}{it:S}{cmd:,} {it:R}{cmd:)} 
用于标量，但如果应用于向量或矩阵 {it:S}，将逐元素返回结果。

{p 4 4 2}
在进行转换时，前导和尾随空格被忽略：“1.5”和 {bind:" 1.5 "} 都转换为 (数值) 1.5，但 "1.5 kilometers" 转换为 {cmd:.}（缺失值）。使用 {cmd:strtoreal(tokens(}{it:S}{cmd:)[1])} 仅转换第一个以空格分隔的部分。

{p 4 4 2}
所有 Stata 数字格式都被正确理解，如 0、1、-2、1.5、1.5e+2、 
和 -1.0x+8，以及缺失值代码 {cmd:.}、{cmd:.a}、{cmd:.b}、...、{cmd:.z}。

{p 4 4 2}
因此，使用 {cmd:strtoreal(}{it:S}{cmd:)}, 
如果 {it:S} 的某个元素转换为 {cmd:.}（缺失值），你无法判断该元素是否有效并等于 "{cmd:.}" 或该元素无效并因此默认为 {cmd:.}（缺失值），例如 {it:S} 包含 "cat" 或 "dog" 或 "1.5 kilometers"。

{p 4 4 2}
当需要区分这些情况时，使用 
{cmd:_strtoreal(}{it:S}{cmd:,} {it:R}{cmd:)}。
转换结果返回到 {it:R}，该函数返回无效元素的数量。
如果 {cmd:_strtoreal()} 返回 0，则所有值都是有效的。


{marker conformability}{...}
{title:兼容性}

    {cmd:strtoreal(}{it:S}{cmd:)}:
	{it:输入:}
               {it:S}:  {it:r x c}
	{it:输出:}
          {it:结果}:  {it:r x c}

    {cmd:_strtoreal(}{it:S}{cmd:,} {it:R}{cmd:)}:
	{it:输入:}
               {it:S}:  {it:r x c}
	{it:输出:}
               {it:R}:  {it:r x c}
          {it:结果}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:strtoreal(}{it:S}{cmd:)}
在无法将 {it:S} 的元素转换为数字时返回缺失值。  

{p 4 4 2}
{cmd:_strtoreal(}{it:S}{cmd:,} {it:R}{cmd:)}
同样执行，但结果返回到 {it:R}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view strtoreal.mata, adopath asis:strtoreal.mata}; 
{cmd:_strtoreal()} 内置于系统。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_strtoreal.sthlp>}