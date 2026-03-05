{smcl}
{* *! version 1.0.0  12jun2019}{...}
{vieweralsosee "[D] vl drop" "mansection D vldrop"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] vl" "help vl_zh"}{...}
{vieweralsosee "[D] vl create" "help vl create"}{...}
{vieweralsosee "[D] vl list" "help vl list"}{...}
{vieweralsosee "[D] vl rebuild" "help vl rebuild"}{...}
{vieweralsosee "[D] vl set" "help vl set"}{...}
{viewerjumpto "Syntax" "vl drop##syntax"}{...}
{viewerjumpto "Description" "vl drop##description"}{...}
{viewerjumpto "Links to PDF documentation" "vl drop##linkspdf"}{...}
{viewerjumpto "Options" "vl drop##options"}{...}
{viewerjumpto "Examples" "vl drop##examples"}
{help vl_drop:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[D] vl drop} {hline 2}}从变量列表或变量中删除变量
{p_end}
{p2col:}({mansection D vldrop:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
删除变量列表

{p 8 16 2}
{cmd:vl drop} {it:vlnamelist}
[{cmd:,} {opt sys:tem} {cmd:user}]


{pstd}
从变量列表中删除变量

{p 8 16 2}
{cmd:vl drop} {cmd:(}{varlist}{cmd:)}
[{cmd:,} {opt sys:tem} {cmd:user}]


{pstd}
清除所有变量列表

{p 8 16 2}
{cmd:vl clear}
[{cmd:,} {opt sys:tem} {cmd:user}]


{phang}
{it:vlnamelist} 是变量列表名称的列表。{p_end}
{phang}
可以使用 {cmd:(_all)} 或 {cmd:(*)} 指定数据集中所有的数值变量。


{marker description}{...}
{title:描述}

{pstd}
{cmd:vl} {cmd:drop} {it:vlusername} 删除用户定义的变量列表。

{pstd}
{cmd:vl} {cmd:drop} {it:vlsysname} 清空系统定义的变量列表。
它们仍然存在但为空。

{pstd}
{cmd:vl} {cmd:drop} {cmd:(}{varlist}{cmd:)} 从所有变量列表中移除变量。

{pstd}
{cmd:vl} {cmd:clear} 删除所有变量列表，并移除所有 {cmd:vl} 系统的痕迹。

{pstd}
有关 {cmd:vl} 命令的介绍，请参见 {manhelp vl D}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D vldropQuickstart:快速入门}

        {mansection D vldropRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。
{p_end}


{marker options}{...}
{title:选项}

{phang}
当与 {cmd:vl} {cmd:drop} {cmd:(}{varlist}{cmd:)} 一起指定时，{cmd:system} 仅从系统定义的变量列表中删除 {it:varlist} 中的变量。
默认情况下，变量会从所有变量列表（包括系统定义和用户定义）中删除。

{pmore}
与 {cmd:vl} {cmd:clear} 一起指定时，仅删除系统定义的变量列表。
默认情况下，同时删除系统定义和用户定义的变量列表，及所有 {cmd:vl} 系统的痕迹。

{phang}
当与 {cmd:vl} {cmd:drop} {cmd:(}{varlist}{cmd:)} 一起指定时，{cmd:user} 仅从用户定义的变量列表中删除 {it:varlist} 中的变量。

{pmore}
与 {cmd:vl} {cmd:clear} 一起指定时，仅删除用户定义的变量列表。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}创建系统定义的变量列表{p_end}
{phang2}{cmd:. vl set}{p_end}

{pstd}创建变量列表 {cmd:myvars} 和 {cmd:myvars2}{p_end}
{phang2}{cmd:. vl create myvars = (price-weight)}{p_end}
{phang2}{cmd:. vl create myvars2 = (turn foreign)}{p_end}

{pstd}从用户定义的变量列表 {cmd:myvars} 中删除变量 {cmd:price}{p_end}
{phang2}{cmd:. vl drop (price), user}{p_end}

{pstd}删除用户定义的变量列表 {cmd:myvars}{p_end}
{phang2}{cmd:. vl drop myvars}{p_end}

{pstd}删除所有系统定义的变量列表{p_end}
{phang2}{cmd:. vl clear, system}{p_end}

    {hline}
{pstd}创建系统定义的变量列表{p_end}
{phang2}{cmd:. vl set}{p_end}

{pstd}删除所有变量列表及所有 {cmd:vl} 系统的痕迹{p_end}
{phang2}{cmd:. vl clear}{p_end}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <vl_drop.sthlp>}