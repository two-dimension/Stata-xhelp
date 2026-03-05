{smcl}
{* *! version 1.2.6  25jan2019}{...}
{vieweralsosee "[P] confirm" "mansection P confirm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] capture" "help capture_zh"}{...}
{viewerjumpto "Syntax" "confirm_zh##syntax"}{...}
{viewerjumpto "Description" "confirm_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "confirm_zh##linkspdf"}{...}
{viewerjumpto "Option" "confirm_zh##option"}{...}
{viewerjumpto "Examples" "confirm_zh##examples"}
{help confirm:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[P] confirm} {hline 2}}参数验证{p_end}
{p2col:}({mansection P confirm:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 25 2}{cmdab:conf:irm} {cmdab:e:xistence} {it:string}

{p 8 25 2}{cmdab:conf:irm} [{cmd:new}] {cmdab:f:ile} {it:{help filename_zh}}

{p 8 25 2}{cmdab:conf:irm} [ {cmd:numeric} | {cmdab:str:ing} | {cmd:date} ]
{cmdab:fo:rmat} {it:string}

{p 8 25 2}{cmdab:conf:irm} [{cmd:new}] {cmd:frame} {it:name}

{p 8 25 2}{cmdab:conf:irm} {cmdab:name:s} {it:names}

{p 8 25 2}{cmdab:conf:irm} [{cmd:integer}] {cmdab:n:umber} {it:string}

{p 8 25 2}{cmdab:conf:irm} {cmdab:mat:rix} {it:string}

{p 8 25 2}{cmdab:conf:irm} {cmdab:sca:lar} {it:string}

{p 8 25 2}{cmdab:conf:irm} [ {cmd:new} | {cmd:numeric} | {cmdab:str:ing} |
{cmd:str#} |
{it:{help data_type:type}} ] {cmdab:v:ariable} {varlist} [{cmd:,} {opt ex:act}]

{p 4 25 2}其中 {it:type} 为 {c -(} {cmd:byte} | {cmd:int} | {cmd:long} |
{cmd:float} | {cmd:double} | {cmd:str}{it:#} | {cmd:strL} {c )-}


{marker description}{...}
{title:描述}

{pstd}
{cmd:confirm} 验证紧随 {cmd:confirm ...} 之后的参数是否为声明的类型，如果不是，则发出相应的错误消息和非零返回代码。

{pstd}
在 do-file 和程序中，当您不想麻烦自己发出错误消息时，{cmd:confirm} 很有用。{cmd:confirm} 还可以与 {cmd:capture} 结合使用，以在错误发生之前探测和处理错误条件；请参见 {help capture_zh:[P] capture}。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection P confirmRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt exact} 指定只有在 {varlist} 中指定的名称匹配时才能声明匹配。默认情况下，变量的缩写被视为匹配。


{marker examples}{...}
{title:示例}

{pstd}{cmd:. confirm file `"c:\data\mydata.dta"'}

{pstd}{cmd:. confirm numeric variable price trunk rep78}

{pstd}您正在编写一个对局部宏 {it:varlist} 中的每个变量执行某些操作的命令。该操作应针对字符串（包括 {cmd:str}{it:#} 和 {cmd:strL}）和数字变量有所不同。可以在此使用 {cmd:confirm} 命令与 {help capture_zh} 命令结合，以在不同的操作之间切换：

	{cmd:foreach v of local {it:varlist} {c -(}}
		{cmd:capture confirm numeric variable `v'}
		{cmd:if !_rc {c -(}}
			{it:对数字变量的操作}
		{cmd:{c )-}}
		{cmd:else {c -(}}
			{it:对 str# 或 strL 变量的操作}
		{cmd:{c )-}}
	{cmd:{c )-}}

{pstd}使用宏函数 {cmd::type} 的内联扩展的另一种解决方案（请参见 {help local}）为

	{cmd:foreach v of local varlist {c -(}}
		{cmd:if substr("`:type `v''",1,3) == "str" {c -(}}
			{it:对字符串变量的操作}
		{cmd:{c )-}}
		{cmd:else {c -(}}
			{it:对数字变量的操作}
		{cmd:{c )-}}
	{cmd:{c )-}}

{pstd}如果需要区分 {cmd:str}{it:#} 和 {cmd:strL} 变量以及数字变量，您可以改为编写

	{cmd:foreach v of local {it:varlist} {c -(}}
		{cmd:capture confirm str# variable `v'}
		{cmd:if !_rc {c -(}}
			{it:对 str# 变量的操作}
		{cmd:{c )-}}
		{cmd:capture confirm strL variable `v'}
		{cmd:if !_rc {c -(}}
			{it:对 strL 变量的操作}
		{cmd:{c )-}}
		{cmd:capture confirm numeric variable `v'}
		{cmd:if !_rc {c -(}}
			{it:对数字变量的操作}
		{cmd:{c )-}}
	{cmd:{c )-}}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <confirm.sthlp>}