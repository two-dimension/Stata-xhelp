{smcl}
{* *! version 1.1.12  11may2018}{...}
{viewerdialog compress "dialog compress"}{...}
{vieweralsosee "[D] compress" "mansection D compress"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] 数据类型" "help data_types_zh"}{...}
{vieweralsosee "[D] recast" "help recast_zh"}{...}
{viewerjumpto "语法" "compress_zh##syntax"}{...}
{viewerjumpto "菜单" "compress_zh##menu"}{...}
{viewerjumpto "描述" "compress_zh##description"}{...}
{viewerjumpto "PDF文档链接" "compress_zh##linkspdf"}{...}
{viewerjumpto "选项" "compress_zh##option"}{...}
{viewerjumpto "备注" "compress_zh##remarks"}{...}
{viewerjumpto "示例" "compress_zh##example"}{...}
{viewerjumpto "视频示例" "compress_zh##video"}
{help compress:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[D] compress} {hline 2}}压缩内存中的数据{p_end}
{p2col:}({mansection D compress:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmd:compress} [{varlist}] [{cmd:,} {cmd:nocoalesce}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 数据工具 > 优化变量存储}


{marker description}{...}
{title:描述}

{pstd}
{opt compress} 尝试减少你的数据使用的内存量。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D compressQuickstart:快速开始}

        {mansection D compressRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:nocoalesce} 指定 {cmd:compress} 不尝试查找 {cmd:strL} 变量中的重复值以节省内存。如果未指定 {cmd:nocoalesce}，{cmd:compress} 必须按每个 {cmd:strL} 变量对数据进行排序，这在大型数据集中可能耗时较长。


{marker remarks}{...}
{title:备注}

{pstd}
{opt compress} 通过考虑两件事来减少数据集的大小。首先，它考虑降低

{p 8 23 2}{cmd:double}s{space 3}到{space 3}{cmd:long}s、{cmd:int}s 或 {cmd:byte}s{p_end}
{p 8 23 2}{cmd:float}s{space 4}到{space 3}{cmd:int}s 或 {cmd:byte}s{p_end}
{p 8 23 2}{cmd:long}s{space 5}到{space 3}{cmd:int}s 或 {cmd:byte}s{p_end}
{p 8 23 2}{cmd:int}s{space 6}到{space 3}{cmd:byte}s{p_end}
{p 8 23 2}{cmd:str}{it:#}s{space 5}到{space 3}更短的 {cmd:str}{it:#}s{p_end}
{p 8 23 2}{cmd:strL}s{space 5}到{space 3}{cmd:str}{it:#}s

{pin}
请参见 {manhelp data_types D:数据类型} 以了解这些存储类型的解释。

{pstd}
第二，它考虑合并每个 {cmd:strL} 变量中的 {cmd:strL} 值。也就是说，如果一个 {cmd:strL} 变量在多个观测值中取相同的值，{cmd:compress} 可以将这些值链接到一个单一的内存位置以节省内存。为了检查这一点，{cmd:compress} 必须按每个 {cmd:strL} 变量对数据进行排序。你可以使用 {cmd:nocoalesce} 选项告知 {cmd:compress} 不用花时间进行此检查。如果 {cmd:compress} 确实检查是否可以合并 {cmd:strL} 值，它将执行节省更多内存的操作——合并 {cmd:strL} 值或将 {cmd:strL} 降级为 {cmd:str}{it:#}——如果通过更改 {cmd:strL} 不能节省内存，则不会执行任何操作。

{pstd}
{opt compress} 在逻辑上不会改变你的数据，但（可能）显著减少大小。{opt compress} 从不出错，也不会导致精度损失或截断字符串。


{marker example}{...}
{title:示例}

    {cmd:. webuse compxmp2}
    {cmd:. compress}


{marker video}{...}
{title:视频示例}

{phang2}{browse "https://www.youtube.com/watch?v=PIV9ugn6XL8":如何优化变量的存储}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <compress.sthlp>}