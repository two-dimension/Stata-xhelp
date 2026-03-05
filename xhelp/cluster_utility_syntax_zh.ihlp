
{help cluster_utility_syntax:English Version}
{hline}
{* *! version 1.0.6  21mar2011}{...}
{pstd}
当前定义的聚类的目录式列表

    {cmd:cluster} {cmd:dir}


{pstd}
聚类的详细列表

{p 8 21 2}{cmd:cluster} {cmd:list} [{it:clnamelist}]
     [{cmd:,} {help cluster_utility##list_options:{it:list_options}} ]


{pstd}
删除聚类分析

{p 8 21 2}{cmd:cluster} {cmd:drop} {c -(} {it:clnamelist} | {cmd:_all} {c )-}


{pstd}
将聚类分析标记为最近的一次

{p 8 21 2}{cmd:cluster} {cmd:use} {it:clname}


{pstd}
重命名聚类

{p 8 21 2}{cmd:cluster} {cmd:rename} {it:oldclname} {it:newclname}


{pstd}
重命名与聚类相关的变量

{p 8 21 2}{cmd:cluster} {cmd:renamevar} {it:oldvarname} {newvar}
[{cmd:,} {opt n:ame(clname)} ]

{p 8 21 2}{cmd:cluster} {cmd:renamevar} {it:oldstub} {it:newstub} {cmd:,}
{opt p:refix} [ {opt n:ame(clname)} ]


{marker list_options}{...}
{synoptset 17 tabbed}{...}
{synopthdr:list_options}
{synoptline}
{syntab:选项}
{synopt:{opt n:otes}}列出聚类笔记{p_end}
{synopt:{opt t:ype}}列出聚类分析类型{p_end}
{synopt:{opt m:ethod}}列出聚类分析方法{p_end}
{synopt:{opt d:issimilarity}}列出聚类分析的差异度量{p_end}
{synopt:{opt s:imilarity}}列出聚类分析的相似度量{p_end}
{synopt:{opt v:ars}}列出与聚类分析相关的变量名称{p_end}
{synopt:{opt c:hars}}列出附加于聚类分析的任何特征{p_end}
{synopt:{opt o:ther}}列出任何“其他”信息{p_end}

{synopt:{opt a:ll}}列出与聚类相关的所有项目和信息；这是默认设置{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{cmd:all} 在对话框中不显示。
{p_end}