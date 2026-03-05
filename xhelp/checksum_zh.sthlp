{smcl}
{* *! version 1.1.10  19oct2017}{...}
{vieweralsosee "[D] checksum" "mansection D checksum"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] net" "help net_zh"}{...}
{vieweralsosee "[D] use" "help use_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] datasignature" "help datasignature_zh"}{...}
{viewerjumpto "Syntax" "checksum_zh##syntax"}{...}
{viewerjumpto "Description" "checksum_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "checksum_zh##linkspdf"}{...}
{viewerjumpto "Technical note" "checksum_zh##technote"}{...}
{viewerjumpto "Options" "checksum_zh##options"}{...}
{viewerjumpto "Examples" "checksum_zh##examples"}{...}
{viewerjumpto "Stored results" "checksum_zh##results"}
{help checksum:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[D] checksum} {hline 2}}计算文件的校验和{p_end}
{p2col:}({mansection D checksum:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:checksum}
{it:{help filename_zh}}
[{cmd:,} {it:options}]

{p 8 12 2}
{opt se:t}
{cmd:checksum}
{c -(}{cmd:on}|{cmd:off}{c )-}
[{cmd:,} {opt perm:anently}]

{synoptset 28}{...}
{synopthdr}
{synoptline}
{synopt :{opt save}}将输出保存到 {it:{help filename_zh}}{opt .sum}; 默认是显示报告{p_end}
{synopt :{opt replace}}可能覆盖 {it:{help filename_zh}}{opt .sum}; 与 {opt save} 一起使用{p_end}
{synopt :{cmdab:sa:ving(}{it:{help filename_zh}2}[{cmd:,} {opt replace}]{cmd:)}}将输出保存到 {it:filename2}; {opt save} 的替代方案{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{opt checksum} 为后续 Stata 读取通过网络传输的文件创建 {it:{help filename_zh}}{opt .sum} 文件。这些可选文件用于降低文件损坏未被检测到的可能性。每当 Stata 通过 {cmd:use}、{cmd:net}、{cmd:update} 等读取文件 {it:filename.suffix} 时，它也会查找 {it:filename}{opt .sum}。如果 Stata 找到该文件，它会读取并使用其内容来验证第一个文件是否准确接收。如果有错误，Stata 会告知用户文件无法读取。

{pstd}
{opt set checksum on} 告诉 Stata 验证通过网络下载的文件是否被准确接收。

{pstd}
{opt set checksum off}（默认为此）告诉 Stata 跳过文件验证。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D checksumQuickstart:快速入门}

        {mansection D checksumRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker technote}{...}
{title:技术说明}

{pstd}
{cmd:checksum} 按照 POSIX 1003.2 规范计算 CRC 校验和并显示文件大小（以字节为单位）。 {cmd:checksum} 的结果与 Unix 的 {cmd:cksum} 命令相同。比较原始文件的校验和与接收文件的校验和可以确保接收文件的完整性。

{pstd}
在将 Stata 的 {cmd:checksum} 结果与 Unix 进行比较时，请不要混淆 Unix 的 {cmd:sum} 和 {cmd:cksum} 命令。Unix 的 {cmd:cksum} 和 Stata 的 {cmd:checksum} 使用比 Unix 的 {cmd:sum} 更强健的算法。在某些 Unix 操作系统中，可能没有 {cmd:cksum} 命令，而是通过在 {cmd:sum} 中指定一个选项来获得更强健的算法。


{marker options}{...}
{title:选项}

{phang}
{opt save} 将 {opt checksum} 命令的输出保存到文本文件 {it:{help filename_zh}}{opt .sum}。默认情况下只显示报告而不创建文件。

{phang}
{opt replace} 与 {opt save} 一起使用，允许 Stata 覆盖现有的 {it:{help filename_zh}}{opt .sum} 文件。

{phang}
{cmd:saving(}{it:{help filename_zh}2} [{cmd:, replace}]{cmd:)} 是 {opt save} 的替代方案。它将输出保存在指定的文件名中。您必须提供文件扩展名（如果需要），因为默认为没有扩展名。

{phang}
{opt permanently} 指定在立即进行更改的同时，还要记住 {opt checksum} 设置，并在您调用 Stata 时将其作为默认设置。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. save auto}

{pstd}计算文件的校验和{p_end}
{phang2}{cmd:. checksum auto.dta}{p_end}
{phang2}auto.dta 的校验和 = 2694850408，大小 = 6442

{pstd}计算文件的校验和并将输出保存到 {cmd:auto.sum}{p_end}
{phang2}{cmd:. checksum auto.dta, save}

{pstd}显示 {cmd:auto.sum} 的内容{p_end}
{phang2}{cmd:. type auto.sum}{p_end}
{phang2}1 6442 2694850408{p_end}

{pstd}
第一个值是版本号（可能用于未来的版本）。第二个数字是文件的字节大小。可以与校验和值一起使用，以确保文件传输不发生损坏。第三个数字是校验和值本身。两个不同的文件可能有相同的校验和值，但两个具有相同校验和值的文件具有相同文件大小的可能性非常小。


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:checksum} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(version)}}{cmd:checksum} 版本号{p_end}
{synopt:{cmd:r(filelen)}}文件长度（以字节为单位）{p_end}
{synopt:{cmd:r(checksum)}}{cmd:checksum} 值{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <checksum.sthlp>}