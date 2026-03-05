{smcl}
{* *! version 1.0.11  15may2018}{...}
{vieweralsosee "[MI] mi xeq" "mansection MI mixeq"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi passive" "help mi_passive_zh"}{...}
{viewerjumpto "Syntax" "mi_xeq_zh##syntax"}{...}
{viewerjumpto "Description" "mi_xeq_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_xeq_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mi_xeq_zh##remarks"}{...}
{viewerjumpto "Stored results" "mi_xeq_zh##results"}
{help mi_xeq:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[MI] mi xeq} {hline 2}}执行命令于各个
     插补{p_end}
{p2col:}({mansection MI mixeq:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{cmd:mi xeq}
[{it:{help numlist_zh}}]{cmd::}
{it:command}
[{cmd:;} {it:command} 
[{cmd:;} ...]]


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:xeq:} {it:XXX} 在 {it:m}=0, {it:m}=1, ...,
{it:m}={it:M} 上执行 {it:XXX}。

{p 4 4 2}
{cmd:mi} {cmd:xeq} {it:{help numlist_zh}}{cmd::} {it:XXX} 在
{it:m}={it:numlist} 上执行 {it:XXX}。

{p 4 4 2}
{it:XXX} 可以是任何单个命令，也可以是多个用分号分隔的命令。如果指定多个命令，分隔符不得设置为分号；见 {bf:{help delimit_zh:[P] #delimit}}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI mixeqRemarksandexamples:备注和示例}

{pstd}
上述章节未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注如下：

	{help mi_xeq##reporting:使用 mi xeq 与报告命令}
	{help mi_xeq##modification:使用 mi xeq 与数据修改命令}
	{help mi_xeq##flongsep:使用 mi xeq 与 flongsep 数据的数据修改命令}


{marker reporting}{...}
{title:使用 mi xeq 与报告命令}

{p 4 4 2}
报告命令是指任何一般的 Stata 命令，这些命令报告结果但不改变数据。{bf:{help summarize_zh}} 就是一个例子。{cmd:mi} {cmd:xeq} 特别适用于此类命令。如果你想查看变量 {cmd:outcome} 和 {cmd:age} 在你的 {cmd:mi} 数据中女性的摘要统计信息，你可以输入

	. {cmd:mi xeq: summarize outcome age if sex=="female"}

	{it:m}=0 数据：
	-> summarize outcome age if sex=="female"
           {it:(输出省略)}

	{it:m}=1 数据：
	-> summarize outcome age if sex=="female"
           {it:(输出省略)}

	{it:m}=2 数据：
	-> summarize outcome age if sex=="female"
           {it:(输出省略)}

{p 4 4 2}
上述数据中 {it:M}=2。

{p 4 4 2}
如果你想查看在 {it:m}=2 数据上运行的特定回归，你可以输入 

	. {cmd:mi xeq 2: regress outcome age bp}

	{it:m}=2 数据：
	-> regress outcome age bp
           {it:(输出省略)}

{p 4 4 2}
在两种情况下，一旦命令执行，整个 {cmd:mi} 数据集会被重新加载到内存中。


{marker modification}{...}
{title:使用 mi xeq 与数据修改命令}

{p 4 4 2}
可以将数据修改命令与 {cmd:mi} {cmd:xeq} 一起使用，但除非你使用 flongsep 数据，否则这样做不是特别有用。

{p 4 4 2}
如果变量 {cmd:lnage} 被注册为被动并且你想更新其值，你可以输入

	. {cmd:mi xeq: replace lnage = ln(age)}
	  {it:(输出省略)}

{p 4 4 2}
无论风格如何，这都能工作，尽管用 {bf:{help mi_passive_zh:mi passive}} 更新变量同样简单：

	. {cmd:mi passive: replace lnage = ln(age)}
	  {it:(输出省略)}

{p 4 4 2}
如果你的操作依赖于数据的排序顺序，请在要执行的命令中包含 {cmd:sort} 命令；不要假定各个数据集会像内存中的数据那样排序。例如，假如你有被动变量 {cmd:totalx}，不要输入

	. {cmd:sort id time}

	. {cmd:mi xeq: by id: replace totalx = sum(x)}

{p 4 4 2}
这样做是行不通的。相反，输入 

	. {cmd:mi xeq: sort id time;  by id: replace totalx = sum(x)}

	{it:m}=0 数据：
	-> sort id time
	-> by id: replace totalx = sum(x)
	(8 变更已完成)

	{it:m}=1 数据：
	-> sort id time
	-> by id: replace totalx = sum(x)
	(8 变更已完成)

	{it:m}=2 数据：
	-> sort id time
	-> by id: replace totalx = sum(x)
	(8 变更已完成)


{p 4 4 2}
再次强调，用 {cmd:mi} {cmd:passive} 更新此变量同样简单：

	. {cmd:mi passive: by id (time): replace totalx = sum(x)}
	{it:m}=0:
	(8 变更已完成)
	{it:m}=1:
	(8 变更已完成)
	{it:m}=2:
	(8 变更已完成)

{p 4 4 2}
使用 wide、mlong 和 flong 风格，总会有其他方法可行，通常其他方法更容易。


{marker flongsep}{...}
{title:使用 mi xeq 与 flongsep 数据的数据修改命令}

{p 4 4 2}
对于 flongsep 数据，{cmd:mi} {cmd:xeq} 特别有用。
考虑你想要添加新变量 {cmd:lnage} 
= {cmd:ln(age)} 到你的数据，而 {cmd:age} 只是一个常规或未注册变量。在 flong、mlong 或 wide 数据中，你只需输入 

	. {cmd:generate lnage = ln(age)}

{p 4 4 2}
这么做就可以了。

{p 4 4 2}
对于 flongsep 数据，你有多个数据集需要更新。当然，你可以 {bf:{help mi_convert_zh:mi convert}} 你的数据转换为其他风格，但我们假设如果你有足够的内存来做到这一点，你早就这样做了，因此并不会使用 flongsep 数据。

{p 4 4 2}
使用 flongsep 数据创建 {cmd:lnage} 的简单方法是输入

	. {cmd:mi xeq: generate lnage = ln(age)}
	  {it:(输出省略)}

{p 4 4 2}
你可以用 {cmd:mi} {cmd:xeq} 方法与任何风格一起使用，但在 flong、mlong 或 wide 数据中并不必要。对于 flongsep 数据，则是必须的。


{marker results}{...}
{title:存储结果}

{p 4 4 2}
{cmd:mi} {cmd:xeq} 
在 {cmd:r()} 中存储上一个在最后一个插补或指定插补上运行的命令所返回的结果。例如， 

	. {cmd:mi xeq: tabulate g ;  summarize x}

{p 4 4 2}
返回在 {it:m}={it:M} 上运行的 {cmd:summarize} {cmd:x} 的存储结果。  

	. {cmd:mi xeq 1 2: tabulate g ;  summarize x}

{p 4 4 2}
返回在 {it:m}=2 上运行的 {cmd:summarize} {cmd:x} 的存储结果。  

	. {cmd:mi xeq 0: summarize x}

{p 4 4 2}
返回在 {it:m}=0 上运行的 {cmd:summarize} {cmd:x} 的存储结果。  
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_xeq.sthlp>}