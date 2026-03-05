
{smcl}
{* *! version 1.2.2  15oct2018}{...}
{findalias asfrfilenames}{...}
{title:标题}
{help filename:English Version}
{hline}

{p 4 13 2}
{findalias frfilenames}

{title:描述}

{pstd}
某些命令要求您指定文件名。文件名的指定方式取决于您的操作系统：

    Windows                  Unix                     Mac
    {hline 72}
{cmd}    mydata                   mydata                   mydata
    mydata.dta               mydata.dta               mydata.dta
    c:mydata.dta             ~friend/mydata.dta       ~friend/mydata.dta

    "my data"                "my data"                "my data"
    "my data.dta"            "my data.dta"            "my data.dta"

    myproj\mydata            myproj/mydata            myproj/mydata
    "my project\my data"     "my project/my data"     "my project/my data"

    C:\analysis\data\mydata  ~/analysis/data/mydata   ~/analysis/data/mydata
    "C:\my project\my data"  "~/my project/my data"   "~/my project/my data"

    ..\data\mydata           ../data/mydata           ../data/mydata
    "..\my project\my data"  "../my project/my data"  "../my project/my data"
{txt}

{pstd}
在大多数情况下，当 {it:filename} 是您正在加载的文件时，{it:filename} 也可以是一个 URL。例如，我们可以指定
{cmd:use https://www.stata-press.com/data/r16/nlswork}。

{pstd}
所有操作系统都允许文件名中包含空格，Stata 也是如此。然而，如果文件名中包含空格，您必须用双引号将文件名括起来。输入

{phang2}
{cmd:. save "my data"}

{pstd}
将创建文件 {cmd:my} {cmd:data.dta}。输入 

{phang2}
{cmd:. save my data}

{pstd}
将产生错误。

{pstd}
有关文件名扩展的详细信息和类型，请参见 {help extensions_zh:file extensions}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <filename.sthlp>}