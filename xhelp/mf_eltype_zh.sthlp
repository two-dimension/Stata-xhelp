{smcl}
{* *! version 1.1.8  15may2018}{...}
{vieweralsosee "[M-5] eltype()" "mansection M-5 eltype()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] isreal()" "help mf_isreal_zh"}{...}
{vieweralsosee "[M-5] isview()" "help mf_isview_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "Syntax" "mf_eltype_zh##syntax"}{...}
{viewerjumpto "Description" "mf_eltype_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_eltype_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_eltype_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_eltype_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_eltype_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_eltype_zh##source"}
{help mf_eltype:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-5] eltype()} {hline 2}}元素类型、组织类型和对象类型名称
{p_end}
{p2col:}({mansection M-5 eltype():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:string scalar} {cmd:eltype(}{it:X}{cmd:)}

{p 8 8 2}
{it:string scalar} {cmd:orgtype(}{it:X}{cmd:)}

{p 8 8 2}
{it:string scalar} {cmd:classname(}{it:X}{cmd:)}

{p 8 8 2}
{it:string scalar} {cmd:structname(}{it:X}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:eltype()} 返回参数的当前 {it:eltype}。

{p 4 4 2}
{cmd:orgtype()} 返回参数的当前 {it:orgtype}。

{p 4 4 2}
{cmd:classname()} 返回 Mata 类标量的类名。

{p 4 4 2}
{cmd:structname()} 返回 Mata 结构标量的结构名。

{p 4 4 2}
请参阅 {bf:{help m6_glossary_zh:[M-6] 术语表}} 
以获取 {it:{help m6_glossary##type:eltype}} 和
{it:{help m6_glossary##type:orgtype}} 的定义。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 eltype()备注和示例:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
如果 {it:X} 是矩阵（语法 1），返回结果为

		{cmd:eltype(}{it:X}{cmd:)}               {cmd:orgtype(}{it:X}{cmd:)}
		{hline 40}
		{cmd:real}                    {cmd:scalar}
		{cmd:complex}                 {cmd:rowvector}
		{cmd:string}                  {cmd:colvector}
		{cmd:pointer}                 {cmd:matrix}
		{cmd:struct}
		{cmd:class}
		{hline 40}

{p 4 4 2}
返回的值反映了 {it:X} 的当前内容。
也就是说，{it:X} 
可能被声明为 {cmd:transmorphic} {cmd:matrix}，但在任何时刻，它包含某种内容，如果该内容为 5，返回的将是 {cmd:"real"} 和 {cmd:"scalar"}。

{p 4 4 2}
对于 {cmd:orgtype()}，如果对象当前为 
1 {it:x} 1，返回 {cmd:"scalar"}；如果为 
1 {it:x k}，且 {it:k}!=1，返回 {cmd:"rowvector"}；如果为 {it:k x} 1，且 {it:k}!=1，返回 {cmd:"colvector"}；否则返回 {cmd:"matrix"}（即 {it:r x c}，且 {it:r}!=1，{it:c}!=1）。

{p 4 4 2}
{it:X} 也可以是函数（语法 2）。返回结果为

		{cmd:eltype(*(&}{it:func}{cmd:()))}      {cmd:orgtype(*(&}{it:func}{cmd:()))}
		{hline 43}
		{cmd:transmorphic}            {cmd:matrix}
		{cmd:numeric}                 {cmd:vector}
		{cmd:real}                    {cmd:rowvector}
		{cmd:complex}                 {cmd:colvector}
		{cmd:string}                  {cmd:scalar}
		{cmd:pointer}                 {cmd:void}
		{cmd:struct}
		{cmd:structdef}
		{cmd:class}
		{cmd:classdef}
		{hline 43}

{p 4 4 2}
这些类型源自函数的声明。

{p 4 4 2}
附注：
{cmd:struct} 和 {cmd:structdef} 与结构有关；
请参阅 {bf:{help m2_struct_zh:[M-2] struct}}。 {cmd:structdef} 表示 
该函数不仅返回一个结构，而且也是定义该结构的例程。  {cmd:class} 和 {cmd:classdef} 与 Mata 类有关；请参阅 {bf:{help m2_class_zh:[M-2] class}}。  
{cmd:classdef} 表示该函数不仅返回一个类，而且也是定义该类的例程。

{p 4 4 2}
{cmd:classname()} 返回名称 {cmd:"cA"} 如果对象是类 cA
标量。 如果对象具有其他元素类型 
{cmd:class} 或组织类型其他于 {cmd:scalar}，则函数返回 {cmd:""}。

{p 4 4 2}
{cmd:structname()} 返回名称 {cmd:"sA"} 如果对象是结构 sA
标量。 如果对象具有其他元素类型 
{cmd:struct} 或组织类型其他于 {cmd:scalar}，则函数返回 {cmd:""}。
 

{marker conformability}{...}
{title:相容性}

{pstd}
    {cmd:eltype(}{it:X}{cmd:)}, {cmd:orgtype(}{it:X}{cmd:)},
    {cmd:classname(}{it:X}{cmd:)}, {cmd:structname(}{it:X}{cmd:)}:{p_end}
		{it:X}:  {it:r x c}
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_eltype.sthlp>}