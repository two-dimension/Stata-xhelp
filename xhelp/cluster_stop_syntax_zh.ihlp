
{help cluster_stop_syntax:English Version}
{hline}
{* *! version 1.0.10  09dec2014}{...}
{pstd}
数据的聚类分析

{p 8 24 2}
	{cmd:cluster} {cmd:stop} [{it:clname}]
	[{cmd:,} {it:options}]


{pstd}
不相似度矩阵的聚类分析

{p 8 24 2}
	{cmd:clustermat} {cmd:stop} [{it:clname}]
	{cmd:,} {opth var:iables(varlist)}
	[{it:options}]


{phang}
其中 {it:clname} 是聚类分析的名称。默认情况下使用最近执行的聚类分析，可以使用 {cmd:cluster} {cmd:use} 命令重置；请参见 {helpb cluster utility:[MV] cluster utility}。


{synoptset 27 tabbed}{...}
{synopthdr}
{synoptline}
{synopt:{cmdab:r:ule(}{cmdab:cal:inski)}}使用 Calinski-Harabasz 伪 F 指数停止规则；默认{p_end}
{synopt:{cmdab:r:ule(duda)}}使用 Duda-Hart Je(2)/Je(1) 指数停止规则{p_end}
{synopt:{opt r:ule(rule_name)}}使用 {it:rule_name} 停止规则；详见 {it:{help cluster_stop##rule():Options}}{p_end}
{synopt:{opth gr:oups(numlist)}}为指定组计算停止规则{p_end}
{synopt:{opt mat:rix(matname)}}将结果保存在矩阵 {it:matname} 中{p_end}
{p2coldent :* {opth var:iables(varlist)}}使用 {it:varlist} 计算停止规则{p_end}
{synoptline}
{p 4 6 2}* {opt variables(varlist)} 在 {cmd:clustermat} 解决方案中是必需的，在 {cmd:cluster} 解决方案中是可选的。{p_end}
{p 4 6 2}{opt rule(rule_name)} 在对话框中未显示。有关如何将停止规则添加到 {cmd:cluster stop} 命令的信息，请参见 {manhelp cluster_subroutines MV:cluster programming subroutines}。
{p_end}