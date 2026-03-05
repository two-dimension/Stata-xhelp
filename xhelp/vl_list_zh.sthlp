{smcl}
{* *! version 1.0.0  19jun2019}{...}
{vieweralsosee "[D] vl list" "mansection D vllist"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] vl" "help vl_zh"}{...}
{vieweralsosee "[D] vl create" "help vl create"}{...}
{vieweralsosee "[D] vl drop" "help vl drop"}{...}
{vieweralsosee "[D] vl rebuild" "help vl rebuild"}{...}
{vieweralsosee "[D] vl set" "help vl set"}{...}
{viewerjumpto "Syntax" "vl list##syntax"}{...}
{viewerjumpto "Description" "vl list##description"}{...}
{viewerjumpto "Links to PDF documentation" "vl list##linkspdf"}{...}
{viewerjumpto "Options" "vl list##options"}{...}
{viewerjumpto "Examples" "vl list##examples"}{...}
{viewerjumpto "Stored results" "vl list##results"}
{help vl_list:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[D] vl list} {hline 2}}列出变量列表的内容{p_end}
{p2col:}({mansection D vllist:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
显示变量列表的内容

{p 8 16 2}
{cmd:vl} {cmd:list} [{it:vlnamelist}] [{cmd:,} {it:options}]


{pstd}
显示变量所属的变量列表

{p 8 16 2}
{cmd:vl} {cmd:list} {cmd:(}{varlist}{cmd:)}
[{cmd:,} {it:options}]


{pstd}
显示所有变量列表的名称

{p 8 16 2}
{cmd:vl} {cmd:dir}[{cmd:,} {opt sys:tem} {cmd:user}]


{phang}
{it:vlnamelist} 是变量列表名称的列表。{p_end}
{phang}
{cmd:(_all)} 或 {cmd:(*)} 可用于指定数据集中所有数字变量。

{synoptset 15}{...}
{synopthdr}
{synoptline}
{synopt :{opt sys:tem}}仅显示系统定义的变量列表{p_end}
{synopt :{opt user}}仅显示用户定义的变量列表{p_end}
{synopt :{opt min:imum}}显示每个变量的最小值{p_end}
{synopt :{opt max:imum}}显示每个变量的最大值{p_end}
{synopt :{opt obs:ervations}}显示每个变量的非缺失观察数{p_end}
{synopt :{opt sort}}按变量列表排序，然后按变量名称字母顺序排列；当指定 {it:vlnamelist} 时；当指定 {cmd:(}{varlist}{cmd:)} 时按变量名称字母顺序排列然后按变量列表排序{p_end}
{synopt :{opt strok}}在指定 {cmd:(}{varlist}{cmd:)} 时允许字符串变量{p_end}
{synopt :{opt nolstretch}}不拉伸表宽以适应长名称{p_end}
{synoptline}


{marker description}{...}
{title:描述}

{pstd}
{cmd:vl} {cmd:list} 在给定变量列表名称时显示变量列表的内容。当给定变量名称时，它显示每个变量所属的变量列表。

{pstd}
{cmd:vl} {cmd:dir} 显示所有变量列表的名称。

{pstd}
有关 {cmd:vl} 命令的介绍，请参见
{manhelp vl D}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D vllistQuickstart:快速入门}

        {mansection D vllistRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。
{p_end}


{marker options}{...}
{title:选项}

{phang}
{cmd:system} 指定仅显示系统定义的变量列表。默认情况下，显示系统定义和用户定义的变量列表。

{phang}
{cmd:user} 指定仅显示用户定义的变量列表。

{phang}
{cmd:minimum} 指定显示每个变量的最小值。

{phang}
{cmd:maximum} 指定显示每个变量的最小值。

{phang}
{cmd:observations} 指定显示每个变量的非缺失观察数。

{phang}
{cmd:sort} 指定列表被排序。当指定 {it:vlnamelist} 时，列表按变量列表排序，然后按变量名称字母顺序排列。默认情况下，在这种情况下，变量按添加到变量列表的顺序列出。

{pmore}
当指定 {cmd:(}{varlist}{cmd:)} 时，列表按变量名称字母顺序排列，然后按变量列表排序。默认情况下，在这种情况下，变量按在 {it:varlist} 中出现的顺序列出。

{phang}
{cmd:strok} 指定在 {cmd:(}{varlist}{cmd:)} 时包含字符串变量。默认情况下，在 {it:varlist} 中指定字符串变量会产生错误信息。指定 {cmd:strok} 将防止此错误信息并列出任何字符串变量。

{phang}
{cmd:nolstretch} 指定表的宽度不会自动扩展以适应长变量和变量列表名称。当指定 {cmd:nolstretch} 时，名称被缩写，以确保表宽不超过 79 个字符。默认设置 {cmd:lstretch} 是自动宽度扩展，直至结果窗口的宽度。要更改默认设置，请使用 {help lstretch_zh:set lstretch off}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}创建系统定义的变量列表{p_end}
{phang2}{cmd:. vl set}{p_end}

{pstd}列出变量列表的内容{p_end}
{phang2}{cmd:. vl list}{p_end}

{pstd}与上面相同，但按变量名称列出{p_end}
{phang2}{cmd:. vl list (*)}{p_end}

{pstd}显示变量列表的名称{p_end}
{phang2}{cmd:. vl dir}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:vl list} 在 {cmd:r()} 中存储以下内容：

{synoptset 23 tabbed}{...}
{p2col 5 23 27 2: 标量}{p_end}
{synopt:{cmd:r(k)}}列出的变量数量{p_end}
{synopt:{cmd:r(k_system)}}在系统定义的变量列表中列出的变量数量{p_end}
{synopt:{cmd:r(k_not_system)}}未在系统定义变量列表中列出的变量数量{p_end}
{synopt:{cmd:r(k_vlcategorical)}}在 {cmd:vlcategorical} 中列出的变量数量{p_end}
{synopt:{cmd:r(k_vlcontinuous)}}在 {cmd:vlcontinuous} 中列出的变量数量{p_end}
{synopt:{cmd:r(k_vluncertain)}}在 {cmd:vluncertain} 中列出的变量数量{p_end}
{synopt:{cmd:r(k_vlother)}}在 {cmd:vlother} 中列出的变量数量{p_end}
{synopt:{cmd:r(k_vldummy)}}在定义时列出的变量数量{cmd:vldummy}{p_end}
{synopt:{cmd:r(k_user)}}在用户定义的变量列表中列出的变量数量{p_end}
{synopt:{cmd:r(k_not_user)}}未在用户定义的变量列表中列出的变量数量{p_end}
{synopt:{cmd:r(k_}{it:vlusername}{cmd:)}}在 {it:vlusername} 中列出的变量数量{p_end}
{synopt:{cmd:r(k_string)}}在指定 {cmd:strok} 时列出的字符串变量数量{p_end}

{p2col 5 23 27 2: 宏}{p_end}
{synopt:{cmd:r(vlsysnames)}}所有系统定义变量列表的名称{p_end}
{synopt:{cmd:r(vlusernames)}}所有用户定义变量列表的名称{p_end}

{pstd}
{cmd:vl dir} 在 {cmd:r()} 中存储以下内容：

{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(k_system)}}系统定义变量列表中的变量数量{p_end}
{synopt:{cmd:r(k_vlcategorical)}}在 {cmd:vlcategorical} 中的变量数量{p_end}
{synopt:{cmd:r(k_vlcontinuous)}}在 {cmd:vlcontinuous} 中的变量数量{p_end}
{synopt:{cmd:r(k_vluncertain)}}在 {cmd:vluncertain} 中的变量数量{p_end}
{synopt:{cmd:r(k_vlother)}}在 {cmd:vlother} 中的变量数量{p_end}
{synopt:{cmd:r(k_vldummy)}}在定义时列出的变量数量{cmd:vldummy}{p_end}
{synopt:{cmd:r(k_user)}}用户定义变量列表中的变量数量{p_end}
{synopt:{cmd:r(k_}{it:vlusername}{cmd:)}}在 {it:vlusername} 中列出的变量数量{p_end}

{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(vlsysnames)}}系统定义变量列表的名称{p_end}
{synopt:{cmd:r(vlusernames)}}用户定义变量列表的名称{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <vl_list.sthlp>}