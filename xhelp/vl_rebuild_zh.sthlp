{smcl}
{* *! version 1.0.0  21jun2019}{...}
{vieweralsosee "[D] vl rebuild" "mansection D vlrebuild"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] vl" "help vl_zh"}{...}
{vieweralsosee "[D] vl create" "help vl create"}{...}
{vieweralsosee "[D] vl drop" "help vl drop"}{...}
{vieweralsosee "[D] vl list" "help vl list"}{...}
{vieweralsosee "[D] vl set" "help vl set"}{...}
{viewerjumpto "Syntax" "vl rebuild##syntax"}{...}
{viewerjumpto "Description" "vl rebuild##description"}{...}
{viewerjumpto "Links to PDF documentation" "vl rebuild##linkspdf"}{...}
{viewerjumpto "Example" "vl rebuild##example"}{...}
{viewerjumpto "Stored results" "vl rebuild##results"}
{help vl_rebuild:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[D] vl rebuild} {hline 2}}重建变量列表{p_end}
{p2col:}({mansection D vlrebuild:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:vl} {cmd:rebuild}


{marker description}{...}
{title:描述}

{pstd}
{cmd:vl} {cmd:rebuild} 恢复系统定义的和用户定义的变量列表。在使用 {help use_zh} 加载数据集之后，运行 {cmd:vl} {cmd:rebuild}。

{pstd}
在使用 {help merge_zh} 或 {help append_zh} 之后，运行 {cmd:vl} {cmd:rebuild} 来合并变量列表。只有在所使用的数据集具有变量列表时，才需要运行 {cmd:vl} {cmd:rebuild}。

{pstd}
在使用 {help drop_zh} 删除变量后，运行 {cmd:vl} {cmd:rebuild} 来从所有变量列表中移除被删除的变量。

{pstd}
在使用 {cmd:vl} {cmd:modify} 或 {cmd:vl} {cmd:move} 修改变量列表后，运行 {cmd:vl} {cmd:rebuild} 来更新由 {cmd:vl} {cmd:substitute} 创建的变量列表。

{pstd}
如果你感到困惑，记住运行 {cmd:vl} {cmd:rebuild} 永远没有坏处。

{pstd}
有关 {cmd:vl} 命令的介绍，请参阅 {manhelp vl D}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D vlrebuildQuickstart:快速入门}

        {mansection D vlrebuildRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。
{p_end}


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}创建系统定义的变量列表{p_end}
{phang2}{cmd:. vl set}{p_end}

{pstd}将数据集保存到当前工作目录{p_end}
{phang2}{cmd:. save auto}{p_end}

{pstd}稍后，从当前工作目录加载数据{p_end}
{phang2}{cmd:. use auto}{p_end}

{pstd}恢复系统定义的变量列表{p_end}
{phang2}{cmd:. vl rebuild}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:vl rebuild} 在 {cmd:r()} 中存储以下内容：

{synoptset 23 tabbed}{...}
{p2col 5 23 27 2: 标量}{p_end}
{synopt:{cmd:r(k_system)}}系统定义的变量列表中的变量数量{p_end}
{synopt:{cmd:r(k_vlcategorical)}}{cmd:vlcategorical} 中变量的数量{p_end}
{synopt:{cmd:r(k_vlcontinuous)}}{cmd:vlcontinuous} 中变量的数量{p_end}
{synopt:{cmd:r(k_vluncertain)}}{cmd:vluncertain} 中变量的数量{p_end}
{synopt:{cmd:r(k_vlother)}}{cmd:vlother} 中变量的数量{p_end}
{synopt:{cmd:r(k_vldummy)}}如果定义，则 {cmd:vldummy} 中变量的数量{p_end}
{synopt:{cmd:r(k_user)}}用户定义的变量列表中的变量数量{p_end}
{synopt:{cmd:r(k_}{it:vlusername}{cmd:)}}{it:vlusername} 中变量的数量{p_end}

{p2col 5 23 27 2: 宏}{p_end}
{synopt:{cmd:r(vlsysnames)}}系统定义的变量列表的名称{p_end}
{synopt:{cmd:r(vlusernames)}}用户定义的变量列表的名称{p_end}
{p2colreset}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <vl_rebuild.sthlp>}