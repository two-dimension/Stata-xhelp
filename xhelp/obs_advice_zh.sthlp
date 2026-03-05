{smcl}
{* *! version 1.0.2  14jun2019}{...}
{vieweralsosee "[D] memory" "help memory_zh"}{...}
{vieweralsosee "help limits_zh" "help limits_zh"}
{help obs_advice:English Version}
{hline}{...}
{title:关于超过20亿个观测值的建议}

{pstd}
Stata/MP 允许超过20亿个观测值。
观测值的数量完全取决于您计算机的内存。 Stata 不会对您进行限制；它最多可以计算到1万亿个观测值。

{pstd}
我们有关于使用此功能的建议。设置 {cmd:min_memory} 和 {cmd:segmentsize} 会显著提高处理大量观测值的性能。

{pstd}
首先，让我们来看看您可能能够处理多少观测值：

                                       数十亿个观测值
                   计算机的  内存          情况 
                     内存     使用       (1)    (2)    (3) 
		   {hline 43}
                      128GB    112GB      1.8    1.4    1.0
                      256GB    240GB      3.8    2.9    2.1
                      512GB    496GB      7.9    6.1    4.4
                     1024GB   1008GB     16.2   12.3    9.8
                     1536GB   1520GB     24.4   18.5   13.6
		   {hline 43}
{p 12 12 12}
注意：
{p_end}
{p 12 12 12}
{it:使用的内存} 是用于存储数据的总量。我们为 Stata 和其他进程留出了 16GB 的空闲内存。我们假设 Stata 几乎消耗了计算机的所有资源（单用户）。

{p 12 12 12}
{it:观测值} 留出额外空间用于添加三个双精度变量，因为 Stata 命令通常会添加工作变量。三种情况使用的 {it:宽度} 为您数据的宽度，不包括工作变量。

{p 12 12 2}
         情况 1:  宽度 = 43 字节 (同 auto.dta) {break}
         情况 2:  宽度 = 64 字节{break}
         情况 3:  宽度 = 96 字节

{p 12 16 2}
	 计算：
{p_end}
{*             {it:obs} = (({it:memory_used}/{it:width}+24)*(1024²/1000²)}
		          {it:memory_used}    1024³
                 {it:obs}  =  {hline 12} × {hline 6}
                          {it:width} + 24     1000³

{p 12 16 2}
其中 {it:memory_used} 以千兆字节为单位，{it:obs} 以十亿为单位。

{pstd}
如果您更改两个内存设置 {cmd:segmentsize} 和 {cmd:min_memory}，Stata 在处理大量观测值时将运行得更快。
将 {cmd:segmentsize} 设置为 2g（默认值为 32m），

	. {cmd:set segmentsize 2g}

{pstd}
将 {cmd:min_memory} 设置为您希望 Stata 使用的内存量，这应该是上表中您的计算机的 {it:使用的内存} 或更小的值：

	. {cmd:set min_memory 240g}   /* 或更小的值针对 256g 计算机 */

	. {cmd:set min_memory 496g}   /* 或更小的值针对 512g 计算机 */

	. {cmd:set min_memory 1008g}  /* 或更小的值针对 1TB 计算机   */

	. {cmd:set min_memory 1520g}  /* 或更小的值针对 1.5TB 计算机 */

{pstd}
如果您使用的是多用户计算机，请注意，设置 {cmd:min_memory} 会使 Stata 为您分配和保留内存，从而影响其他用户。

{pstd}
如果您正在使用框架（请参见 {helpb frames intro:[D] frames intro}）在内存中处理多个数据集，请注意 {cmd:min_memory} 设置是按框架进行操作的。每个框架将使用 {bf:min_memory} 的默认值。如果您在当前框架中将 {cmd:set} {cmd:min_memory} 设置为，例如，{bf:240g}，然后又创建并切换到另一个框架，则需要为该框架 {cmd:set} {cmd:min_memory}，如果希望其使用的值不同于默认值。

{pstd}
如果您正在处理大型数据集并且系统上有大量可用内存，您可能还希望调整 {cmd:set} {cmd:max_preservemem} 设置，该设置控制 Stata 作为临时存储空间为保留数据集使用的内存量。请参见 {manhelp preserve D}。

{pstd}
在完成大量观测值的使用后，请将值恢复到默认设置（或直接退出 Stata）。

	. {cmd:set min_memory 0}

	. {cmd:set segmentsize 32m}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <obs_advice.sthlp>}