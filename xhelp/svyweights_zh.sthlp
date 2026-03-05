{smcl}
{* *! version 1.1.4  14may2018}{...}
{* 本文件来自 svyset.dlg}{...}
{vieweralsosee "[SVY] svy jackknife" "mansection SVY svyjackknife"}{...}
{vieweralsosee "[SVY] svyset" "mansection SVY svyset"}{...}
{vieweralsosee "[SVY] Variance estimation" "mansection SVY Varianceestimation"}{...}
{vieweralsosee "[SVY] svy brr" "help svy_brr_zh"}{...}
{vieweralsosee "[SVY] svy bootstrap" "help svy_bootstrap_zh"}{...}
{vieweralsosee "[SVY] svy jackknife" "help svy_jackknife_zh"}{...}
{vieweralsosee "[SVY] svy sdr" "help svy_sdr_zh"}{...}
{vieweralsosee "[SVY] svyset" "help svyset_zh"}
{help svyweights:English Version}
{hline}{...}
{title:svyset 允许的所有不同类型的权重变量是什么？}

{phang}
{bf:抽样权重}。
给定调查设计，个体的抽样权重是被抽样概率的倒数。被抽样的概率源于调查设计中的分层和聚类。抽样权重通常被认为是与其关联的抽样个体所代表的人口中的个体数量。

{phang}
{bf:重要性权重}。
重要性权重是允许出现负值的抽样权重。
负的抽样权重可能源自各种后抽样调整程序。
重要性权重应很少使用。

{phang}
{bf:重复权重变量}。
重复权重变量包含为重新抽样数据而调整的抽样权重值。

{pmore}
{it:平衡重复复制权重变量}是经过 BRR 方法调整用于重新抽样数据的抽样权重的副本。

{pmore}
{it:抽样切割复制权重变量}是经过抽样切割法调整用于重新抽样数据的抽样权重的副本。

{pmore}
有关 BRR 和抽样切割复制权重变量的详细讨论，请参阅 {manlink SVY Variance estimation}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <svyweights.sthlp>}