
{help cluster_kmeans_optstab:English Version}
{hline}
{* *! version 1.0.7  09dec2014}{...}
{synoptset 23 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{p2coldent:* {opt k(#)}}执行聚类分析，生成 # 组{p_end}
{synopt:{opth mea:sure(measure option:measure)}}相似性或不相似性测量；默认是 {cmd:L2}（欧几里得）{p_end}
{synopt:{opt n:ame(clname)}}生成的聚类分析的名称{p_end}

{syntab:选项}
{synopt:{cmdab:s:tart(}{it:{help cluster_kmeans##start():start_option}{cmd:)}}}通过使用 {it:start_option} 获取 {it:k} 个初始组中心{p_end}
{synopt:{opt keep:centers}}将 {it:k} 个最终组均值或中位数附加到数据中{p_end}

{syntab:高级}
{synopt:{opth gen:erate(varlist:groupvar)}}分组变量的名称{p_end}
{synopt:{opt iter:ate(#)}}最大迭代次数；默认是 {cmd:iterate(10000)}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* {opt k(#)} 是必需的。{p_end}