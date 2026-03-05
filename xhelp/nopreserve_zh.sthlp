{smcl}
{* *! version 1.0.6  23oct2017}{...}
{vieweralsosee "[P] nopreserve option" "mansection P nopreserveoption"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] preserve" "help preserve_zh"}{...}
{viewerjumpto "Syntax" "nopreserve_zh##syntax"}{...}
{viewerjumpto "Description" "nopreserve_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "nopreserve_zh##linkspdf"}{...}
{viewerjumpto "Option" "nopreserve_zh##option"}{...}
{viewerjumpto "Remarks" "nopreserve_zh##remarks"}
{help nopreserve:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[P] nopreserve option} {hline 2}}nopreserve 选项{p_end}
{p2col:}({mansection P nopreserveoption:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2} 
{it:stata_command} 
...
[{cmd:,} ...
{cmd:nopreserve}
...]


{marker description}{...}
{title:描述}

{p 4 4 2}
某些 Stata 命令具有 {cmd:nopreserve} 选项。此选项供程序员在将 {it:stata_command} 用作另一命令的子例程时使用。  


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P nopreserveoptionRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker option}{...}
{title:选项}

{p 4 8 2}
{cmd:nopreserve}
    指定 {it:stata_command} 无需{cmd:preserve}内存中的数据。通常情况下，{it:stata_command} 是作为另一个程序的子例程使用的，调用者已保存内存中的数据，并且在调用者的保存副本恢复数据之前，不需要再次访问数据。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
某些命令在执行其任务的过程中会更改内存中的数据，即使该命令在官方上并不改变内存中的数据。这样的命令通过使用 {help preserve_zh} 在磁盘上创建数据的临时副本，随后再将其恢复到内存中。

{p 4 4 2}
即使一些命令的全部目的是对内存中的数据进行修改，有时也会临时复制数据，以防用户在数据更改仍在进行时按下 {hi:Break}。

{p 4 4 2}
这是通过使用 {cmd:preserve} 来实现的；请参见 {manlink P preserve}。

{p 4 4 2}
假设 {cmd:alpha} 和 {cmd:beta} 都是通过使用 {cmd:preserve} 来实现的。假设 {cmd:alpha} 将 {cmd:beta} 用作子例程。如果 {cmd:alpha} 本身没有打算在调用 {cmd:beta} 后使用数据，则 {cmd:beta} 保存和恢复数据是没有必要的，因为 {cmd:alpha} 已经保存了将恢复到内存的数据。然后，{cmd:alpha} 应该在调用 {cmd:beta} 时指定 {cmd:nopreserve} 选项。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <nopreserve.sthlp>}