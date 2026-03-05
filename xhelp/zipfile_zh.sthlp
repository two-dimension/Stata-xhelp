{smcl}
{* *! version 1.1.4  19oct2017}{...}
{vieweralsosee "[D] zipfile" "mansection D zipfile"}{...}
{viewerjumpto "语法" "zipfile_zh##syntax"}{...}
{viewerjumpto "描述" "zipfile_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "zipfile_zh##linkspdf"}{...}
{viewerjumpto "zipfile 的选项" "zipfile_zh##option_zipfile"}{...}
{viewerjumpto "unzipfile 的选项" "zipfile_zh##option_unzipfile"}{...}
{viewerjumpto "示例" "zipfile_zh##examples"}
{help zipfile:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[D] zipfile} {hline 2}}压缩和解压缩 zip 格式的文件和目录{p_end}
{p2col:}({mansection D zipfile:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
将文件或目录添加到 zip 文件中

{p 8 16 2}
{cmd:zipfile} {it:file}{c |}{it:directory}
    [{it:file}{c |}{it:directory}] ... {cmd:,}
    {cmd:saving(}{it:zipfilename}[{cmd:, replace}]{cmd:)} 


{phang}
从 zip 文件中提取文件或目录

{p 8 16 2}
{cmd:unzipfile} {it:zipfilename} [{cmd:,} {opt replace}]


{p 4 11 2}注意：如果名称或路径包含空格，必须使用双引号括住 {it:file} 和 {it:directory}。 {it:file} 和 {it:directory} 还可以包含 {cmd:?} 和 {cmd:*} 通配符字符。


{marker description}{...}
{title:描述}

{pstd}
{cmd:zipfile} 将文件和目录压缩成可以与 Zip64、WinZip、PKZIP 2.04g 及其他使用 zip 压缩格式的应用程序兼容的 zip 文件。

{pstd}
{cmd:unzipfile} 将 zip 格式文件中的文件和目录提取到当前目录中。 {cmd:unzipfile} 可以打开由 Zip64、WinZip、PKZIP 2.04g 及其他使用 zip 压缩格式的应用程序创建的 zip 文件。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D zipfileQuickstart:快速入门}

        {mansection D zipfileRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker option_zipfile}{...}
{title:zipfile 的选项}

{phang}	
{cmd:saving(}{it:zipfilename}[{cmd:, replace}]{cmd:)} 是必需的。
它指定要创建或替换的文件名。如果
{it:zipfilename} 未指定扩展名，则默认为 {cmd:.zip}。


{marker option_unzipfile}{...}
{title:unzipfile 的选项}

{phang}	
{opt replace} 用 zip 文件中具有相同名称的文件或目录覆盖当前目录中的任何文件或目录。


{marker examples}{...}
{title:示例}

{pstd}
将当前目录中的所有 {cmd:.dta} 文件压缩到文件
{cmd:myfiles.zip}

	{cmd:. zipfile *.dta, saving(myfiles)}

{pstd}
将当前目录中任何三字符子目录中的所有 {cmd:.dta} 文件压缩，并在存在时覆盖文件 {cmd:myfiles.zip}

	{cmd:. zipfile ???/*.dta, saving(myfiles, replace)}

{pstd}
将文件 {cmd:myfiles.zip} 解压缩到当前目录，覆盖与 zip 文件中相同名称的任何文件或目录

	{cmd:. unzipfile myfiles, replace}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <zipfile.sthlp>}