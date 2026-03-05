{smcl}
{* *! version 1.2.0  23jan2019}{...}
{vieweralsosee "[M-4] IO" "mansection M-4 IO"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Intro" "help m4_intro_zh"}{...}
{viewerjumpto "Contents" "m4_io_zh##contents"}{...}
{viewerjumpto "Description" "m4_io_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m4_io_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m4_io_zh##remarks"}{...}
{viewerjumpto "Reference" "m4_io_zh##reference"}
{help m4_io:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[M-4] IO} {hline 2}}输入/输出函数
{p_end}
{p2col:}({mansection M-4 IO:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker contents}{...}
{title:目录}

{col 5}   [M-5]
{col 5}手册条目{col 22}函数{col 43}目的
{col 5}{hline}

{col 5}   {c TLC}{hline 16}{c TRC}
{col 5}{hline 3}{c RT}{it: 控制台输出 }{c LT}{hline}
{col 5}   {c BLC}{hline 16}{c BRC}

{col 7}{bf:{help mf_printf_zh:printf()}}{...}
{col 22}{cmd:printf()}{...}
{col 43}显示 
{col 22}{cmd:sprintf()}{...}
{col 43}显示为字符串

{col 7}{bf:{help mf_errprintf_zh:errprintf()}}{...}
{col 22}{cmd:errprintf()}{...}
{col 43}显示错误信息

{col 7}{bf:{help mf_display_zh:display()}}{...}
{col 22}{cmd:display()}{...}
{col 43}显示文本，解释SMCL

{col 7}{bf:{help mf_displayas_zh:displayas()}}{...}
{col 22}{cmd:displayas()}{...}
{col 43}设置输出是否显示

{col 7}{bf:{help mf_displayflush_zh:displayflush()}}{...}
{col 22}{cmd:displayflush()}{...}
{col 43}刷新终端输出缓冲区

{col 7}{bf:{help mf_liststruct_zh:liststruct()}}{...}
{col 22}{cmd:liststruct()}{...}
{col 43}列出结构的内容

{col 7}{bf:{help mf_more_zh:more()}}{...}
{col 22}{cmd:more()}{...}
{col 43}创建 --more-- 条件
{col 22}{cmd:setmore()}{...}
{col 43}查询或设置更多开关
{col 22}{cmd:setmoreonexit()}{...}
{col 43}在退出时设置开关

{col 5}   {c TLC}{hline 18}{c TRC}
{col 5}{hline 3}{c RT}{it: 文件目录 }{c LT}{hline}
{col 5}   {c BLC}{hline 18}{c BRC}

{col 7}{bf:{help mf_direxists_zh:direxists()}}{...}
{col 22}{cmd:direxists()}{...}
{col 43}目录是否存在

{col 7}{bf:{help mf_dir_zh:dir()}}{...}
{col 22}{cmd:dir()}{...}
{col 43}文件列表

{col 7}{bf:{help mf_chdir_zh:chdir()}}{...}
{col 22}{cmd:pwd()}{...}
{col 43}获取当前工作目录
{col 22}{cmd:chdir()}{...}
{col 43}更改当前工作目录
{col 22}{cmd:mkdir()}{...}
{col 43}创建新目录
{col 22}{cmd:rmdir()}{...}
{col 43}删除目录

{col 5}   {c TLC}{hline 17}{c TRC}
{col 5}{hline 3}{c RT}{it: 文件管理 }{c LT}{hline}
{col 5}   {c BLC}{hline 17}{c BRC}

{col 7}{bf:{help mf_findfile_zh:findfile()}}{...}
{col 22}{cmd:findfile()}{...}
{col 43}查找文件

{col 7}{bf:{help mf_fileexists_zh:fileexists()}}{...}
{col 22}{cmd:fileexists()}{...}
{col 43}文件是否存在

{col 7}{bf:{help mf_cat_zh:cat()}}{...}
{col 22}{cmd:cat()}{...}
{col 43}将文件读入字符串矩阵

{col 7}{bf:{help mf_unlink_zh:unlink()}}{...}
{col 22}{cmd:unlink()}{...}
{col 43}删除文件

{col 7}{bf:{help mf_adosubdir_zh:adosubdir()}}{...}
{col 22}{cmd:adosubdir()}{...}
{col 43}获取文件的ado子目录

{col 7}{bf:{help mf_issamefile_zh:issamefile()}}{...}
{col 22}{cmd:issamefile()}{...}
{col 43}两个文件路径是否指向 
{col 45}同一个文件 

{col 5}   {c TLC}{hline 10}{c TRC}
{col 5}{hline 3}{c RT}{it: 文件 I/O }{c LT}{hline}
{col 5}   {c BLC}{hline 10}{c BRC}

{col 7}{bf:{help mf_fopen_zh:fopen()}}{...}
{col 22}{cmd:fopen()}{...}
{col 43}打开文件
{col 22}{cmd:fclose()}{...}
{col 43}关闭文件
{col 22}{cmd:fget()}{...}
{col 43}读取文本文件的一行
{col 22}{cmd:fgetnl()}{...}
{col 43}同上，但包括换行符
{col 22}{cmd:fread()}{...}
{col 43}读取 {it:k} 字节的二进制文件
{col 22}{cmd:fput()}{...}
{col 43}写入文本文件的一行
{col 22}{cmd:fwrite()}{...}
{col 43}写入 {it:k} 字节的二进制文件
{col 22}{cmd:fgetmatrix()}{...}
{col 43}读取矩阵
{col 22}{cmd:fputmatrix()}{...}
{col 43}写入矩阵
{col 22}{cmd:fstatus()}{...}
{col 43}上一个 I/O 命令的状态
{col 22}{cmd:ftell()}{...}
{col 43}报告在文件中的位置
{col 22}{cmd:fseek()}{...}
{col 43}在文件中寻址
{col 22}{cmd:ftruncate()}{...}
{col 43}在当前位置截断文件

{col 7}{bf:{help mf_ferrortext_zh:ferrortext()}}{...}
{col 22}{cmd:ferrortext()}{...}
{col 43}文件错误代码的错误文本
{col 22}{cmd:freturncode()}{...}
{col 43}文件错误代码的返回代码

{* begin -- undocumented -- }{...}
{col 7}{bf:{help mf_st_freadsignature_zh:st_freadsignature()}}
{col 22}{cmd:st_freadsignature()}{...}
{col 43}读取文件签名头
{col 22}{cmd:st_fwritesignature()}{...}
{col 43}写入文件签名头
{* end -- undocumented -- }{...}

{col 7}{bf:{help mf_bufio_zh:bufio()}}{...}
{col 22}{cmd:bufio()}{...}
{col 43}初始化缓冲区
{col 22}{cmd:bufbyteorder()}{...}
{col 43}重置（指定）字节顺序
{col 22}{cmd:bufmissingvalue()}{...}
{col 43}重置（指定）缺失值
{col 45}编码
{col 22}{cmd:bufput()}{...}
{col 43}复制到缓冲区
{col 22}{cmd:bufget()}{...}
{col 43}从缓冲区复制
{col 22}{cmd:fbufput()}{...}
{col 43}复制进入并写入缓冲区
{col 22}{cmd:fbufget()}{...}
{col 43}读取并从缓冲区复制
{col 22}{cmd:bufbfmtlen()}{...}
{col 43}实用程序例程
{col 22}{cmd:bufbfmtisnum()}{...}
{col 43}实用程序例程

{* st_fopen is undocumented, do not include in manuals}{...}
{col 7}{bf:{help mf_st_fopen_zh:st_fopen()}}{...}
{col 22}{cmd:st_fopen()}{...}
{col 43}以 Stata 方式打开文件

{col 7}{bf:{help mf_xl_zh:xl()}}{...}
{col 22}{cmd:xl()}{...}
{col 43}Excel 文件 I/O 类

{col 7}{bf:{help mf__docx_zh:_docx*()}}{...}
{col 22}{cmd:_docx*()}{...}
{col 43}生成Office Open XML文件

{col 7}{bf:{help mf_pdf_zh:Pdf*()}}{...}
{col 22}{cmd:Pdf*()}{...}
{col 43}创建 PDF 文件

{col 5}   {c TLC}{hline 30}{c TRC}
{col 5}{hline 3}{c RT}{it: 文件名和路径操作 }{c LT}{hline}
{col 5}   {c BLC}{hline 30}{c BRC}

{col 7}{bf:{help mf_pathjoin_zh:pathjoin()}}{...}
{col 22}{cmd:pathjoin()}{...}
{col 43}连接路径
{col 22}{cmd:pathsplit()}{...}
{col 43}拆分路径
{col 22}{cmd:pathbasename()}{...}
{col 43}路径基础名
{col 22}{cmd:pathsuffix()}{...}
{col 43}文件后缀
{col 22}{cmd:pathrmsuffix()}{...}
{col 43}移除文件后缀
{col 22}{cmd:pathisurl()}{...}
{col 43}路径是否是URL
{col 22}{cmd:pathisabs()}{...}
{col 43}路径是否是绝对路径
{col 22}{cmd:pathasciisuffix()}{...}
{col 43}文件是否是文本 
{col 22}{cmd:pathstatasuffix()}{...}
{col 43}文件是否是Stata
{col 22}{cmd:pathlist()}{...}
{col 43}处理路径列表
{col 22}{cmd:pathsubsysdir()}{...}
{col 43}替换系统目录
{col 22}{cmd:pathsearchlist()}{...}
{col 43}查找文件的路径列表
{col 22}{cmd:pathresolve()}{...}
{col 43}解析相对路径
{col 22}{cmd:pathgetparent()}{...}
{col 43}获取父路径
    {hline}


{marker description}{...}
{title:描述}

{p 4 4 2}
上述函数与 

{p 8 12 2}
1.  在终端显示输出。

{p 8 12 2}
2.  读取和写入文件中的数据。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection M-4 IORemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
要显示标量、向量或矩阵的内容，只需编码该标量、向量或矩阵的标识：

	: {cmd:x}
        {res}       {txt}          1             2             3             4
            {c TLC}{hline 57}{c TRC}
          1 {c |}  {res}.1369840784    .643220668   .5578016951   .6047949435{txt}  {c |}
            {c BLC}{hline 57}{c BRC}{txt}

{p 4 4 2}
您甚至可以在程序中遵循这种方法：

	{cmd}function example() 
	{
		...
		"我将要计算结果"
		...
		"结果是"
		b
	}{txt}

{p 4 4 2}
另一方面，{cmd:display()} 和 {cmd:printf()}（见
{bf:{help mf_display_zh:[M-5] display()}} 和 
{bf:{help mf_printf_zh:[M-5] printf()}}）
将允许您更好地控制输出的外观。

{p 4 4 2}
话题转换：
您会发现许多 I/O 函数有两种变体：前面带下划线和不带下划线，例如 {cmd:_fopen()} 和 {cmd:fopen()}。
一如既往，以下划线开头的函数通常对其工作保持沉默，并返回指示其成功或失败的标志。省略下划线的函数在出现问题时会中止并发出适当的错误消息。
{p_end}


{marker reference}{...}
{title:参考}

{phang}
Gould, W. W. 2009.
{browse "http://www.stata-journal.com/sjpdf.html?articlenum=pr0049":Mata Matters: 文件处理}.
{it:Stata Journal} 9: 599-620.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m4_io.sthlp>}