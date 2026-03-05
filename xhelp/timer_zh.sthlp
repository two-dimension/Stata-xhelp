{smcl}
{* *! version 1.1.5  19oct2017}{...}
{vieweralsosee "[P] timer" "mansection P timer"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] timer()" "help mf_timer_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] profiler" "help profiler_zh"}{...}
{vieweralsosee "[P] rmsg" "help rmsg_zh"}{...}
{viewerjumpto "Syntax" "timer_zh##syntax"}{...}
{viewerjumpto "Description" "timer_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "timer_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "timer_zh##remarks"}{...}
{viewerjumpto "Stored results" "timer_zh##results"}
{help timer:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[P] timer} {hline 2}}通过记录和报告花费的时间来测量代码的时间段
{p_end}
{p2col:}({mansection P timer:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}将定时器重置为零

	{cmd:timer} {cmd:clear} [{it:#}]


{pstd}开启定时器

	{cmd:timer} {cmd:on} {it:#}


{pstd}关闭定时器

	{cmd:timer} {cmd:off} {it:#}


{pstd}列出计时信息

	{cmd:timer} {cmd:list} [{it:#}]


{phang}
其中 {it:#} 为整数，范围从 1 到 100。


{marker description}{...}
{title:描述}

{pstd}
{cmd:timer} 启动、停止并报告最多 100 个间隔定时器。结果以秒为单位报告。

{pstd}
{cmd:timer clear} 将定时器重置为零。

{pstd}
{cmd:timer on} 开始计时。 {cmd:timer off} 停止计时。计时可以多次开启和关闭而不清零，这会使得定时器累积时间。

{pstd}
{cmd:timer list} 列出计时信息。如果没有指定 {it:#}，则不列出值为零的定时器。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P timerRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}{cmd:timer} 可用于计时代码的各个部分。例如：

        {cmd:program tester}
          {cmd:        version} {it:...}
	  {cmd:        timer clear 1}
	  {cmd:        forvalues repeat=1(1)100 {c -(}}
	  {cmd:	              timer on 1}
	  {cmd:	              mycmd {it:...}}
	  {cmd:	              timer off 1}
	  {cmd:        {c )-}}
	  {cmd:        timer list 1}
	{cmd:end}


{marker results}{...}
{title:存储结果}

{pstd}{cmd:timer list} 将以下内容存储在 {cmd:r()} 中：
                                                                                
{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(t1)}}第一个定时器的值{p_end}
{synopt:{cmd:r(nt1)}}{it:#} 开启和关闭的次数{p_end}

{synopt:{cmd:r(t2)}}第二个定时器的值{p_end}
{synopt:{cmd:r(nt2)}}{it:#} 开启和关闭的次数{p_end}

{synopt:.}{p_end}
{synopt:.}{p_end}
{synopt:.}{p_end}

{synopt:{cmd:r(t100)}}第 100 个定时器的值{p_end}
{synopt:{cmd:r(nt100)}}{it:#} 开启和关闭的次数{p_end}
{p2colreset}{...}

{pstd}
仅存储 {cmd:r(nt}{it:#}{cmd:)}!=0 的值。

{pstd}
由其他命令产生的 {cmd:r()} 结果不会被清空。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <timer.sthlp>}