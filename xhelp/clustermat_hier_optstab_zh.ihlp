
{help clustermat_hier_optstab:English Version}
{hline}
{* *! version 1.0.6  07apr2011}{...}
{synoptset 21 tabbed}{...}
{synopthdr:clustermat_options}
{synoptline}
{syntab:主要}
{synopt:{opth sh:ape(cluster_linkage##shape:shape)}}{it:matname}的形状（存储方式）{p_end}
{synopt:{opt add}}将集群信息添加到当前内存中的数据{p_end}
{synopt:{opt clear}}用集群信息替换内存中的数据{p_end}
{synopt:{opth lab:elvar(varname)}}将相异性矩阵行名称放入{it:varname}{p_end}
{synopt:{opt n:ame(clname)}}结果集群分析的名称{p_end}

{syntab:高级}
{synopt:{opt force}}在修复{it:matname}问题后执行聚类{p_end}
{synopt:{opt gen:erate(stub)}}生成变量的前缀；默认前缀是{it:clname}{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 21}{...}
{marker shape}{...}
{synopt:{it:shape}}{it:matname}被存储为{p_end}
{synoptline}
{synopt:{opt f:ull}}方形对称矩阵；默认值{p_end}
{synopt:{opt l:ower}}行顺序下三角（带对角线）的向量{p_end}
{synopt:{opt ll:ower}}行顺序严格下三角（无对角线）的向量{p_end}
{synopt:{opt u:pper}}行顺序上三角（带对角线）的向量{p_end}
{synopt:{opt uu:pper}}行顺序严格上三角（无对角线）的向量{p_end}
{synoptline}
{p2colreset}{...}