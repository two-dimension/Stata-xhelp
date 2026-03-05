{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] spline3()" "mansection M-5 spline3()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Mathematical" "help m4_mathematical_zh"}{...}
{viewerjumpto "Syntax" "mf_spline3_zh##syntax"}{...}
{viewerjumpto "Description" "mf_spline3_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_spline3_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_spline3_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_spline3_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_spline3_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_spline3_zh##source"}
{help mf_spline3:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] spline3()} {hline 2}}三次样条插值
{p_end}
{p2col:}({mansection M-5 spline3():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数矩阵}{bind:    }
{cmd:spline3(}{it:实数向量 x}{cmd:,} 
{it:实数向量 y}{cmd:)}

{p 8 12 2}
{it:实数向量}
{cmd:spline3eval(}{it:实数矩阵 spline_info}{cmd:,}
{it:实数向量 x}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:spline3(}{it:x}{cmd:,} {it:y}{cmd:)}
返回三次自然样条 S({it:x}) 的系数。
{it:x} 的元素必须严格单调递增。

{p 4 4 2}
{cmd:spline3eval(}{it:spline_info}{cmd:,} {it:x}{cmd:)} 
使用 {cmd:spline3()} 返回的信息来评估并返回在横坐标 {it:x} 处的样条值。 
如果结果的元素超出样条范围，则设置为缺失值。假定 {it:x} 单调递增。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 spline3()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:spline3()} 和 {cmd:spline3eval()}是 

	算法 CUBNATSPLINE, 472-P 5-0
	《CACM 选集中的算法》
	自然样条插值程序 [E1]
	约翰·G·赫里奥特，斯坦福大学计算机科学系。
	克里斯蒂安·H·莱因施，慕尼黑工业大学数学研究所，德国。

{p 4 4 2}
对于 {it:xx} 在 [{it:x}_{it:i}, {it:x}_[{it:i}+1])：

		S({it:xx}) = {c -(}({it:d}_{it:i}*{it:t} + {it:c}_{it:i})*{it:t} + {it:b}_{it:i}{c )-}*{it:t} + {it:y}_{it:i}

{p 4 4 2}
其中 {it:t} = {it:xx} - {it:x}_{it:i}。
{cmd:spline3()} 返回 
({it:b}, {it:c}, {it:d}, {it:x}, {it:y})
或者，如果 x 和 y 是行向量，则返回 
({it:b}, {it:c}, {it:d}, {it:x}{bf:'}, {it:y}{bf:'}).


{marker conformability}{...}
{title:兼容性}

    {cmd:spline3(}{it:x}{cmd:,} {it:y}{cmd:)}:
		{it:x}:  {it:n x} 1  或  1 {it:x n}
		{it:y}:  {it:n x} 1  或  1 {it:x n}
	   {it:result}:  {it:n x} 5

    {cmd:spline3eval(}{it:spline_info}{cmd:,} {it:x}{cmd:)}:
      {it:spline_info}:  {it:n x} 5
		{it:x}:  {it:m x} 1  或  1 {it:x m}
	   {it:result}:  {it:m x} 1  或  1 {it:x m}
	

{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
    {cmd:spline3(}{it:x}{cmd:,} {it:y}{cmd:)}
    要求 {it:x} 按升序排列。

{p 4 4 2}
    {cmd:spline3eval(}{it:spline_info}{cmd:,} {it:x}{cmd:)}
    要求 {it:x} 按升序排列。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view spline3.mata, adopath asis:spline3.mata},
{view spline3eval.mata, adopath asis:spline3eval.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_spline3.sthlp>}