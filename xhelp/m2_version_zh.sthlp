{smcl}
{* *! version 1.3.3  10may2018}{...}
{vieweralsosee "[M-2] version" "mansection M-2 version"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] callersversion()" "help mf_callersversion_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "Syntax" "m2_version_zh##syntax"}{...}
{viewerjumpto "Description" "m2_version_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m2_version_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m2_version_zh##remarks"}
{help m2_version:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[M-2] version} {hline 2}}版本控制
{p_end}
{p2col:}({mansection M-2 version:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 4 4 2}
语法 1:

	. {cmd:version} {it:#}[{cmd:.}{it:#}]

	. {cmd:mata:}
	: ...
	: {cmd:function} {it:name}{cmd:(}...{cmd:)} 
	: {cmd:{c -(}}
	:         ...
	: {cmd:{c )-}}
	: ...
	: {cmd:end}


{p 4 4 2}
语法 2:

	: {cmd:function} {it:name}{cmd:(}...{cmd:)} 
	: {cmd:{c -(}}
	:         {cmd:version} {it:#}[{cmd:.}{it:#}]
	:         ...
	: {cmd:{c )-}}


{marker description}{...}
{title:描述}

{p 4 4 2}
在语法 1 中，Stata 的 {cmd:version} 命令（见
{bf:{help version_zh:[P] version}}）在进入 Mata 之前设置版本。这
指定要使用的编译器和库版本。建议使用语法 1。

{p 4 4 2}
在语法 2 中，Mata 的 {cmd:version} 命令设置要使用的库函数的版本。语法 2 很少使用。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-2 versionRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注按以下标题呈现：

	{help m2_version##remarks1:版本控制的目的}
	{help m2_version##remarks2:对do文件的建议}
	{help m2_version##remarks3:对ado文件的建议}
	{help m2_version##remarks4:编译时和运行时版本控制}


{marker remarks1}{...}
{title:版本控制的目的}

{p 4 4 2}
Mata 正在持续开发，这意味着不仅添加了新功能，而且旧功能有时会改变其工作方式。旧功能改变其工作方式通常被认为是改进——一般而言确实如此——但这也意味着旧程序可能会停止工作，或者更糟的是以不同的方式工作。

{p 4 4 2}
{cmd:version} 提供了解决方案。

{p 4 4 2}
如果您在交互模式下工作，这里所说的内容无关紧要。

{p 4 4 2}
如果您在 do 文件或 ado 文件中使用 Mata，我们建议您在进入 Mata 之前设置 {cmd:version}。


{marker remarks2}{...}
{title:对do文件的建议}

{p 4 4 2}
使用 Mata 的 do 文件的建议与不使用 Mata 的 do 文件的建议相同：在第一行中指定您正在使用的 Stata 的版本号：

	{hline 43} begin myfile.do {hline 4}
	{cmd:version {ccl stata_version}}
	...
	{hline 43} end myfile.do {hline 6}

{p 4 4 2}
要确定在 {cmd:version} 后应该出现的数字，请在 Stata 提示符下输入 
{cmd:about}：

	. {cmd:about}
	Stata/SE {ccl stata_version}
	[{it:其余输出省略}]

{p 4 4 2}
我们正在使用 Stata {ccl stata_version}。

{p 4 4 2}
编写 {cmd:version} {cmd:{ccl stata_version}} 目前对我们没有好处，但在
未来，我们将能够重新运行我们的 do 文件并获得相同的结果。

{p 4 4 2}
顺便说一下，do 文件是任何您打算使用 Stata 的 {cmd:do} 或 {cmd:run} 命令执行的文件（见 {help do_zh:[R] do}），不论文件后缀。许多用户（包括我们）将 Mata 源代码保存在 {cmd:.mata} 文件中，然后输入 {cmd:do} {it:myfile}{cmd:.mata} 进行编译。{cmd:.mata} 文件是 do 文件；我们在其中包含 {cmd:version} 行：

	{hline 41} begin myfile.mata {hline 4}
	{cmd:version {ccl stata_version}}
	{cmd:mata:}
	...
	{cmd:end}
	{hline 41} end myfile.mata {hline 6}


{marker remarks3}{...}
{title:对ado文件的建议}

{p 4 4 2}
Mata 函数可以包含在 ado 文件中；见 {bf:{help m1_ado_zh:[M-1] Ado}}。在此类文件中，在进入 Mata 之前设置 {cmd:version}，并像往常一样在程序顶部设置版本：

	{hline 42} begin myfile.ado {hline 4}
	program myfile 
		{cmd:version {ccl stata_version}}      <- {it:像往常一样}
		...
	end

	{cmd:version {ccl stata_version}}              <- {it:新的}
	{cmd:mata:}
	...
	{cmd:end}
	{hline 42} end myfile.ado {hline 6}


{marker remarks4}{...}
{title:编译时和运行时版本控制}

{p 4 4 2}
接下来的内容是详细信息。我们建议始终遵循上述建议。

{p 4 4 2}
实际上，有两个版本号是重要的——编译时设置的版本号，影响源代码的解释方式，以及在执行时用于提供子例程的库版本。

{p 4 4 2}
我们在之前的部分中使用的 {cmd:version} 命令实际上是 Stata 的 {cmd:version} 命令（见
{bf:{help version_zh:[P] version}}），它设置了这两个版本：

	. {cmd:version {ccl stata_version}}
	. {cmd:mata:}
	: {cmd:function example()}
	: {cmd:{c -(}}
	:         ...
	: {cmd:{c )-}}
	: {cmd:end}

{p 4 4 2}
在上面的示例中，我们使用 Mata 语言的 {ccl stata_version} 语法编译 {cmd:example()}，并且任何函数 {cmd:example()} 调用的将是 {ccl stata_version} 版本的那些函数。在进入 Mata 之前设置 {cmd:version} {cmd:{ccl stata_version}} 确保了所有这些。

{p 4 4 2}
在以下示例中，我们使用 {ccl stata_version} 语法编译，并使用版本 16.2 的函数：
{* 假设示例；上面和下面的 #.2 应为当前版本}

	. {cmd:version {ccl stata_version}}
	. {cmd:mata:}
	: {cmd:function example()}
	: {cmd:{c -(}}
	:         {cmd:version 16.2}
	:         ...
	: {cmd:{c )-}}
	: {cmd:end}

{p 4 4 2}
在以下示例中，我们使用 16.2 语法编译，并使用 {ccl stata_version} 的函数：

	. {cmd:version 16.2}
	. {cmd:mata:}
	: {cmd:function example()}
	: {cmd:{c -(}}
	:         {cmd:version {ccl stata_version}}
	:         ...
	: {cmd:{c )-}}
	: {cmd:end}

{p 4 4 2}
然而，很少会有您希望在不同版本级别编译和执行的情况。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_version.sthlp>}