{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] displayas()" "mansection M-5 displayas()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] display()" "help mf_display_zh"}{...}
{vieweralsosee "[M-5] printf()" "help mf_printf_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] IO" "help m4_io_zh"}{...}
{viewerjumpto "Syntax" "mf_displayas_zh##syntax"}{...}
{viewerjumpto "Description" "mf_displayas_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_displayas_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_displayas_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_displayas_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_displayas_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_displayas_zh##source"}
{help mf_displayas:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] displayas()} {hline 2}}设置显示级别{p_end}
{p2col:}({mansection M-5 displayas():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void} {cmd:displayas(}{it:string scalar level}{cmd:)}

{p 4 4 2}
其中 {it:level} 可以是 

		{it:level}        最小缩写
		{hline 33}
		{cmd:"result"}          {cmd:"res"}
        	{cmd:"text"}            {cmd:"txt"}
        	{cmd:"error"}           {cmd:"err"}
        	{cmd:"input"}           {cmd:"inp"}
		{hline 33}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:displayas(}{it:level}{cmd:)} 设置随后的输出如何显示。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 displayas()Remarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
如果此函数从未被调用，则输出级别为 {cmd:result}。
假设 Mata 是在所有输出（除了错误消息）被抑制的情况下调用的（例如，{help quietly_zh} 在 {cmd:mata} 命令前或调用您的 Mata 函数的 ado 文件前被编码）。如果输出被抑制，那么 Mata 输出也会被抑制，包括您的程序生成的任何输出。假设您在程序中达到希望输出错误消息的点。您编码了

	{cmd:printf("{c -(}err:你犯了一个错误{c )-}\n")}

{p 4 4 2}
尽管您编码了 {help smcl_zh:SMCL} 指令 {cmd:{c -(}err:{c )-}}，错误消息仍然会被抑制。SMCL 决定如何渲染某些内容，而不是是否渲染。您需要编码的是

	{cmd:displayas("err")}
	{cmd:printf("{c -(}err:你犯了一个错误{c )-}\n")}

{p 4 4 2}
实际上，您可以编码 

	{cmd:displayas("err")}
	{cmd:printf("你犯了一个错误\n")}

{p 4 4 2}
因为，除了设置输出级别（告诉 Stata 所有后续输出的指定级别），它还将当前 SMCL 渲染设置为适合该类型输出的内容。
因此，如果您编码 

	{cmd:displayas("err")}
	{cmd:printf("{c -(}res:你犯了一个错误{c )-}\n")}

{p 4 4 2}
文本 "你犯了一个错误" 将以结果的样式出现，尽管任何试图抑制输出的 {cmd:quietly} 都会被忽略。编码上述内容被视为不好的风格。


{marker conformability}{...}
{title:适应性}

    {cmd:displayas(}{it:level}{cmd:)}:
	    {it:level}:  1 {it:x} 1
	   {it:result}:  {it:void}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
    {cmd:displayas(}{it:level}{cmd:)} 如果 {it:level} 包含不合适的字符串则会中止并报错。


{marker source}{...}
{title:源代码}

{p 4 4 2}
该函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_displayas.sthlp>}