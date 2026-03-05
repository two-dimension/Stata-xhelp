{smcl}
{* *! version 1.1.14  19oct2017}{...}
{viewerdialog "graph describe" "dialog graph_describe"}{...}
{vieweralsosee "[G-2] graph describe" "mansection G-2 graphdescribe"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph manipulation" "help graph_manipulation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph dir" "help graph_dir_zh"}{...}
{viewerjumpto "语法" "graph_describe_zh##syntax"}{...}
{viewerjumpto "菜单" "graph_describe_zh##menu"}{...}
{viewerjumpto "描述" "graph_describe_zh##description"}{...}
{viewerjumpto "PDF文档链接" "graph_describe_zh##linkspdf"}{...}
{viewerjumpto "备注" "graph_describe_zh##remarks"}{...}
{viewerjumpto "存储的结果" "graph_describe_zh##results"}
{help graph_describe:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[G-2] graph describe} {hline 2}}描述内存或磁盘中图形的内容{p_end}
{p2col:}({mansection G-2 graphdescribe:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 23 2}
{cmdab:gr:aph}
{cmdab:des:cribe}
[{it:name}]

{synoptset 20}{...}
{synopt :{it:name}}描述{p_end}
{p2line}
{synopt :{it:simplename}}内存中图形的名称{p_end}
{synopt :{it:{help filename_zh}}{cmd:.gph}}磁盘上图形的名称{p_end}
{synopt :{cmd:"}{it:{help filename_zh}}{cmd:"}}磁盘上图形的名称{p_end}
{p2line}

{pstd}
如果未指定 {it:name}，则描述当前在图形窗口中显示的图形。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 管理图形 > 描述图形}


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph} {cmd:describe} 描述内存中图形或保存在磁盘上的图形的内容。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphdescribeQuickstart:快速入门}

        {mansection G-2 graphdescribeRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
请参见 {manhelp graph_manipulation G-2:图形操作} 以了解图形操作命令的介绍。

{pstd}
{cmd:graph} {cmd:describe} 描述图形的内容，该图形可能存储在内存中或在磁盘上。没有参数时，将描述内存中名为 {cmd:Graph} 的图形：

        {cmd:. sysuse auto}

	{cmd:. scatter mpg weight}

	{cmd}. graph describe

	{txt}{title:图形存储在 {txt}内存中{txt}}

{p 16 15}
名称：
{res}Graph
{p_end}
{txt}{p 14 15}
格式：
{res}live
{p_end}
{txt}{p 13 15}
创建时间：
{res}2016年5月9日 14:26:12
{p_end}
{txt}{p 14 15}
方案：
{res}default
{p_end}
{txt}{p 16 15}
大小：
{res}4 {txt:{it:x}} 5.5
{p_end}
{txt}{p 12 15}
数据文件：
{res}auto.dta
{txt}日期
{res}2016年4月13日 17:45
{p_end}
{txt}{p 13 15}
命令：
{res}twoway scatter mpg weight{txt}
{p_end}

{pstd}
在上述内容中，大小的报告为 {it:ysize} {it:x} {it:xsize}，而不是相反。

{pstd}
当你输入以 {cmd:.gph} 结尾的名称时，将描述磁盘文件：

	{cmd:. graph save myfile}

	{cmd:. graph describe myfile.gph}

	{txt}{title:myfile.gph 存储在 {txt}磁盘上{txt}}

{p 16 15}
名称：
{res}myfile.gph
{p_end}
{txt}{p 14 15}
格式：
{res}live
{p_end}
{txt}{p 13 15}
创建时间：
{res}2016年5月9日 14:26:12
{p_end}
{txt}{p 14 15}
方案：
{res}default
{p_end}
{txt}{p 16 15}
大小：
{res}4 {txt:{it:x}} 5.5
{p_end}
{txt}{p 12 15}
数据文件：
{res}auto.dta
{txt}日期
{res}2016年4月13日 17:45
{p_end}
{txt}{p 13 15}
命令：
{res}twoway scatter mpg weight
{p_end}
{txt}

{pstd}
如果文件以 {cmd:asis} 格式保存 -- 请参见 
{help gph files} -- 只列出名称和格式：

	{cmd:. graph save picture, asis}

	{cmd:. graph describe picture.gph}

	{txt}{title:picture.gph 存储在 {txt}磁盘上{txt}}

{p 16 15}
名称：
{res}picture.gph
{p_end}
{txt}{p 14 15}
格式：
{res}asis{txt}
{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:graph describe} 在 {cmd:r()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(fn)}}{it:filename} 或 {it:filename}{cmd:.gph}{p_end}
{synopt:{cmd:r(ft)}}"{cmd:old}", "{cmd:asis}", 或 "{cmd:live}"{p_end}

{pstd}
如果 {cmd:r(ft)}=="{cmd:live}"，则

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(command)}}命令{p_end}
{synopt:{cmd:r(family)}}子命令； {cmd:twoway}, {cmd:matrix}, {cmd:bar},
         {cmd:dot}, {cmd:box}, 或 {cmd:pie}{p_end}
{synopt:{cmd:r(command_date)}}执行命令的日期{p_end}
{synopt:{cmd:r(command_time)}}执行命令的时间{p_end}

{synopt:{cmd:r(scheme)}}方案名称{p_end}
{synopt:{cmd:r(ysize)}}{cmd:ysize()} 值{p_end}
{synopt:{cmd:r(xsize)}}{cmd:xsize()} 值{p_end}

{synopt:{cmd:r(dtafile)}}{cmd:.dta} 文件在执行命令时的内存{p_end}
{synopt:{cmd:r(dtafile_date)}}{cmd:.dta} 文件日期{p_end}

{pstd}
任何 {cmd:r(command)}, ..., {cmd:r(dtafile_date)} 可能是未定义的，因此请使用宏引用来访问内容。{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_describe.sthlp>}