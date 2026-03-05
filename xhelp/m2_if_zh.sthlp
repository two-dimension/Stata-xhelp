{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-2] if" "mansection M-2 if"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "Syntax" "m2_if_zh##syntax"}{...}
{viewerjumpto "Description" "m2_if_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m2_if_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m2_if_zh##remarks"}
{help m2_if:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[M-2] if} {hline 2}}如果 (exp) ... 否则 ...
{p_end}
{p2col:}({mansection M-2 if:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmd:if (}{it:exp}{cmd:)} {it:stmt1}


	{cmd:if (}{it:exp}{cmd:)} {it:stmt1}
	{cmd:else} {it:stmt2}


	{cmd:if (}{it:exp}{cmd:) {c -(}}
		{it:stmts1}
	{cmd:{c )-}}
	{cmd:else {c -(}}
		{it:stmts2}
	{cmd:{c )-}}


	{cmd:if (}{it:exp1}{cmd:)} ...
	{cmd:else if (}{it:exp2}{cmd:)} ...
	{cmd:else if (}{it:exp3}{cmd:)} ...
	...
	{cmd:else} ...


{p 4 4 2}
其中 {it:exp}、{it:exp1}、{it:exp2}、{it:exp3}，必须计算为真实的标量。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:if} 评估表达式，如果为真（计算为非零数字），则 {cmd:if} 执行紧跟其后的语句或语句块；否则，{cmd:if} 跳过该语句或块。

{p 4 4 2}
{cmd:if} ... {cmd:else} 
评估表达式，如果为真（计算为非零数字），则 {cmd:if} 执行紧跟其后的语句或语句块并跳过紧随 {cmd:else} 后的语句或语句块；否则，跳过紧跟其后的语句或块并执行 {cmd:else} 后的语句或块。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-2 ifRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:if} 后跟多个 {cmd:else} 被解释为嵌套，即

	{cmd:if (}{it:exp1}{cmd:)} ...
	{cmd:else if (}{it:exp2}{cmd:)} ...
	{cmd:else if (}{it:exp3}{cmd:)} ...
	...
	{cmd:else} ...

{p 4 4 2}
相当于

	{cmd:if (}{it:exp1}{cmd:)} ...
	{cmd:else {c -(}}
		{cmd:if (}{it:exp2}{cmd:)} ...
		{cmd:else {c -(}}
			{cmd:if (}{it:exp3}{cmd:)} ...
			{cmd:else {c -(}}
				...
			{cmd:{c )-}}
		{cmd:{c )-}}
	{cmd:{c )-}}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_if.sthlp>}