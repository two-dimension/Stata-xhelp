{smcl}
{* *! version 1.1.16  22mar2018}{...}
{viewerdialog "infile (free format)" "dialog infile_free"}{...}
{vieweralsosee "[D] infile (free format)" "mansection D infile(freeformat)"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] infile (fixed format)" "help infile2_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] export" "help export_zh"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{viewerjumpto "Syntax" "infile1_zh##syntax"}{...}
{viewerjumpto "Menu" "infile1_zh##menu"}{...}
{viewerjumpto "Description" "infile1_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "infile1_zh##linkspdf"}{...}
{viewerjumpto "Options" "infile1_zh##options"}{...}
{viewerjumpto "Examples" "infile1_zh##examples"}
{help infile1:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[D] infile (free format)} {hline 2}}导入未格式化的文本数据{p_end}
{p2col:}({mansection D infile(freeformat):查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{opt inf:ile}
{varlist}
[{cmd:_skip}[{opt (#)}]
[{varlist} [{cmd:_skip}[{opt (#)}] {it:...}]]]
{cmd:using} {it:{help filename_zh}}
{ifin}
[{cmd:,} {it:options}]

{phang}
如果指定的 {it:{help filename_zh}} 没有扩展名，则默认为 {opt .raw}。如果 {it:filename} 包含空格，请记得用双引号括起来。

{synoptset 17 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主}
{synopt :{opt clear}}用新数据替换内存中的数据{p_end}

{syntab :选项}
{synopt :{opt a:utomatic}}从非数字数据创建值标签{p_end}
{synopt :{opt by:variable(#)}}按变量组织外部文件；{it:#} 是观察数量{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:文件 > 导入 > 未格式化的文本数据} 


{marker description}{...}
{title:描述}

{pstd}
{opt infile} 从磁盘读取不在 Stata 格式中的数据集到内存中。

{pstd}
这里讨论使用 {opt infile} 来读取自由格式数据，这意味着 Stata 不需要知道格式信息。 {opt infile} 的另一个变体允许读取固定格式的数据；请参见 {help infile2_zh}。
另一个替代方法是 {helpb import delimited}，如果您的数据为制表符或逗号分隔且每行包含一个观察值，则更易于使用。Stata 还有其他命令用于读取数据。如果您不确定 {opt infile} 是否能满足您的需求，请查看 {manhelp import D} 和 {findalias frdatain}。

{pstd}
在数据读取到 Stata 后，可以将其保存为 Stata 格式的数据集；请参见 {manhelp save D}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D infile(freeformat)快速入门:快速开始}

        {mansection D infile(freeformat)备注和示例:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}{opt clear} 指定可以用新数据替换当前内存中的数据。
为了确保您不会丢失重要内容，如果内存中已有数据，{opt infile} 将拒绝读取新数据。 {opt clear} 允许 {opt infile} 替换内存中的数据。您也可以通过键入 {cmd:drop _all} 在读取新数据之前自行删除数据。

{dlgtab:选项}

{phang}{opt automatic} 使 Stata 从读取的非数字数据创建值标签。
它还自动扩展显示格式以适应最长的标签。

{phang}{opt byvariable(#)} 指定外部数据文件是按变量组织，而不是按观察。所有关于第一个变量的观察值全部出现，接着是第二个变量的所有观察值，依此类推。时间序列数据集有时以这种格式提供。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. keep price mpg rep78}{p_end}
{phang2}{cmd:. keep in 1/10}

{pstd}以文本格式写入数据到 {cmd:myout.raw}{p_end}
{phang2}{cmd:. outfile using myout}

{pstd}显示 {cmd:myout.raw} 的内容{p_end}
{phang2}{cmd:. type myout.raw}

{pstd}清除内存中的数据和值标签{p_end}
{phang2}{cmd:. clear}

{pstd}将 {cmd:myout.raw} 中的数据读入内存{p_end}
{phang2}{cmd:. infile price mpg rep78 using myout}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}描述数据{p_end}
{phang2}{cmd:. describe}

{pstd}清除内存中的数据和值标签{p_end}
{phang2}{cmd:. clear}

{pstd}将 {cmd:myout.raw} 中的数据读入内存，但将 {cmd:mpg} 和 {cmd:rep78} 存储为 {cmd:int} 变量{p_end}
{phang2}{cmd:. infile price int (mpg rep78) using myout}

{pstd}描述数据{p_end}
{phang2}{cmd:. describe}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. sort price}{p_end}
{phang2}{cmd:. keep make price mpg rep78 foreign}{p_end}
{phang2}{cmd:. keep in 1/10}

{pstd}以文本格式写入数据到 {cmd:myout.raw}{p_end}
{phang2}{cmd:. outfile using myout, replace}

{pstd}显示 {cmd:myout.raw} 的内容{p_end}
{phang2}{cmd:. type myout.raw}

{pstd}清除内存中的数据和值标签{p_end}
{phang2}{cmd:. clear}

{pstd}将 {cmd:myout.raw} 中的数据读入内存{p_end}
{phang2}{cmd:. infile str18 make price mpg rep78 str8 foreign using myout}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}清除内存中的数据{p_end}
{phang2}{cmd:. clear}

{pstd}将 {cmd:myout.raw} 中的数据读入内存，自动为 {cmd:foreign} 创建值标签，并将其存储为 {cmd:byte} 而不是 {cmd:str8}{p_end}
{phang2}{cmd:. infile str18 make price mpg rep78 byte foreign:origin using}
            {cmd:myout, automatic}

{pstd}描述 {cmd:foreign}{p_end}
{phang2}{cmd:. describe foreign}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}列出值标签{p_end}
{phang2}{cmd:. label list}

{pstd}清除内存中的数据和值标签{p_end}
{phang2}{cmd:. clear}

{pstd}定义值标签 {cmd:myorigin}{p_end}
{phang2}{cmd:. label define myorigin 0 "Domestic" 1 "Foreign"}

{pstd}使用 {cmd:myorigin} 值标签将 {cmd:myout.raw} 中的数据读入内存{p_end}
{phang2}{cmd:. infile str18 make price mpg rep78 byte foreign:myorigin using}
          {cmd:myout}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}列出值标签{p_end}
{phang2}{cmd:. label list}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <infile1.sthlp>}