{smcl}
{* *! version 1.0.0  19jun2019}{...}
{vieweralsosee "[D] vl set" "mansection D vlset"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] vl" "help vl_zh"}{...}
{vieweralsosee "[D] vl create" "help vl create"}{...}
{vieweralsosee "[D] vl drop" "help vl drop"}{...}
{vieweralsosee "[D] vl list" "help vl list"}{...}
{vieweralsosee "[D] vl rebuild" "help vl rebuild"}{...}
{viewerjumpto "Syntax" "vl set##syntax"}{...}
{viewerjumpto "Description" "vl set##description"}{...}
{viewerjumpto "Links to PDF documentation" "vl set##linkspdf"}{...}
{viewerjumpto "Options" "vl set##options"}{...}
{viewerjumpto "Examples" "vl set##examples"}{...}
{viewerjumpto "Stored results" "vl set##results"}
{help vl_set:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[D] vl set} {hline 2}}设置系统定义的变量列表{p_end}
{p2col:}({mansection D vlset:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
创建系统定义的变量列表

{p 8 16 2}
{cmd:vl} {cmd:set} [{varlist}]
[{cmd:,} {it:options}]


{pstd}
将变量从当前系统定义的变量列表移动到其他列表

{p 8 16 2}
{cmd:vl} {cmd:move} {cmd:(}{varlist}{cmd:)} {it:vlsysname}


{pstd}
将一个系统定义的变量列表中的所有变量移动到另一个列表

{p 8 16 2}
{cmd:vl} {cmd:move}  {it:vlsysname1} {it:vlsysname2}


{phang}
{it:varlist} 仅包含数字变量。如果未指定，则将数据集中所有数字变量分类。

{synoptset 20}{...}
{synopthdr}
{synoptline}
{synopt :{opt cat:egorical(#)}}分类变量的类别数量上限
{cmd:vlcategorical}{p_end}
{synopt :{opt uncer:tain(#)}}不确定变量的类别数量上限{cmd:vluncertain}{p_end}
{synopt :{opt dum:my}}创建包含 0/1 变量的变量列表 {cmd:vldummy}{p_end}
{synopt :{opt list}[{cmd:(}{help vl_set##listopts:{it:list_options}}{cmd:)}]}按分类列出变量{p_end}
{synopt :{opt clear}}丢弃所有现有分类并进行新的分类{p_end}
{synopt :{opt redo}}重新分类{varlist} 中的变量{p_end}
{synopt :{opt update}}更新 {varlist} 中变量的存储统计信息，但不更改它们的分类{p_end}
{synopt :{opt nonotes}}抑制摘要表下方的注释{p_end}
{synoptline}


{marker description}{...}
{title:描述}

{pstd}
{cmd:vl} {cmd:set} 旨在识别在 Stata 的估计命令中应视为因素变量的变量。

{pstd}
{cmd:vl} {cmd:set} 创建系统定义的变量列表 {cmd:vlcategorical}、{cmd:vlcontinuous}、{cmd:vluncertain} 和 {cmd:vlother}。
变量根据其值（整数或非整数、所有非负等）以及变量的水平数量的默认或用户指定的截断值进行分类。

{pstd}
{cmd:vl} {cmd:move} 将变量从一个分类移动到另一个分类。

{pstd}
变量列表实际上是 {help macro_zh:global macros}，它们与数据集一起保存。有关更多信息，请参见 {manhelp vl_rebuild D:vl rebuild}。

{pstd}
有关 {cmd:vl} 命令的介绍，请参见 {manhelp vl D}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D vlsetQuickstart:快速开始}

        {mansection D vlsetRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。
{p_end}


{marker options}{...}
{title:选项}

{phang}
{opt categorical(#)} 指定包含非负整数的变量在类别数量介于 2 到 {it:#}（含）之间时被放入 {cmd:vlcategorical} 变量列表。仅有一个类别（即常数）的变量被放入 {cmd:vlother} 变量列表。默认值为 {cmd:categorical(10)}。

{pmore}
可以指定 {cmd:categorical(.)} 将上限有效地设置为无穷大。也就是说，所有包含非负整数（其值小于 2^{31} = 2,147,483,648）的变量都被放入 {cmd:vlcategorical}。
将 {it:#} 设置为 {cmd:.} 或一个大值可能会在观察数极大时大幅降低计算速度。

{phang}
{opt uncertain(#)} 指定在类别数量介于 {opt categorical(#)} + 1 和 {it:#}（含）之间时，包含非负整数的变量被放入 {cmd:vluncertain} 变量列表。默认值为 {cmd:uncertain(100)}。

{pmore}
{it:#} 必须大于 {opt categorical(#)}。
要忽略 {cmd:vluncertain} 分类，请将 {it:#} 设置为 {opt categorical(#)} 或指定 {cmd:uncertain(0)}。

{pmore}
可以指定 {cmd:uncertain(.)} 将上限有效地设置为无穷大。也就是说，所有包含非负整数（其值小于 2^{31} = 2,147,483,648）的变量，类别数量超过 {opt categorical(#)} 的变量将被放入 {cmd:vluncertain}。将 {it:#} 设置为 {cmd:.} 或一个大值可能会在观察数极大时大幅降低计算速度。

{phang}
{cmd:dummy} 指定创建包含 0/1 变量的 {cmd:vldummy} 变量列表。默认情况下，0/1 变量被放入 {cmd:vlcategorical}。

{marker listopts}{...}
{phang}
{opt list}[{cmd:(}{it:list_options}{cmd:)}] 列出按分类的变量。分类及{cmd:vlcategorical}和{cmd:vluncertain}中变量的类别数量将显示。{it:list_options} 包括：

{phang2}
{opt min:imum} 显示每个变量的最小值；

{phang2}
{opt max:imum} 显示每个变量的最大值；以及

{phang2}
{opt obs:ervations} 显示每个变量的非缺失值数量。

{pmore}
在运行 {cmd:vl set} 后，可以使用 {helpb vl list} 获取相同的列表。

{phang}
{opt clear} 指定丢弃所有系统定义的变量列表（如果有），并重新分类。相当于运行 {cmd:vl} {cmd:clear,} {cmd:system}，然后再运行 {cmd:vl} {cmd:set}。

{phang}
{cmd:redo} 指定对 {varlist} 中的变量重新分类。相当于运行 {cmd:vl}
{opt drop (varlist)}{cmd:,} {cmd:system}，然后再运行 {cmd:vl} {cmd:set} {it:varlist}。

{phang}
{cmd:update} 指定更新 {varlist} 中变量保存的所有统计信息（类别数量、最小值、最大值和非缺失观察数量），但不更改变量的分类。{cmd:update} 旨在用于数据中添加或删除观察时，希望保持分类不变的情况。

{phang}
{cmd:nonotes} 指定不显示摘要表下方的注释。默认情况下，注释是显示的。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}创建系统定义的变量列表{p_end}
{phang2}{cmd:. vl set}{p_end}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto, clear}{p_end}

{pstd}创建包含 0/1 变量的 {cmd:vldummy} 变量列表{p_end}
{phang2}{cmd:. vl set, dummy}{p_end}

{pstd}删除系统定义的变量列表并重新运行 {cmd:vl set}{p_end}
{phang2}{cmd:. vl set, clear}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:vl set} 将以下内容存储在 {cmd:r()} 中：

{synoptset 23 tabbed}{...}
{p2col 5 23 27 2: 标量}{p_end}
{synopt:{cmd:r(k_system)}}系统定义变量列表中的变量数量{p_end}
{synopt:{cmd:r(k_vlcategorical)}}{cmd:vlcategorical} 中变量的数量{p_end}
{synopt:{cmd:r(k_vlcontinuous)}}{cmd:vlcontinuous} 中变量的数量{p_end}
{synopt:{cmd:r(k_vluncertain)}}{cmd:vluncertain} 中变量的数量{p_end}
{synopt:{cmd:r(k_vlother)}}{cmd:vlother} 中变量的数量{p_end}
{synopt:{cmd:r(k_vldummy)}}定义时的 {cmd:vldummy} 中变量的数量{p_end}

{p2col 5 23 27 2: 宏}{p_end}
{synopt:{cmd:r(vlsysnames)}}系统定义变量列表的名称{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <vl_set.sthlp>}