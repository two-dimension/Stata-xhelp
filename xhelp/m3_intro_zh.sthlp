{smcl}
{* *! version 1.1.7  11may2018}{...}
{vieweralsosee "[M-3] 介绍" "mansection M-3 Intro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-0] 介绍" "help mata_zh"}{...}
{viewerjumpto "内容" "m3_intro_zh##contents"}{...}
{viewerjumpto "描述" "m3_intro_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "m3_intro_zh##linkspdf"}{...}
{viewerjumpto "备注" "m3_intro_zh##remarks"}
{help m3_intro:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[M-3] 介绍} {hline 2}}控制 Mata 的命令
{p_end}
{p2col:}({mansection M-3 Intro:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker contents}{...}
{title:内容}

{p 4 4 2}
从 Stata 调用 Mata 的命令：

{col 5}   [M-3]
{col 5}手册条目{col 20}命令{col 40}描述
{col 5}{hline}
{col 5}{helpb m3 mata}{...}
{col 20}{cmd:. mata}{...}
{col 40}调用 Mata
{col 5}{hline}

{p 4 4 2}
一旦您正在运行 Mata，可以在冒号提示符中使用以下命令：

{col 5}   [M-3]
{col 5}手册条目{col 20}命令{col 40}描述
{col 5}{hline}
{col 5}{helpb mata help}{...}
{col 20}{cmd:: mata help}{...}
{col 40}执行 {cmd:help} 命令

{col 5}{helpb mata clear}{...}
{col 20}{cmd:: mata clear}{...}
{col 40}清除 Mata
{col 5}{helpb mata describe}{...}
{col 20}{cmd:: mata describe}{...}
{col 40}描述 Mata 的内存内容
{col 5}{helpb mata memory}{...}
{col 20}{cmd:: mata memory}{...}
{col 40}显示内存使用报告
{col 5}{helpb mata rename}{...}
{col 20}{cmd:: mata rename}{...}
{col 40}重命名矩阵或函数
{col 5}{helpb mata drop}{...}
{col 20}{cmd:: mata drop}{...}
{col 40}从内存中移除矩阵或函数

{col 5}{helpb mata mosave}{...}
{col 20}{cmd:: mata mosave}{...}
{col 40}创建对象文件
{col 5}{helpb mata mlib}{...}
{col 20}{cmd:: mata mlib}{...}
{col 40}创建函数库
{col 5}{help lmbuild_zh}{...}
{col 20}{cmd:. lmbuild}{...}
{col 40}轻松创建函数库

{col 5}{helpb mata matsave}{...}
{col 20}{cmd:: mata matsave}{...}
{col 40}保存矩阵
{col 5}{helpb mata matsave}{...}
{col 20}{cmd:: mata matuse}{...}
{col 40}恢复矩阵
{col 5}{helpb mata matsave}{...}
{col 20}{cmd:: mata matdescribe}{...}
{col 40}描述矩阵文件的内容

{col 5}{helpb mata which}{...}
{col 20}{cmd:: mata which}{...}
{col 40}识别函数

{col 5}{helpb mata set}{...}
{col 20}{cmd:: mata query}{...}
{col 40}显示可设置参数的值
{col 5}{helpb mata set}{...}
{col 20}{cmd:: mata set}{...}
{col 40}设置参数

{col 5}{helpb mata stata}{...}
{col 20}{cmd:: mata stata}{...}
{col 40}执行 Stata 命令

{col 5}{help m3_end_zh:end}{...}
{col 20}{cmd:: end}{...}
{col 40}退出 Mata 并返回 Stata
{col 5}{hline}


{marker description}{...}
{title:描述}

{p 4 4 2}
当您在 Mata 提示符下输入内容时，假设它是一个 Mata 语句 - 可以编译和执行的内容 - 例如

	: {cmd:2+3}
	  5

{p 4 4 2}
然而，{cmd:mata} 命令是不同的。当您输入的内容以单词 {cmd:mata} 为前缀时，可以认为您是在 Mata 外部发出影响 Mata 环境及其工作方式的指令。例如，输入

	: {cmd:mata clear}

{p 4 4 2}
表示 Mata 将被清除。输入

	: {cmd:mata set matastrict on}

{p 4 4 2}
表示 Mata 将要求程序明确声明其参数和工作变量；参见 
{bf:{help m2_declarations_zh:[M-2] 声明}}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-3 IntroRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:mata} 命令不能在函数内使用。编码如下没有意义：

	{cmd:function foo(}...{cmd:)}
	{cmd:{c -(}}
		...
		{cmd:mata query}
		...
	{cmd:{c )-}}

{p 4 4 2}
因为 {cmd:mata query} 是只能在 Mata 冒号提示符下输入的内容：

	: {cmd:mata query}
	{it:(输出已省略)}

{p 4 4 2}
参见 {bf:{help m1_how_zh:[M-1] 如何}}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m3_intro.sthlp>}