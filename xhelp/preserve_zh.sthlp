{smcl}
{* *! version 1.1.10  27jun2019}{...}
{vieweralsosee "[P] preserve" "mansection P preserve"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] nopreserve option" "help nopreserve_zh"}{...}
{vieweralsosee "[D] snapshot" "help snapshot_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] macro" "help tempfile"}{...}
{viewerjumpto "Syntax" "preserve_zh##syntax"}{...}
{viewerjumpto "Description" "preserve_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "preserve_zh##linkspdf"}{...}
{viewerjumpto "Options" "preserve_zh##options"}{...}
{viewerjumpto "Remarks" "preserve_zh##remarks"}{...}
{viewerjumpto "Technical notes" "preserve_zh##technote"}
{help preserve:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[P] preserve} {hline 2}}保存和恢复数据{p_end}
{p2col:}({mansection P preserve:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    保存数据

{p 8 17 2}{cmd:preserve} [{cmd:,} {cmdab:ch:anged}]


    恢复数据

{p 8 16 2}{cmd:restore} [{cmd:,} {cmd:not} {cmdab:pres:erve}]


    设置由 {cmd:preserve} 快速存储的最大内存

{p 8 12 2}
{cmd:set max_preservemem} {it:amt}
[{cmd:,} {opt perm:anently}]

{phang}
其中 {it:amt} 是 {it:#}[{cmd:b}|{cmd:k}|{cmd:m}|{cmd:g}]，默认单位为 {cmd:b}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:preserve} 保存数据，确保程序终止后数据会被恢复。

{pstd}
{cmd:restore} 强制立即恢复数据。

{pstd}
{cmd:set} {cmd:max_preservemem} 仅在 Stata/MP 中可用，控制 {cmd:preserve} 用于存储保留数据集在内存中的最大内存量。一旦超过此限制，{cmd:preserve} 将在磁盘上存储数据集。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P preserveRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}{cmd:changed} 指示 {cmd:preserve} 仅保存自上次保存以来数据已更改的标志。强烈不建议使用此选项；详见 {it:{help preserve##technote:技术说明}}。

{phang}{cmd:not} 指示 {cmd:restore} 取消之前的 {cmd:preserve}。

{phang}{cmd:preserve} 指示 {cmd:restore} 立即恢复数据，但不在程序结束时取消数据恢复。如果未指定 {cmd:preserve}，则在程序结束时的计划恢复将被取消。

{phang}
{opt permanently} 指示 {cmd:set} {cmd:max_preservemem}，使新限制被记住并成为调用 Stata 时的默认设置。

{phang}
{opt once} 
    不在语法图中显示，但允许与 {cmd:set max_preservemem} 一起使用。它供系统管理员使用，并允许他们设置 {cmd:max_preservemem}，以便用户无法修改；详见 {it:{help memory##sysadmin:系统管理员注意事项}} 在 {manhelp memory D:memory} 中。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:preserve} 和 {cmd:restore} 处理编程问题，其中用户数据必须更改以实现期望的结果，但在程序结束时，程序员希望撤销对数据所造成的损害。当发出 {cmd:preserve} 时，用户数据被保存。内存中的数据保持不变。程序或 do-file 结束时，用户数据会自动恢复。

{pstd}
在 {cmd:preserve} 之后，程序员还可以指示 Stata 使用 {cmd:restore} 命令立即恢复数据。这在程序员需要原始数据返回而知道不会对数据造成进一步损害时非常有用。{cmd:restore,} {cmd:preserve} 可以在程序员需要数据返回但计划进一步损害时使用。{cmd:restore,} {cmd:not} 可以在程序员希望取消之前的 {cmd:preserve} 并将当前内存中的数据返回给用户时使用。

{pstd}
为了提高速度，Stata/SE 和 Stata/MP 使用 {help frames_zh} 将数据集保存在内存中，而不是写入磁盘。除非达到 {cmd:max_preservemem} 限制（根据保留数据集消耗的内存）。一旦达到限制，它们将退回到将保留的数据集写入磁盘。Stata/IC 通常在内存较少的计算机上使用，因此总是将数据集保存在磁盘上。

{pstd}
{cmd:set} {cmd:max_preservemem} 的默认设置为 {cmd:1g}，即 1 千兆字节。如果 {it:amt} 设置为 {cmd:0b}（0 字节），{cmd:preserve} 将始终使用磁盘存储。如果 {it:amt} 设置为 {cmd:.}，{cmd:preserve} 将使用操作系统愿意提供的尽可能多的内存。{cmd:preserve} 使用的内存是额外的，不包括您内存中可能拥有的其他数据集的内存，并且不包含在您的 {cmd:max_memory} 设置中（详见 {manhelp memory D:memory}）。更改此设置时请记住这一点。


{marker technote}{...}
{title:技术说明}

{pstd}
我们上面提到，使用 {cmd:set} {cmd:max_preservemem}，如果您将 {it:amt} 设置为 {cmd:0b}（0 字节），{cmd:preserve} 将使用磁盘存储。实际上，如果您将 {it:amt} 设置为小于 Stata 数据段的大小的任何值（见 {cmd:set} {cmd:segmentsize} 在 {manhelp memory D:memory} 中），{cmd:preserve} 将始终使用磁盘存储。您可以输入 {cmd:query} {cmd:memory} 查看当前的 {cmd:segmentsize} 和 {cmd:max_preservemem} 设置。

{pstd}
{cmd:preserve,} {cmd:changed} 最好避免，尽管它非常快速。{cmd:preserve,} {cmd:changed} 不会保存数据；它仅记录自数据上次保存以来数据是否已更改（如 {cmd:describe} 所提到的，以及在用户不另行说明 {cmd:clear} 时由 {cmd:exit} 和 {cmd:use} 检查），并在程序结束时恢复标志。程序员必须确保数据确实没有更改。

{pstd}
只要您的程序使用由 {cmd:tempvar} 创建的临时变量（见 {help macro_zh:[P] macro}），自上次保存以来的更改标志就不会被更改 — Stata 可以追踪该临时数据的更改，以便它能够自己撤销。事实上，我们无法想出任何 {cmd:preserve,} {cmd:changed} 的用途，因此仅出于保留我们的更有想象力的用户的快乐而包含它。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <preserve.sthlp>}