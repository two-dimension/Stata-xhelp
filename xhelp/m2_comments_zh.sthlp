{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-2] 注释" "mansection M-2 Comments"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] 简介" "help m2_intro_zh"}{...}
{viewerjumpto "语法" "m2_comments_zh##syntax"}{...}
{viewerjumpto "描述" "m2_comments_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "m2_comments_zh##linkspdf"}{...}
{viewerjumpto "备注" "m2_comments_zh##remarks"}
{help m2_comments:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-2] 注释} {hline 2}}注释
{p_end}
{p2col:}({mansection M-2 Comments:查看完整的 PDF 手动条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmd:/*} {it:封闭的注释} {cmd:*/}

	{cmd://} {it:行尾注释}


{p 4 4 2}
注意事项：

{p 8 12 2}
1.  
注释可以出现在 do 文件和 ado 文件中；不允许在交互式中使用。  

{p 8 12 2}
2.
Stata 的行首星号注释在 Mata 中不允许：

		. {cmd:*} {it:在 Stata 中有效，但在 Mata 中无效}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:/*} 和 {cmd:*/} 及 {cmd://} 是在 Mata 程序中添加注释的方法。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-2 CommentsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
有两种注释风格： {cmd:/*} 和 {cmd:*/}，以及 {cmd://}。
您可以使用其中一种，另一种，或两者兼用。

{p 4 4 2}
备注分为以下几个标题呈现：

	{help m2_comments##remarks1:封闭的 /* */ 注释}
	{help m2_comments##remarks2:// 行尾注释}


{marker remarks1}{...}
{title:封闭的 /* */ 注释}

{p 4 4 2}
封闭注释可以出现在一行内：

	{cmd:/*} {it:以下内容使用近似公式：} {cmd:*/}

{p 4 4 2}
封闭注释可以出现在一行中，甚至在 Mata 表达式中间：
             
	{cmd:x = x + /*}{it:左单引号}{cmd:*/ char(96)}

{p 4 4 2}
封闭注释本身可以包含多行：

	{cmd:/*}
	    {it:我们使用基于 sin(x) 的近似，近似值}
            {it:等于 x，对于小的 x；x 以弧度计}
	{cmd:*/}

{p 4 4 2}
封闭注释可以嵌套，这对注释掉本身包含注释的代码非常有用：

	{cmd:/*}
	{it:for (i=1; i<=rows(x); i++) {c -(}}        {cmd:/*} {it:规范化} {cmd:*/}
		{it:x[i] = x[i] :/ value[i]}
	{it:{c )-}}
	{cmd:*/}


{marker remarks2}{...}
{title:// 行尾注释}

{p 4 4 2}
行尾注释可以单独出现在一行中：

	{cmd://} {it:以下内容使用近似公式：}

{p 4 4 2}
或者它可以出现在一行的末尾：

	{cmd:x = x + char(96)      //} {it:附加单引号}

{p 4 4 2}
在任一情况下，注释在行结束时结束。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_comments.sthlp>}