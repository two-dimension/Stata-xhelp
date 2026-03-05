{smcl}
{* *! version 1.1.3  15may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] timer" "help timer_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Programming" "help m4_programming_zh"}{...}
{viewerjumpto "语法" "mf_timer_zh##syntax"}{...}
{viewerjumpto "描述" "mf_timer_zh##description"}{...}
{viewerjumpto "备注" "mf_timer_zh##remarks"}{...}
{viewerjumpto "适用性" "mf_timer_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_timer_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_timer_zh##source"}
{help mf_timer:English Version}
{hline}{...}
{title:标题}

{p 4 8 2}
{bf:[M-5] timer()} {hline 2} 性能分析代码


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void}{bind:          }
{cmd:timer_clear()}

{p 8 12 2}
{it:void}{bind:          }
{cmd:timer_clear(}{it:real scalar t}{cmd:)}


{p 8 12 2}
{it:void}{bind:          }
{cmd:timer_on(}{it:real scalar t}{cmd:)}

{p 8 12 2}
{it:void}{bind:          }
{cmd:timer_off(}{it:real scalar t}{cmd:)}


{p 8 12 2}
{it:real rowvector}
{cmd:timer_value(}{it:real scalar t}{cmd:)}


{p 8 12 2}
{it:void}{bind:          }
{cmd:timer()}

{p 8 12 2}
{it:void}{bind:          }
{cmd:timer(}{it:real t}{cmd:)}

{p 8 12 2}
{it:void}{bind:          }
{cmd:timer(}{it:string scalar txt}{cmd:)}

{p 8 12 2}
{it:void}{bind:          }
{cmd:timer(}{it:real t}{cmd:,}
{it:string scalar txt}{cmd:)}

{p 8 12 2}
{it:void}{bind:          }
{cmd:timer(}{it:string scalar txt}{cmd:,}
{it:real t}{cmd:)}


{p 4 8 2}
其中 {it:t} 是计时器编号，范围从 1 到 100。

{p 4 8 2}
对于 {cmd:timer()}，允许零个、一个或两个参数，参数可按任意顺序指定。参数 {it:t} 可省略、指定为 {it:scalar}，或指定为 {it:vector}：

{p 8 8 2}
    如果省略 {it:t}，则报告所有计时器。

{p 8 8 2}
    如果 {it:t} 是 {it:scalar}，则报告指定的计时器
    （{cmd:timer(.)} 与省略 {it:t} 相同；报告所有计时器）。

{p 8 8 2}
    如果 {it:t} 是 {it:rowvector}，则报告指定的计时器。

{p 8 8 2}
    如果 {it:t} 是 {it:colvector}，则必须为 2 {it:x} 1，
    并报告该范围内的计时器。

{p 4 8 2}
对于 {cmd:timer_clear()}，{it:t} 可以省略或指定为一个标量：

{p 8 8 2}
    如果省略 {it:t}，则清除所有计时器。

{p 8 8 2}
    如果 {it:t} 是 {it:scalar}，则清除指定的计时器，除非
    {it:t} 被指定为缺失值，在这种情况下结果与省略 {it:t} 
    相同；清除所有计时器。

{p 4 8 2}
在其他函数中，{it:t} 是标量，且不能包含缺失值。


{marker description}{...}
{title:描述}

{p 4 4 2}
Stata 提供了一组 100 个计时器，编号从 1 到 100，用于性能分析代码；请参见 {help timer_zh:[P] timer}。这些函数提供了对这些计时器的接口。

{p 4 4 2}
{cmd:timer_clear()} 清除（重置为零）所有计时器或指定的计时器。

{p 4 4 2}
{cmd:timer_on(}{it:t}{cmd:)} 启动（重新开始）计时器 {it:t}。  

{p 4 4 2}
{cmd:timer_off(}{it:t}{cmd:)} 停止（关闭）计时器 {it:t}。  

{p 4 4 2}
{cmd:timer_value(}{it:t}{cmd:)} 返回一个 1 {it:x} 2 的向量，汇总计时器 {it:t} 的内容。
第一个元素是计时器处于开启状态的累积时间（单位：秒），第二个元素是计时器启动和停止的次数。  

{p 4 4 2}
{cmd:timer()} 显示一个计时器报告，显示累积时间、计时器的启动和停止次数，以及平均时间（第一个元素除以第二个元素）。
{cmd:timer()} 允许两个可选参数： {it:txt} 和 {it:t}，可以按任意顺序指定。
{it:txt}，如果指定，将用于报告的标题。
{it:t}，如果指定，则指定要报告的计时器。
默认情况下报告至少启动和停止过一次的所有计时器。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
要获得准确的计时，您必须多次运行您希望分析的代码。
在下面的示例中，我们运行 {cmd:subroutine_to_be_timed()} 100,000 次。

	{cmd}timer_clear()
	for (i=1; i<=100000; i++) {
		timer_on(1)
		subroutine_to_be_timed()
		timer_off(1)
	}
	timer(){txt}


{p 4 4 2}
{cmd:subroutine_to_be_timed()} 可能会使用其他计时器对其部分进行分析：

	{cmd}function subroutine_to_be_timed()
	{
		...
		for ({txt...}) {
			...
			timer_on(2)
			...
			timer_off(2)
		}

		...

		timer_on(3)
		...
		timer_off(3)
	}{txt}

{p 4 4 2}
运行此实验的结果，如 {cmd:timer()} 报告的，可能是：

	{cmd}{hline 40}
	timer report
          1.     511.21 /   100000 =  .0051121
          2.       5.89 /   100000 =  .0000589
          3.     505.31 /   100000 =  .0050531
	{hline 40}{txt}

{p 4 4 2}
每次执行 {cmd:subroutine_to_be_timed()} 需要 0.005 秒，并且大部分时间花费在代码的第二部分。
无论您认为代码的第一部分有多低效，改善它对整体执行时间的影响都很小。


{marker conformability}{...}
{title:适用性}

    {cmd:timer_clear(}{it:t}{cmd:)}:
		{it:t}:  1 {it:x} 1  (可选)
	   {it:result}:  {it:void}

    {cmd:timer_on(}{it:t}{cmd:)}, {cmd:timer_off(}{it:t}{cmd:)}:
		{it:t}:  1 {it:x} 1
	   {it:result}:  {it:void}

    {cmd:timer_value(}{it:t}{cmd:)}:
		{it:t}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 2

    {cmd:timer(}{it:t}{cmd:,}{it:txt}{cmd:)}, {cmd:timer(}{it:txt}{cmd:,}{it:t}{cmd:)}: 
	      {it:txt}:  1 {it:x 1}                (可选)
		{it:t}:  1 {it:x} 1, 1 {it:x r}, 2 {it:x} 1  (可选)
	   {it:result}:  {it:void}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。

{p 4 4 2}
计时器分辨率在不同计算机间有所不同，但至少为 0.01 秒。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view timer.mata, adopath asis:timer.mata}; 其他函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_timer.sthlp>}