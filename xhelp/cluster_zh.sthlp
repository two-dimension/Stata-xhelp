{smcl}
{* *! version 1.1.8  22mar2018}{...}
{vieweralsosee "[MV] cluster" "mansection MV cluster"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] clustermat" "help clustermat_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] cluster programming subroutines" "help cluster_subroutines_zh"}{...}
{vieweralsosee "[MV] cluster programming utilities" "help cluster_programming_zh"}{...}
{vieweralsosee "[MV] discrim" "help discrim_zh"}{...}
{viewerjumpto "Syntax" "cluster_zh##syntax"}{...}
{viewerjumpto "Description" "cluster_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "cluster_zh##linkspdf"}
{help cluster:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[MV] cluster} {hline 2}}聚类分析命令简介{p_end}
{p2col:}({mansection MV cluster:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    数据的聚类分析

	{cmd:cluster} {it:subcommand} {it:...}

 
    不相似度矩阵的聚类分析

	{cmd:clustermat} {it:subcommand} {it:...}


{marker description}{...}
{title:描述}

{pstd}
Stata的聚类分析程序提供了几种层次和部分聚类方法、聚类后汇总方法，以及聚类管理工具。本条目介绍了{cmd:cluster}和{cmd:clustermat}命令的概述（另见 {manhelp clustermat MV}），以及Stata的聚类分析管理工具。可以通过使用{cmd:cluster}命令对数据应用层次聚类方法，或通过使用{cmd:clustermat}命令对用户提供的不相似度矩阵进行处理。

{pstd}
{cmd:cluster}命令具有以下{it:subcommands}，详细信息请参见各自的手册条目。

	主题{col 44}{cmd:cluster} {it:subcommand}
	{hline 65}
	观察值的部分聚类方法
	（见 {manhelp cluster_kmeans MV:cluster kmeans 和 kmedians}）
	    K均值{col 44}{cmd:cluster kmeans}
	    K中位数{col 44}{cmd:cluster kmedians}

	观察值的层次聚类方法
	（见 {manhelp cluster_linkage MV:cluster linkage}）
	    单一连接{col 44}{cmd:cluster singlelinkage}
	    Average linkage{col 44}{cmd:cluster averagelinkage}
	    完全连接{col 44}{cmd:cluster completelinkage}
	    加权平均连接{col 44}{cmd:cluster waveragelinkage}
	    中位数连接{col 44}{cmd:cluster medianlinkage}
	    中心连接{col 44}{cmd:cluster centroidlinkage}
	    Ward's linkage{col 44}{cmd:cluster wardslinkage}

	聚类后的命令
	    停止规则{col 44}{helpb cluster stop}
 	    Dendrograms (聚类树){col 44}{helpb cluster dendrogram}
		{col 44}(同义词: {cmd:cluster} {cmd:tree})
	    生成分组变量{col 44}{helpb cluster generate}

	用户工具
	    聚类笔记{col 44}{helpb cluster notes}
	    其他用户工具
	    （见 {manhelp cluster_utility MV:cluster utility}）
		{col 44}{cmd:cluster dir}
		{col 44}{cmd:cluster list}
		{col 44}{cmd:cluster drop}
		{col 44}{cmd:cluster use}
		{col 44}{cmd:cluster rename}
		{col 44}{cmd:cluster renamevar}

	程序员工具
	（见 {manhelp cluster_programming MV:cluster programming utilities}）
		{col 44}{cmd:cluster query}
		{col 44}{cmd:cluster set}
		{col 44}{cmd:cluster} {cmd:delete}
		{col 44}{cmd:cluster} {cmd:parsedistance}
		{col 44}{cmd:cluster measures}

	（不）相似度度量
	（见 {manhelpi measure_option MV}）
	{hline 65}

	{pstd}
	{cmd:clustermat}命令具有以下{it:subcommands}，详细信息与相关的{cmd:cluster}命令一起在{helpb cluster linkage}帮助文件中说明。另见 {manhelp clustermat MV}。

	主题{col 44}{cmd:clustermat} {it:subcommand}
	{hline 65}
	不相似度矩阵的层次聚类
	（见 {manhelp cluster_linkage MV:cluster linkage}）
	    单一连接{col 44}{cmd:clustermat singlelinkage}
	    完全连接{col 44}{cmd:clustermat completelinkage}
	    平均连接{col 44}{cmd:clustermat averagelinkage}
	    加权平均连接{col 44}{cmd:clustermat waveragelinkage}
	    中位数连接{col 44}{cmd:clustermat medianlinkage}
	    中心连接{col 44}{cmd:clustermat centroidlinkage}
	    Ward's linkage{col 44}{cmd:clustermat wardslinkage}
	{hline 65}

{pstd}
此外，{cmd:clustermat stop}聚类后命令的语法与{cmd:cluster stop}命令相似；请参见 {manhelp cluster_stop MV:cluster stop}。对于其余的聚类后命令和用户工具，您可以指定{cmd:cluster}或{cmd:clustermat}——两者均可。
{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MV clusterRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cluster.sthlp>}