{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-2] op_arith" "mansection M-2 op_arith"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] exp" "help m2_exp_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "Syntax" "m2_op_arith_zh##syntax"}{...}
{viewerjumpto "Description" "m2_op_arith_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m2_op_arith_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m2_op_arith_zh##remarks"}{...}
{viewerjumpto "Conformability" "m2_op_arith_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "m2_op_arith_zh##diagnostics"}
{help m2_op_arith:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-2] op_arith} {hline 2}}算术运算符
{p_end}
{p2col:}({mansection M-2 op_arith:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{it:a} {cmd:+} {it:b}                      加法

	{it:a} {cmd:-} {it:b}                      减法

	{it:a} {cmd:*} {it:b}                      乘法

	{it:a} {cmd:/} {it:b}                      除法

	{it:a} {cmd:^} {it:b}                      幂运算


	{cmd:-}{it:a}                         取反


{p 4 4 2}
其中 {it:a} 和 {it:b} 可以是数值标量、向量或矩阵。


{marker description}{...}
{title:描述}

{p 4 4 2}
上述运算符执行基本的算术运算。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-2 op_arithRemarksandexamples:备注与示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
另见 {bf:{help m2_op_colon_zh:[M-2] op_colon}}
关于 {cmd::+}、{cmd::-}、{cmd::*} 和 {cmd::/} 运算符。
冒号运算符的兼容性限制较宽松。

{p 4 4 2}
{cmd:*} 和 {cmd::*} 乘法运算符还可以执行字符串复制 -- 3*"a" = "aaa" -- 参见 {bf:{help mf_strdup_zh:[M-5] strdup()}}。


{marker conformability}{...}
{title:兼容性}

	{it:a} {cmd:+} {it:b}，{it:a} {cmd:-} {it:b}:
		{it:a}:  {it:r x c}
		{it:b}:  {it:r x c}
	   {it:result}:  {it:r x c}

	{it:a} {cmd:*} {it:b}:
		{it:a}:  {it:k x n}      {it:k x n}      1 {it:x} 1
		{it:b}:  {it:n x m}      1 {it:x} 1      {it:n x m}
	   {it:result}:  {it:k x m}      {it:k x n}      {it:n x m}

	{it:a} {cmd:/} {it:b}:
		{it:a}:  {it:r x c}
		{it:b}:  1 {it:x} 1
	   {it:result}:  {it:r x c}

	{it:a} {cmd:^} {it:b}:
		{it:a}:  1 {it:x} 1
		{it:b}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1

	{cmd:-}{it:a}:
		{it:a}:  {it:r x c}
	   {it:result}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
所有运算符在参数缺失时返回缺失值。

{p 4 4 2}
{it:a}{cmd:*}{it:b} 当 {it:a}: {it:k} {it:x} 0 且 {it:b}: 0 {it:x} {it:m} 时返回一个 {it:k} {it:x} {it:m} 的零矩阵。

{p 4 4 2}
{it:a}{cmd:/}{it:b} 当 {it:b}==0 或 {it:a}{cmd:/}{it:b} 会导致溢出时返回缺失值。

{p 4 4 2}
{it:a}{cmd:^}{it:b} 当 {it:a} 和 {it:b} 都为实数时返回实数；
因此，{cmd:(-4)^.5} 计算结果为缺失值，而 
{cmd:(-4+0i)^.5} 的计算结果为 {cmd:2i}。

{p 4 4 2}
{it:a}{cmd:^}{it:b} 在溢出时返回缺失值。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_op_arith.sthlp>}