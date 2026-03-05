{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-2] pragma" "mansection M-2 pragma"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "语法" "m2_pragma_zh##syntax"}{...}
{viewerjumpto "描述" "m2_pragma_zh##description"}{...}
{viewerjumpto "链接到 PDF 文档" "m2_pragma_zh##linkspdf"}{...}
{viewerjumpto "备注" "m2_pragma_zh##remarks"}
{help m2_pragma:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-2] pragma} {hline 2}}抑制警告信息
{p_end}
{p2col:}({mansection M-2 pragma:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:pragma} 
{cmd:unset}
{it:varname}

{p 8 12 2}
{cmd:pragma} 
{cmd:unused}
{it:varname}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:pragma} 通知编译器您的意图，以便编译器可以避免显示误导性的警告信息，并且更好地优化代码。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection M-2 pragmaRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注按以下标题呈现：

	{help m2_pragma##remarks1:pragma unset}
	{help m2_pragma##remarks2:pragma unused}


{marker remarks1}{...}
{title:pragma unset}

{p 4 4 2}
命令

	{cmd:pragma unset} {it:X}

{p 4 4 2}
会抑制警告信息

	{cmd:note: variable} {it:X} {cmd:may be used before set}

{p 4 4 2}
该命令对生成的编译代码没有影响。

{p 4 4 2}
通常情况下，警告信息标志着程序中的逻辑错误，例如

	: {cmd:function problem(real matrix a, real scalar j)}
	> {cmd:{c -(}}
	>       {cmd:real scalar i}
	>
	>       {cmd:j = i}
	>	...
	> {cmd:{c )-}}
	note: variable i may be used before set

{p 4 4 2}
然而，有时该信息具有误导性：

	: {cmd:function notaproblem(real matrix a, real scalar j)}
	> {cmd:{c -(}}
	>       {cmd:real matrix V}
	>
	>       {cmd:st_view(V,} ...{cmd:)}
	>	...
	> {cmd:{c )-}}
	note: variable V may be used before set

{p 4 4 2}
在上述情况下，函数 {cmd:st_view()} (见
{bf:{help mf_st_view_zh:[M-5] st_view()}}) 定义了 {cmd:V}，但编译器并不知道这一点。

{p 4 4 2}
该警告信息不会造成问题，但如果您希望抑制它，可以将代码更改为

	: {cmd:function notaproblem(real matrix a, real scalar j)}
	> {cmd:{c -(}}
	>       {cmd:real matrix V}
	>
	>	{cmd:pragma unset V}
	>       {cmd:st_view(V,} ...{cmd:)}
	>	...
	> {cmd:{c )-}}

{p 4 4 2}
{cmd:pragma unset V} 表明您知道 {cmd:V} 未设置，并且对于警告信息，编译器应该假装 {cmd:V} 在代码的这一点上已经设置。


{marker remarks2}{...}
{title:pragma unused}

{p 4 4 2}
命令

	{cmd:pragma unused} {it:X}

{p 4 4 2}
会抑制警告信息

	{cmd:note: argument} {it:X} {cmd:unused}
	{cmd:note: variable} {it:X} {cmd:unused}
	{cmd:note: variable} {it:X} {cmd:set but not used}

{p 4 4 2}
该命令对生成的编译代码没有影响。

{p 4 4 2}
故意未使用的变量通常与函数参数有关。您编写

	: {cmd:function resolve(A, B, C)}
	> {cmd:{c -(}}
	>	...
	> {cmd:{c )-}}
	note: argument C unused

{p 4 4 2}
您很清楚自己没有使用 {cmd:C}。您包含这个不必要的参数是因为您试图适应某个标准，或者您知道在将来可能希望更改函数以包含 {cmd:C}。要抑制警告信息，可以将代码更改为

	: {cmd:function resolve(A, B, C)}
	> {cmd:{c -(}}
	>	...
	>       {cmd:pragma unused C}
	>	...
	> {cmd:{c )-}}

{p 4 4 2}
该命令表明您知道 {cmd:C} 未使用，并且对于警告信息，编译器应该假装 {it:C} 在代码的这一点上已经使用。

{p 4 4 2}
未使用的变量也可能出现，通常情况下，它们应该被简单地删除，

	: {cmd:function resin(X, Y)}
	> {cmd:{c -(}}
	>       {cmd:real scalar i}
	>	...
	>       ... {it:代码中} {cmd:i} {it:从未出现}
	>	...
	> {cmd:{c )-}}
	note: variable i unused

{p 4 4 2}
与其使用命令来抑制该消息，您还不如删除行 {cmd:real scalar i}。

{p 4 4 2}
还会对已设置但未使用的变量给出警告：

	: {cmd:function thwart(X, Y)}
	> {cmd:{c -(}}
	>       {cmd:real scalar i}
	>	...
	>	{cmd:i = 1}
	>	...
	>       ... {it:代码中} {cmd:i} {it:从未出现}
	>	...
	> {cmd:{c )-}}
	note: variable i set but unused

{p 4 4 2}
在这里，您应该删除 {cmd:real scalar i} 和 {cmd:i} 
{cmd:=} {cmd:1} 这两行。

{p 4 4 2}
然而，有可能设置但未使用的变量是故意的：

	: {cmd:function thwart(X, Y)}
	> {cmd:{c -(}}
	>       {cmd:real scalar i}
	>	...
	>	{cmd:i = somefunction(}...{cmd:)}
	>	...
	>       ... {it:代码中} {cmd:i} {it:从未出现}
	>	...
	> {cmd:{c )-}}
	note: variable i set but not used

{p 4 4 2}
您将 {cmd:somefunction()} 的值分配给 {cmd:i}，以防止结果被显示。在这里，您可以使用 {cmd:pragma}
{cmd:unused} {cmd:i} 来抑制警告消息，但更好的选择是

	: {cmd:function thwart(X, Y)}
	> {cmd:{c -(}}
	>	...
	>	{cmd:(void) somefunction(}...{cmd:)}
	>	...
	> {cmd:{c )-}}

{p 4 4 2}
请参见
{it:{help m2_exp##remarks2:Assignment suppresses display, as does (void)}} 在 
{bf:{help m2_exp_zh:[M-2] exp}}中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_pragma.sthlp>}