{smcl}
{* *! version 1.1.5  19oct2017}{...}
{vieweralsosee "[P] #delimit" "mansection P delimit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] comments" "help comments_zh"}{...}
{vieweralsosee "[U] 10 Keyboard use" "help keyboard_zh"}{...}
{viewerjumpto "Syntax" "delimit_zh##syntax"}{...}
{viewerjumpto "Description" "delimit_zh##description"}{...}
{viewerjumpto "Remarks" "delimit_zh##remarks"}{...}
{viewerjumpto "Examples" "delimit_zh##examples"}{...}
{viewerjumpto "Technical note" "delimit_zh##technote"}
{help delimit:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[P] #delimit} {hline 2}}更改分隔符{p_end}
{p2col:}({mansection P #delimit:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}{cmdab:#d:elimit} {c -(} {cmd:cr} | {cmd:;} {c )-}


{marker description}{...}
{title:描述}

{pstd}
{cmd:#delimit} 命令重置标记命令结束的字符。它只能在 do 文件和 ado 文件中使用。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:#delimit}（读作 pound-delimit）是 Stata 的预处理命令。{cmd:#}{it:commands} 不会生成返回代码，也不会生成普通的 Stata 错误。与 {cmd:#}{it:commands} 相关的唯一错误信息是“未识别的 #command”。

{pstd}
从控制台输入的命令总是在按下 Enter 或 Return 键时执行。{cmd:#delimit} 不能交互使用，因此不能更改 Stata 的交互行为。

{pstd}
然而，在 do 文件中的命令可以用换行符或分号进行分隔。当 do 文件开始时，分隔符是换行符。命令 "{cmd:#delimit ;}" 将分隔符更改为分号。要在文件内恢复换行符分隔符，请使用 {cmd:#delimit cr}。

{pstd}
当 do 文件开始执行时，即使它是从另一個将分隔符设置为分号的 do 文件中调用的，分隔符也会自动设置为换行符。此外，当前的 do 文件不必担心恢复分隔符，因为 Stata 会自动执行此操作。


{marker examples}{...}
{title:示例}

	{hline 3} myfile1.do 开始 {hline 27}
	{cmd:use mydata, clear}
	{cmd:#delimit ;}
	{cmd:regress lnwage educ complete age c.age#c.age}
		{cmd:exp c.exp#c.exp tenure c.tenure}
		{cmd:i.region female ;}
	{cmd:predict e, resid ;}
	{cmd:#delimit cr}
	{cmd:summarize e, detail}
	{hline 3} myfile1.do 结束 {hline 29}


{pstd}
以另一种方式做到这一点而不使用 {cmd:#delimit} 将是

	{hline 3} myfile2.do 开始 {hline 33}
	{cmd:use mydata, clear}
	{cmd:regress lnwage educ complete age c.age#c.age /*}
		{cmd:*/ exp c.exp#c.exp tenure c.tenure /*}
		{cmd:*/ i.region female}
	{cmd:predict e, resid}
	{cmd:summarize e, detail}
	{hline 3} myfile2.do 结束 {hline 35}

{pstd}
有关更多信息，请参见 {findalias frdolonglines}。


{marker technote}{...}
{title:技术说明}

{pstd}
仅仅因为您有长行并不意味着您必须将分隔符更改为分号。Stata 不关心行是否很长。还有其他方法可以指示多于一行的物理行属于同一逻辑行。一种流行的选择是 {cmd:///}：

	{cmd:regress lnwage educ complete age c.age#c.age     /// }
		{cmd:exp c.exp#c.exp tenure c.tenure /// }
		{cmd:i.region female}

{pstd}
请参阅 {manhelp comments P}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <delimit.sthlp>}