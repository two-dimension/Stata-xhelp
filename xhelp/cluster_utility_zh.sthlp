{smcl}
{* *! version 1.1.7  19oct2017}{...}
{viewerdialog list "dialog cluster_list"}{...}
{viewerdialog "drop" "dialog cluster_drop"}{...}
{viewerdialog "rename[var]" "dialog cluster_rename"}{...}
{vieweralsosee "[MV] cluster utility" "mansection MV clusterutility"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] cluster notes" "help cluster_notes_zh"}{...}
{vieweralsosee "[MV] cluster programming utilities" "help cluster_programming_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] cluster" "help cluster_zh"}{...}
{vieweralsosee "[MV] clustermat" "help clustermat_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] char" "help char_zh"}{...}
{vieweralsosee "[D] notes" "help notes_zh"}{...}
{viewerjumpto "Syntax" "cluster utility##syntax"}{...}
{viewerjumpto "Menu" "cluster utility##menu"}{...}
{viewerjumpto "Description" "cluster utility##description"}{...}
{viewerjumpto "Links to PDF documentation" "cluster_utility_zh##linkspdf"}{...}
{viewerjumpto "Options for cluster list" "cluster utility##options_list"}{...}
{viewerjumpto "Options for cluster renamevar" "cluster utility##options_renamevar"}{...}
{viewerjumpto "Examples" "cluster utility##examples"}
{help cluster_utility:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[MV] cluster utility} {hline 2}}列出、重命名、使用和删除聚类分析{p_end}
{p2col:}({mansection MV clusterutility:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

包含 help cluster_utility_syntax


{marker menu}{...}
{title:菜单}

    {title:cluster list}

{phang2}
{bf:统计 > 多元分析 > 聚类分析 > 后聚类 >}
      {bf:详细列出聚类} 

    {title:cluster drop}

{phang2}
{bf:统计 > 多元分析 > 聚类分析 > 后聚类 >}
       {bf:删除聚类分析}

    {title:cluster rename}

{phang2}
{bf:统计 > 多元分析 > 聚类分析 > 后聚类 >}
        {bf:重命名一个聚类或聚类变量}


{marker description}{...}
{title:描述}

{pstd}
这些聚类工具命令允许您查看和操作已创建的聚类对象。有关可用的 {cmd:cluster} 命令列表，请参见 {manhelp cluster MV}。如果您希望对聚类对象有更大的控制，或者您正在编程新的 {cmd:cluster} 子程序，可以使用更多的 {cmd:cluster} 程序员工具；有关详细信息，请参见 {manhelp cluster_programming MV:聚类编程工具}。

{pstd}
{cmd:cluster dir} 命令提供所有当前定义的聚类的目录样式列表。{cmd:cluster list} 提供指定聚类的详细列表，或者如果没有指定聚类名称，则提供所有当前聚类的详细列表。默认操作是列出与聚类相关的所有信息。您可以通过指定特定选项限制列出信息的类型。

{pstd}
{cmd:cluster drop} 命令用于删除命名聚类。关键词 {cmd:_all} 指定删除所有当前的聚类分析。

{pstd}
Stata 聚类分析通过名称引用。如果没有提供聚类名称，许多 {cmd:cluster} 命令默认使用最近定义的聚类分析。{cmd:cluster use} 命令将指定的聚类分析设置为最近执行的聚类分析，因此，默认情况下，如果省略聚类名称，许多 {cmd:cluster} 命令将使用此聚类分析。您可以使用 {cmd:*} 和 {cmd:?} 名称匹配字符缩短聚类名称的输入；有关详情，请参见 {findalias frabbrev}。

{pstd}
{cmd:cluster rename} 允许您在不更改附加于聚类分析的任何变量名称的情况下重命名聚类分析。而 {cmd:cluster renamevar} 命令则允许您重命名附加于聚类分析的变量，并使用新变量名称更新聚类对象。请勿使用 {cmd:rename} 命令（参见 {manhelp rename D}）重命名附加于聚类分析的变量，因为这会使聚类对象失效。请改用 {cmd:cluster renamevar} 命令。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MV clusterutilityRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options_list}{...}
{title:cluster list 的选项}

{dlgtab:选项}

{phang}
{cmd:notes} 指定列出聚类备注。

{phang}
{cmd:type} 指定列出聚类分析的类型。

{phang}
{cmd:method} 指定列出聚类分析方法。

{phang}
{cmd:dissimilarity} 指定列出不相似度度量。

{phang}
{cmd:similarity} 指定列出相似度度量。

{phang}
{cmd:vars} 指定列出附加于聚类的变量。

{phang}
{cmd:chars} 指定列出附加于聚类的任何 Stata 特性。

{phang}
{cmd:other} 指定列出附加于聚类的“其他”标题下的信息。

{pstd}以下选项可用于 {cmd:cluster list}，但在对话框中未显示：

{phang}
{cmd:all}，默认情况下，指定列出附加于聚类的所有项目和信息。您可以选择 {cmd:notes}、{cmd:type}、{cmd:method}、{cmd:dissimilarity}、{cmd:similarity}、{cmd:vars}、{cmd:chars} 和 {cmd:other} 选项以限制呈现的信息。


{marker options_renamevar}{...}
{title:cluster renamevar 的选项}

{phang}
{cmd:name(}{it:clname}{cmd:)} 指定要执行变量重命名的聚类分析。如果未指定 {cmd:name()}，则将使用最近执行的聚类分析（或由 {cmd:cluster use} 指定的聚类分析）。

{phang}
{cmd:prefix} 指定将所有附加于聚类分析且名称以 {it:oldstub} 开头的变量重命名，将 {it:newstub} 替换 {it:oldstub}。


{marker examples}{...}
{title:示例}

{phang}{cmd:. cluster dir}

{phang}{cmd:. cluster list myclus}{p_end}
{phang}{cmd:. cluster list}{p_end}
{phang}{cmd:. cluster list a*, vars notes}

{phang}{cmd:. cluster renamevar a5kmeans g5km, name(a5kmeans)}{p_end}
{phang}{cmd:. cluster use xcls}{p_end}
{phang}{cmd:. cluster renamevar xcls_ wrk, prefix}{p_end}
{phang}{cmd:. cluster renamevar g grp, prefix name(a5kmeans)}

{phang}{cmd:. cluster rename xcls bob}{p_end}
{phang}{cmd:. cluster rename a5kmeans sam}

{phang}{cmd:. cluster drop sam myclus}{p_end}
{phang}{cmd:. cluster drop _all}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cluster_utility.sthlp>}