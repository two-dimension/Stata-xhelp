{smcl}
{* *! version 2.2.7  27apr2019}{...}
{vieweralsosee "[D] memory" "mansection D memory"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] creturn" "help creturn_zh"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{viewerjumpto "语法" "memory_zh##syntax"}{...}
{viewerjumpto "描述" "memory_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "memory_zh##linkspdf"}{...}
{viewerjumpto "选项" "memory_zh##options"}{...}
{viewerjumpto "备注" "memory_zh##remarks"}{...}
{viewerjumpto "存储结果" "memory_zh##results"}
{help memory:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[D] memory} {hline 2}}内存管理{p_end}
{p2col:}({mansection D memory:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}显示内存使用报告

{p 8 16 2}
{cmd:memory}


{pstd}显示内存设置

{p 8 15 2}
{opt q:uery} {cmd:memory}


{pstd}修改内存设置

{p 8 13 2}
{cmd:set maxvar}{bind:      }{it:#}
{bind:  }[{cmd:,} {opt perm:anently}]

{p 8 12 2}
{cmd:set niceness}{bind:    }{it:#}
{bind:  }[{cmd:,} {opt perm:anently}]

{p 8 12 2}
{cmd:set min_memory}{bind:  }{it:amt}
[{cmd:,} {opt perm:anently}]

{p 8 12 2}
{cmd:set max_memory}{bind:  }{it:amt}
[{cmd:,} {opt perm:anently}]

{p 8 12 2}
{cmd:set segmentsize} {it:amt}
[{cmd:,} {opt perm:anently}]

{phang}
其中 {it:amt} 是 {it:#}[{cmd:b}|{cmd:k}|{cmd:m}|{cmd:g}]，默认单位是 {cmd:b}。


           {c TLC}{hline 13}{c TT}{hline 9}{c TT}{hline 31}{c TRC}
           {c |} 参数      {c |} 默认值 {c |}      最小值        最大值  {c |}
           {c LT}{hline 13}{c +}{hline 9}{c +}{hline 31}{c RT}
	   {c |} {cmd:maxvar}      {c |}   {cmd:5000}  {c |}          {cmd:2048}         {cmd:120000}  {c |} (MP)
	   {c |}             {c |}   {cmd:5000}  {c |}          {cmd:2048}          {cmd:32767}  {c |} (SE)
	   {c |}             {c |}   {cmd:2048}  {c |}          {cmd:2048}           {cmd:2048}  {c |} (IC)
	   {c |} {cmd:}            {c |}         {c |}                               {c |}
	   {c |} {cmd:niceness}    {c |}      {cmd:5}  {c |}             {cmd:0}             {cmd:10}  {c |}
	   {c |} {cmd:}            {c |}         {c |}                               {c |}
	   {c |} {cmd:min_memory}  {c |}      {cmd:0}  |             {cmd:0}     {cmd:max_memory}  {c |}
	   {c |} {cmd:max_memory}  {c |}      {cmd:.}  {c |} 2*{cmd:segmentsize}              .  {c |}
	   {c |} {cmd:segmentsize} {c |}     {cmd:32m} {c |}             {cmd:1m}            {cmd:32g} {c |} (64位)
           {c BLC}{hline 13}{c BT}{hline 9}{c BT}{hline 31}{c BRC}

{p 4 4 2}
注意：

{p 6 10 2}
1. 
数据集中的最大变量数限制为 {cmd:maxvar}。
{cmd:maxvar} 的默认值在 Stata/MP 和 Stata/SE 中是 5,000，而在 Stata/IC 中是 2,048。 使用 Stata/MP 和 Stata/SE 时，可以通过使用 {cmd:set maxvar} 增加此默认值。 对于 Stata/IC，默认值是固定的。

{p 6 10 2}
2.
大多数用户不需要读到这一点。 Stata 的内存管理是完全自动的。 但是，如果您使用的是 Linux 操作系统，请参阅下文 {it:{help memory##linuxbug: Linux 操作系统中的严重错误}} 下的 {it:备注} 部分。

{p 6 10 2}
3.
对于 Stata/MP，最大观察数固定为 1,099,511,627,775，对于 Stata/SE 和 Stata/IC，固定为 2,147,483,619，无论计算机的大小或内存设置如何。 具体可用的观察数可能因计算机上的内存量而有所限制。 请参见 {help obs_advice_zh:帮助 obs_advice}。

{p 6 10 2}
4. 
{cmd:max_memory} 指定 Stata 用于存储数据的最大内存量。
默认值缺失 ({cmd:.}) 意味着操作系统愿意提供的所有内存。
有三个理由将值从缺失改为有限数值。

{p 14 18 2}
1.
您是 Linux 用户；请参阅下文 {it:{help memory##linuxbug: Linux 操作系统中的严重错误}} 下的 {it:备注} 部分。

{p 14 18 2}
2.
您希望降低意外发生的几率，例如在内存中输入 {bf:expand 100000} 而 Stata 实际上进行此操作。 您宁愿看到一个内存不足的错误消息。
将 {cmd:max_memory} 设置为您计算机上的物理内存，或者设置更大，如果您愿意使用虚拟内存。

{p 14 18 2}
3.
您是系统管理员；请参阅下文 {it:{help memory##sysadmin:系统管理员的注意事项}} 下的 {it:备注} 部分。

{p 6 10 2}
5. 
其余内存参数 {cmd:niceness}、{cmd:min_memory} 和 {cmd:segmentsize} 仅影响效率，不影响可分析的数据集大小。

{p 6 10 2}
6.
{cmd:min_memory}、{cmd:max_memory} 和 {cmd:segmentsize} 的内存量可以以字节、千字节、兆字节或千兆字节指定；在数字末尾附加 {cmd:b}、{cmd:k}、{cmd:m} 或 {cmd:g}。 以下是指定 1 GB 的等效方式：

		{cmd:1073741824}
		   {cmd:1048576k}
		      {cmd:1024m}
		         {cmd:1g}

{p 10 10 2}
后缀 {cmd:k} 定义为（乘以）1024，{cmd:m} 定义为 1024^2，{cmd:g} 定义为 1024^3。

{p 6 10 2}
7. 
64位计算机理论上可以提供高达 18,446,744,073,709,551,616 字节的内存，等同于 17,179,869,184 GB，16,777,216 TB，16,384 PB 或 16 EB。 实际计算机的内存更少。

{p 6 10 2}
8.
Stata 为数据分配内存单位为 {cmd:segmentsize}。 较小的 {cmd:segmentsize} 值可以导致更有效地使用可用内存，但需要 Stata 更频繁地跳转。 默认值提供了良好的平衡。 我们建议只有当您的计算机具有大量内存时才重新设置 {cmd:segmentsize}。

{p 6 10 2}
9.
如果您有大量内存并使用它来处理大数据集，您可能希望增加 {cmd:segmentsize}。 建议的值为 

		        memory       {cmd:segmentsize}
			{hline 24}
		          32g            64m
                          64g           128m
                         128g           256m
                         256g           512m
                         512g             1g
                        1024g             2g
			{hline 24}

{p 5 10 2}
10.
{cmd:niceness} 影响 Stata 多快将未使用的段释放给操作系统。 如果 Stata 释放得太快，通常需要转身立即重新获取它们。 如果 Stata 等待太久，Stata 消耗了未使用的内存。 还原内存的原因之一是对其他用户友好，尤其是在多用户系统上，或者在您运行其他进程时对自己友好。

{p 10 10 2}
    默认值 5 被定义为提供良好的性能。 当前的等待时间定义为

		    niceness       等待时间 (分:秒)
                    {hline 33}
                      10                 0:00.000
                       9                 0:00.125
		       8                 0:00.500
                       7                 0:01
                       6                 0:30
                       5                 1:00
                       4                 5:00
                       3                10:00
                       2                15:00
                       1                20:00
                       0                30:00
                    {hline 33}

{p 10 10 2}
友好度 10 表示完全友好。 友好度 0 表示完全自私和粗鲁。

{p 5 10 2}
11.
{cmd:min_memory} 指定 Stata 不会低于的内存量。 例如，您有一个长的 do 文件。 您知道，在 do 文件的后期，您需要 8 GB。 您希望确保在之后可用内存。 在 do 文件的开头，您 {cmd:set} {cmd:min_memory} {cmd:8g}。

{p 5 10 2}
12.
关于 {cmd:min_memory} 和 {cmd:max_memory}，请注意 Stata 以 {cmd:segmentsize} 块分配内存。
{cmd:min_memory} 和 {cmd:max_memory} 都会向下取整。
因此，Stata 将保留的实际最小内存将是 {cmd:segmentsize}{cmd:*trunc(}{cmd:min_memory/segmentsize}{cmd:)}。
有效的最大内存计算方式类似。
（Stata 不对 {cmd:min_memory} 向上取整，因为某些用户将 {cmd:min_memory} 设置为与 {cmd:max_memory} 相等。）


{marker description}{...}
{title:描述}

{pstd}
此处描述内存使用和设置。

{pstd}
{cmd:memory} 显示 Stata 当前内存使用情况的报告。

{pstd}
{cmd:query memory} 显示 Stata 当前内存设置的值。

{pstd}
{cmd:set maxvar}、{cmd:set niceness}、 
{cmd:set min_memory}、 
{cmd:set max_memory} 和 
{cmd:set segmentsize} 可更改内存设置的值。

{pstd}
如果您是 Unix 用户，请参见下文 {it:{help memory##linuxbug: Linux 操作系统中的严重错误}} 下的 {it:备注} 部分。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D memoryQuickstart:快速开始}

        {mansection D memoryRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt permanently} 
    指定除了立即进行更改之外，新的限制应被记住并成为您调用 Stata 时的默认设置。

{phang}
{opt once}
    在语法图中未显示，但可与 
    {cmd:set niceness}、 
    {cmd:set min_memory}、 
    {cmd:set max_memory} 和 
    {cmd:set segmentsize} 一起使用。 
    供系统管理员使用；请参阅下文 {it:{help memory##sysadmin:系统管理员的注意事项}} 下的 {it:备注} 部分。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

	{help memory##examples:示例}
	{help memory##linuxbug: Linux 操作系统中的严重错误}
	{help memory##sysadmin:系统管理员的注意事项}


{marker examples}{...}
{title:示例}

    获取内存使用报告
        {cmd:. memory}

    获取当前内存设置报告
	{cmd:. query memory}

    重置允许的最大变量数
	{cmd:. set maxvar 5000}

    重置内存设置
	{cmd:. set max_memory 32g}
	{cmd:. set min_memory 8g}
	{cmd:. set max_memory .}
	{cmd:. set min_memory 0}


{* DO NOT DELETE Serious bug in Linus FROM ONLINE help}{...}
{marker linuxbug}{...}
{title:Linux 操作系统中的严重错误}

{pstd}
如果您使用 Linux 操作系统，我们强烈建议您设置 {cmd:max_memory}。
原因如下：

{p 8 8 2}
       "默认情况下，Linux 遵循乐观的内存分配策略。
       这意味着当 malloc() 返回非空时，不保证内存确实可用。 这是一个非常糟糕的错误。 如果系统内存不足，将有一个或多个进程被臭名昭著的 OOM 杀手杀死。 如果在不希望突然失去一些随机选定的进程的情况下使用 Linux，并且内核版本足够新，则可以通过[…]来关闭此过度分配行为。"
{p_end}
{p 30 34 2}
-- 来自 Unix 命令 {cmd:man malloc} 的输出。

{pstd}
这意味着 Stata 向 Linux 请求内存，Linux 同意，然后当 Stata 使用该内存时，内存可能不可用，导致 Linux 崩溃 Stata，甚至更坏。 Linux 文档的撰写者表现出了令人钦佩的自制力。 这个错误可能导致 Linux 本身崩溃。 这是很简单的事情。

{pstd}
倡导这种行为的人称其为“乐观内存分配”。
我们和文档撰写者一样称之为“错误”。

{pstd}
该错误是可以修复的。 在 Unix 提示符下输入 {cmd:man} {cmd:malloc} 获取说明。 请注意，{cmd:man} {cmd:malloc} 是 Unix 的一条指令，而不是 Stata 的。 如果没有提到这个错误，也许它已经被修复。 在对此假设之前，我们建议使用搜索引擎搜索“linux 乐观内存分配”。

{pstd}
另外，如果您设置 {cmd:max_memory}，Stata 可以与该错误共存。 找到计算机上的物理内存并将 {cmd:set} {cmd:max_memory} 设置为该值。 如果您想使用虚拟内存，您可能会设置得更大，只需确保您的 Linux 系统可以提供请求的内存。 指定选项 {cmd:permanently}，这样您只需做一次。 例如，

	{cmd:. set max_memory 16g, permanently}

{pstd}
这样做并不能保证不会出现错误，但会降低其发生的可能性。


{marker sysadmin}{...}
{title:系统管理员的注意事项}

{pstd}
系统管理员可以设置 {cmd:max_memory}、{cmd:min_memory} 和 {cmd:niceness}，以至 Stata 用户无法更改它们。 他们也可以使用 {cmd:max_preservemem}（参见 {manhelp preserve P:preserve}）。 您可能希望在共享计算机上执行此操作，以防止单个用户占用资源。

{pstd}
在用户的个人计算机上没有理由这样做。

{pstd}
您还可以设置 {cmd:segmentsize}，但即使在共享系统上也没有理由这样做。

{pstd}
说明是
创建（或编辑）位于 Stata 可执行文件所在目录的文本文件 {cmd:sysprofile.do}。
添加以下行

		{cmd:set min_memory 0, once}
		{cmd:set max_memory 16g, once}
		{cmd:set niceness 5, once}

{pstd}
该文件必须是纯文本，并且每行末尾必须有行结束字符，包括最后一行。 建议在末尾添加空行。

{pstd}
在 {cmd:set} {cmd:max_memory} 中的 {cmd:16g} 只是一个示例。 选择一个合适的数字。

{pstd}
推荐将 {cmd:min_memory} 设置为 0，将 {cmd:niceness} 设置为 5。


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:memory} 将所有报告的数字存储在 {cmd:r()} 中。
StataCorp 可能会更改 {cmd:memory} 的报告内容，您不应期望在将来的 Stata 版本中存在相同的 {cmd:r()} 结果。 要查看 {cmd:memory} 的存储结果，输入 {cmd:return} {cmd:list,} {cmd:all}.{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <memory.sthlp>}