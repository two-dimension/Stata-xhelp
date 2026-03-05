{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] exit()" "mansection M-5 exit()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] error()" "help mf_error_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Programming" "help m4_programming_zh"}{...}
{viewerjumpto "Syntax" "mf_exit_zh##syntax"}{...}
{viewerjumpto "Description" "mf_exit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_exit_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_exit_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_exit_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_exit_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_exit_zh##source"}
{help mf_exit:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-5] exit()} {hline 2}}终止执行
{p_end}
{p2col:}({mansection M-5 exit():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:exit(}{it:real scalar rc}{cmd:)}

{p 8 12 2}
{cmd:exit()}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:exit(}{it:rc}{cmd:)} 终止执行并将总返回代码设置为 {it:rc}。

{p 4 4 2}
未指定任何参数的 {cmd:exit()} 等同于 {cmd:exit(0)}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 exit()Remarksandexamples:备注和示例}

{pstd}
上述章节未包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
不要混淆 {cmd:exit()} 和 {cmd:return}。 {cmd:return} 停止当前函数的执行并返回给调用者，之后继续执行。 {cmd:exit()} 终止执行。
例如，考虑

	{cmd}function first()
	{
		"开始执行"
		second()
		"这条消息将永远无法看到"
	}

	function second()
	{
		"来自 second() 的问候"
		exit(0)
	}{txt}

{p 4 4 2}
运行的结果将是

	: {cmd:first()}
	  开始执行
	  来自 second() 的问候

{p 4 4 2}
如果我们将 {cmd:exit(0)} 改为 {cmd:exit(198)} 在 {cmd:second()} 中，结果将是 

	: {cmd:first()}
	  开始执行
	  来自 second() 的问候
	r(198);

{p 4 4 2}
不会显示错误消息。如果想要显示错误消息并退出，应该写成 {cmd:exit(error(198))}; 见 {bf:{help mf_error_zh:[M-5] error()}}。


{marker conformability}{...}
{title:一致性}

    {cmd:exit(}{it:rc}{cmd:)}:
	       {it:rc}:  1 {it:x} 1    (可选)


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:exit(}{it:rc}{cmd:)} 
和 
{cmd:exit()} 
不会返回。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_exit.sthlp>}