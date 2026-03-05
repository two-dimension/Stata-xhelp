{smcl}
{* *! version 1.1.9  19oct2017}{...}
{vieweralsosee "[P] continue" "mansection P continue"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] foreach" "help foreach_zh"}{...}
{vieweralsosee "[P] forvalues" "help forvalues_zh"}{...}
{vieweralsosee "[P] while" "help while_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] exit" "help exit_program_zh"}{...}
{vieweralsosee "[P] if" "help ifcmd_zh"}{...}
{viewerjumpto "Syntax" "continue_zh##syntax"}{...}
{viewerjumpto "Description" "continue_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "continue_zh##linkspdf"}{...}
{viewerjumpto "Option" "continue_zh##option"}{...}
{viewerjumpto "Examples" "continue_zh##examples"}
{help continue:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[P] continue} {hline 2}}跳出循环{p_end}
{p2col:}({mansection P continue:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmd:continue} [{cmd:,} {cmdab:br:eak}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:continue}命令在{cmd:foreach}、{cmd:forvalues}或{cmd:while}循环中用于中断当前循环迭代的执行，并跳过循环内剩余的命令。执行将从循环的顶部恢复，除非指定了{cmd:break}选项，在这种情况下，执行将恢复到循环命令后的命令。请参见{manhelp foreach P}、{manhelp forvalues P}和{manhelp while P}以了解循环命令的讨论。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P continueRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:break}指示要退出循环。默认情况下是跳过当前迭代的剩余步骤，并再次从循环的顶部恢复执行。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}
列出从1到4的奇数和偶数

	{cmd:. forvalues x = 1/4} {cmd:{c -(}}
	{cmd:  2.    if mod(`x',2)} {cmd:{c -(}}
	{cmd:  3.        display "`x' is odd"}
	{cmd:  4.    {c )-}}
	{cmd:  5.    else} {cmd:{c -(}}
	{cmd:  6.        display "`x' is even"}
	{cmd:  7.    {c )-}}
	{cmd:  8. {c )-}}
	{cmd:1 is odd}
 	{cmd:2 is even}
	{cmd:3 is odd}
	{cmd:4 is even}

{pstd}
上述程序可以使用{cmd:continue}替代{cmd:else}进行编码

	{cmd:. forvalues x = 1(1)4} {cmd:{c -(}}
	{cmd:  2.    if mod(`x',2)} {cmd:{c -(}}
	{cmd:  3.        display "`x' is odd"}
	{cmd:  4.        continue}
	{cmd:  5.    {c )-}}
	{cmd:  6.    display "`x' is even"}
	{cmd:  7. {c )-}}
	{cmd:1 is odd}
 	{cmd:2 is even}
	{cmd:3 is odd}
	{cmd:4 is even}

{pstd}
当执行{cmd:continue}时，循环中剩余的语句将被忽略。执行将继续从循环的顶部，在这里，{cmd:forvalues}设置{cmd:`x'}的下一个值，与4进行比较，然后可能会再次开始循环。

    {hline}
{pstd}使用{cmd:break}选项提前退出循环

	{cmd:. forvalues x = 6/1000} {cmd:{c -(}}
	{cmd:  2.    if mod(`x',2)==0 & mod(`x',3)==0 & mod(`x',5)==0} {cmd:{c -(}}
	{cmd:  3.        display "2, 3和5的最小公倍数是`x'"}
	{cmd:  4.        continue, break}
	{cmd:  5.    {c )-}}
	{cmd:  6. {c )-}}
	{cmd:2, 3和5的最小公倍数是30}

{pstd}尽管{cmd:forvalues}循环计划遍历值6-1,000，但{cmd:continue,} {cmd:break}语句强制它在30后停止。
{p_end}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <continue.sthlp>}