{smcl}
{* *! version 1.1.5  11jun2019}{...}
{vieweralsosee "[M-5] byteorder()" "mansection M-5 byteorder()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] bufio()" "help mf_bufio_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] stataversion()" "help mf_stataversion_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Programming" "help m4_programming_zh"}{...}
{viewerjumpto "Syntax" "mf_byteorder_zh##syntax"}{...}
{viewerjumpto "Description" "mf_byteorder_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_byteorder_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_byteorder_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_byteorder_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_byteorder_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_byteorder_zh##source"}
{help mf_byteorder:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] byteorder()} {hline 2}}计算机使用的字节顺序
{p_end}
{p2col:}({mansection M-5 byteorder():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real scalar}{bind: }
{cmd:byteorder()}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:byteorder()} 如果计算机是HILO（最重要字节优先）则返回1， 如果是LOHI（最不重要字节优先）则返回2。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection M-5 byteorder()Remarksandexamples:备注和示例}

{pstd}
上述章节不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
假设值00和01分别记录在内存位置58和59，并且你知道记录的是一个2字节的整数。这个2字节的数字应该如何解释：作为0001（即1）还是0100（即十进制的256）？不同计算机的答案是不同的。对于HILO计算机，该数字应被解释为0001。对于LOHI计算机，则被解释为0100。

{pstd}
无论如何，这并不重要，因为计算机在自身内部是一致的。然而，当我们编写可能在使用不同字节顺序的计算机上读取的二进制文件，或从使用不同字节顺序的计算机读取文件时，就会出现问题。

{pstd}
Stata和Mata会自动为你处理这些问题，因此你可以选择停止阅读。然而，{cmd:byteorder()} 是解决方案的基础工具。如果你打算根据自己的二进制文件格式编写代码或处理他人的二进制文件，则可能需要使用它。

{pstd}
解决字节顺序问题有两种常见解决方案：1）以已知字节顺序写入文件，或2）以方便的字节顺序写入文件，并在文件中记录使用的字节顺序。StataCorp倾向于使用第二种，但其他关注此问题的人则使用了这两种解决方案。

{pstd}
在解决方案1中，通常一致地认为文件将按HILO顺序写入。如果你使用的是HILO计算机，则按普通方式读取和写入文件，完全忽略该问题。然而如果你在LOHI计算机上，你必须在将字节放入文件之前反转字节。如果你编写旨在在这两种类型的计算机上执行的代码，则必须考虑两种情况编写代码，并且在读取和写入文件时必须考虑这个问题。

{pstd}
在解决方案2中，文件根据所使用的计算机写入LOHI或HILO。然而，在文件的开头会记录字节顺序。在读取文件时，你将记录的字节顺序与计算机的字节顺序进行比较，如果不同，则反转字节。

{pstd}
Mata缓冲I/O工具会自动为你反转字节。请参阅 {bf:{help mf_bufio_zh:[M-5] bufio()}}。


{marker conformability}{...}
{title:兼容性}

    {cmd:byteorder()}:
          {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_byteorder.sthlp>}