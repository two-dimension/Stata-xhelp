{smcl}
{* *! version 1.0.2  14jun2019}{...}
{vieweralsosee "[M-5] st_frame*()" "mansection M-5 st_frame*()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] frames intro" "help frames intro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] st_store()" "help mf_st_store_zh"}{...}
{vieweralsosee "[M-5] st_view()" "help mf_st_view_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] putmata" "help putmata_zh"}{...}
{viewerjumpto "Syntax" "mf_st_frame_zh##syntax"}{...}
{viewerjumpto "Description" "mf_st_frame_zh##description"}{...}
{viewerjumpto "Remarks" "mf_st_frame_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_st_frame_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_st_frame_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_st_frame_zh##source"}
{help mf_st_frame:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] st_frame*()} {hline 2}}数据框架操作 
{p_end}
{p2col:}({mansection M-5 st_frame*():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{col 8}{it:字符串标量}{...}
{col 25}{cmd:st_framecurrent()}

{col 8}{it:字符串列向量}{...}
{col 25}{cmd:st_framedir()}

{col 8}{it:void}{...}
{col 25}{cmd:st_framecreate(}{...}
{it:fname}{cmd:)}

{col 8}{it:实数标量}{...}
{col 24}{cmd:_st_framecreate(}{...}
{it:fname}{cmd:,} {it:noisy}{cmd:)}

{col 8}{it:void}{...}
{col 25}{cmd:st_framecurrent(}{it:fname}{cmd:)}

{col 8}{it:实数标量}{...}
{col 24}{cmd:_st_framecurrent(}{...}
{it:fname}{cmd:,} {it:noisy}{cmd:)}

{col 8}{it:void}{...}
{col 25}{cmd:st_framerename(}{...}
{it:fname}{cmd:,} {it:newfname}{cmd:)}

{col 8}{it:实数标量}{...}
{col 24}{cmd:_st_framerename(}{...}
{it:fname}{cmd:,} {it:newfname}{cmd:,} {it:noisy}{cmd:)}

{col 8}{it:void}{...}
{col 25}{cmd:st_framedrop(}{...}
{it:fname}{cmd:)}

{col 8}{it:实数标量}{...}
{col 24}{cmd:_st_framedrop(}{...}
{it:fname}{cmd:,} {it:noisy}{cmd:)}

{col 8}{it:void}{...}
{col 25}{cmd:st_framedropabc()}

{col 8}{it:void}{...}
{col 25}{cmd:st_framereset()}

{col 8}{it:void}{...}
{col 25}{cmd:st_framecopy(}{it:fname_to}{cmd:,} {it:fname_from}{cmd:)}

{col 8}{it:实数标量}{...}
{col 24}{cmd:_st_framecopy(}{it:fname_to}{cmd:,} {it:fname_from}{...}
{cmd:,} {it:noisy}{cmd:)}

{col 8}{it:实数标量}{...}
{col 25}{cmd:st_frameexists(}{it:name}{cmd:)}

{pstd}
其中

{pmore2}
{it:fname} 是一个 {it:字符串标量}，包含一个现有框架的名称。
{p_end}

{pmore2}
{it:newfname} 是一个 {it:字符串标量}，包含一个不是现有框架名称的名称。 
{p_end}

{pmore2}
{it:name} 是一个 {it:字符串标量}，包含一个名称，无论它是否属于现有框架。 
{p_end}

{pmore2}
{it:noisy} 是一个 {it:实数标量}，其值为 0（错误信息被抑制）或任何非零值（显示错误信息）。


{marker description}{...}
{title:描述}

{pstd}
{cmd:st_framecurrent()} 返回当前（工作）框架的名称。

{pstd}
{cmd:st_framedir()} 返回所有现有框架的名称。

{pstd}
{cmd:st_framecreate()} 创建一个新框架，但不将其设置为当前框架。

{pstd}
{cmd:st_framecurrent()} 更改当前（工作）框架的身份。

{pstd}
{cmd:st_framerename()} 重命名现有框架，可以是当前框架。

{pstd}
{cmd:st_framedrop()} 删除或消除不是当前框架的框架。

{pstd}
{cmd:st_framedropabc()} 删除或消除除当前框架之外的所有框架。 {cmd:abc} 代表“除当前框架外的所有”。

{pstd}
{cmd:st_framereset()} 将 Stata 或 Mata 重置为包含一个名为 {cmd:default} 的空框架。

{pstd}
{cmd:st_framecopy()} 从一个框架复制或复制完整内容到另一个框架，如果需要，清除目标框架的先前内容。

{pstd}
{cmd:st_frameexists()} 确定命名为 {it:name} 的框架是否存在。

{pstd}
{cmd:_st_framecreate()},
{cmd:_st_framecurrent()},
{cmd:_st_framerename()},
{cmd:_st_framedrop()} 和
{cmd:_st_framecopy()}
执行与
{cmd:st_framecreate()},
{cmd:st_framecurrent()},
{cmd:st_framerename()},
{cmd:st_framedrop()} 和
{cmd:st_framecopy()} 相同的操作，除了它们在处理错误时的方式不同。
前者无下划线的函数在使用不当时会发出错误消息，显示回溯日志，并中止执行。
带下划线的函数不会中止。它们返回一个非零值并继续执行。

{pstd}
有关框架的概述，请参见 {helpb frames intro:[D] frames intro}。


{marker remarks}{...}
{title:备注}

{pstd}
Stata 允许在内存中存储多个数据集。每个数据集存储在一个单独的框架中，您给它命名。有关框架的概述，请参见 {helpb frames intro:[D] frames intro}。 {cmd:st_frame*()} 函数允许您创建新框架、删除现有框架，并在一个框架之间切换当前或工作框架的身份。
Stata 命令和 Mata 函数在当前（工作）框架上运行。
通过创建 {help mf_st_view_zh:Mata 视图} 指向这些框架并在表达式中使用它们，可以同时访问来自多个框架的数据。

{pstd}
请注意，一些 {cmd:st_frame*()} 命令是成对的：

	       {it:void}  {cmd:st_framecreate(}...{cmd:)}
	{it:实数标量} {cmd:_st_framecreate(}...{cmd:,} {it:noisy}{cmd:)}

	       {it:void}  {cmd:st_framecurrent(}...{cmd:)}
	{it:实数标量} {cmd:_st_framecurrent(}...{cmd:,} {it:noisy}{cmd:)}

	       {it:void}  {cmd:st_framerename(}...{cmd:)}
	{it:实数标量} {cmd:_st_framerename(}...{cmd:,} {it:noisy}{cmd:)}

	       {it:void}  {cmd:st_framedrop(}...{cmd:)}
	{it:实数标量} {cmd:_st_framedrop(}...{cmd:,} {it:noisy}{cmd:)}

	       {it:void}  {cmd:st_framecopy(}...{cmd:)}
	{it:实数标量} {cmd:_st_framecopy(}...{cmd:,} {it:noisy}{cmd:)}

{pstd}
成对的函数执行相同操作，但处理错误的方式不同。
无下划线的函数会发出错误消息、显示回溯日志并在使用不当时中止执行。
例如：

        : {cmd:st_framecreate("default")}
        {err:框架名称 default 已存在}
                {err:st_framecreate():   3598  Stata 返回错误}
                          {err:<istm>:      -  函数返回错误}
        {search r(3598):r(3598);}

{pstd}
带下划线的函数不会中止。它们返回一个非零值并继续执行。考虑以下函数：

        {cmd:void example()}
        {cmd:{c -(}}
		{cmd:rc = _st_framecreate("default", 1)}
                {cmd:printf("继续执行, rc = %f\n", rc)}
        {cmd:{c )-}}

{pstd}
它的执行结果是：

        : {cmd:example()}
        {err:框架名称 default 已存在}
        {err:继续执行, rc = 110}

{pstd}
错误消息出现了，但执行仍然继续，错误消息之所以出现，是因为我们在调用 {cmd:_st_framecreate()} 时为 {it:noisy} 编码了 {cmd:1}：

		{cmd:rc = _st_framecreate("default", 1)}

{pstd}
如果我们编码为 {cmd:0}，错误消息不会出现，但执行仍将继续，我们仍会看到“继续执行”消息，{cmd:rc} 也将仍然包含 110。

{pstd}
110 是 Stata 返回代码的一个示例。当函数在没有错误的情况下运行时，Stata 返回代码为 0。数字 110 是“已存在”的特定代码。某些东西已经存在，在这种情况下，就是框架名称。如果我们使用 {cmd:_st_framedrop()} 来说明返回代码，并指定一个不存在的框架名称，则返回代码将是 111，表示某个东西不存在，该东西就是框架名称。

{pstd}
下划线变体的存在是为了允许您编写更优雅的代码，使输出不会暗示用户您的代码存在错误，而实际上是用户错误使用了代码。
我们可以将 {cmd:example()} 编写为

        {cmd:void example()}
        {cmd:{c -(}}
		{cmd:rc = _st_framecreate("default", 1)}
                {cmd:if (rc!=0) exit(rc)}
                {cmd:printf("继续执行, rc = %f\n", rc)}
        {cmd:{c )-}}

{pstd}
然后输出将是：

        : {cmd:example()}
        {err:框架名称 default 已存在}
        {search r(110):r(110);}


{marker conformability}{...}
{title:兼容性}

{p 4 8 2}
所有 {cmd:st_frame*()} 和 {cmd:_st_frame*()} 函数的参数都是 1 {it:x} 1。


{marker diagnostics}{...}
{title:诊断}

{pstd}
{cmd:st_framecurrent()}, 
{cmd:st_framedir()}, 
{cmd:st_framedropabc()}, 
和
{cmd:st_frameexists()} 总是成功运行。
其他 {cmd:st_frame*()} 命令在发生错误时会中止执行。

{pstd}
{cmd:_st_frame*()} 命令从不中止。它们返回 0 或相关的非零 Stata 返回代码。 


{marker source}{...}
{title:源代码}

{pstd}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_frame.sthlp>}