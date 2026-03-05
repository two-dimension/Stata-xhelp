{smcl}
{* *! version 1.0.2  15may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] assert" "help assert_zh"}{...}
{vieweralsosee "[P] cscript_log" "help cscript_log_zh"}{...}
{vieweralsosee "[P] rcof" "help rcof_zh"}{...}
{vieweralsosee "[P] savedresults" "help savedresults"}{...}
{vieweralsosee "[R] which" "help which_zh"}{...}
{viewerjumpto "Syntax" "moptobj_zh##syntax"}{...}
{viewerjumpto "Description" "moptobj_zh##description"}{...}
{viewerjumpto "Remarks" "moptobj_zh##remarks"}
{help moptobj:English Version}
{hline}{...}
{title:标题}

{p 4 21 2}
{hi:[P] moptobj} {hline 2} 可回忆的最大似然评估器


{marker syntax}{...}
{title:语法}

{p 4 4 2}
语法分为以下几个部分：

	{help moptobj##step1:步骤 1: 初始化}
	{help moptobj##step2:步骤 2: 执行单次函数评估}
	{help moptobj##step3:步骤 3: 清理}


{marker step1}{...}
    {title:步骤 1: 初始化}

{col 9}{...}
{it:command} ... {cmd:,} ... {...}
{help moptobj##syn_init:{bf:moptobj(}{it:name}{bf:)}}


{marker step2}{...}
    {title:步骤 2: 执行单次函数评估}

{col 9}{...}
{it:void}{...}
{col 24}{...}
{help moptobj##syn_eval:{bf:Mopt_reset_params(}{it:name}{bf:,} {it:b}{bf:)}}

{col 9}{...}
{it:real scalar}{...}
{col 24}{...}
{help moptobj##syn_eval:{bf:Mopt_ll_eval(}{it:name}{bf:)}}


{marker step3}{...}
    {title:步骤 3: 清理}

{col 9}{...}
{it:void}{...}
{col 24}{...}
{help moptobj##syn_clean:{bf:Mopt_moptobj_cleanup(}{it:name}{bf:)}}


{marker syn_init}{...}
    {title:步骤 1: 初始化}

{p 4 4 2}
要在Mata中使用可回忆的最大似然评估器，您必须首先运行一个支持{cmd:moptobj()}选项的Stata估计命令。
该选项将底层的{help mf_moptimize_zh:moptimize()}结构保存在Mata内存中，以{name}命名。

{p 4 4 2}
在命令执行过程中创建的某些临时变量将以{name}前缀保存在当前数据集中作为永久变量。

{p 4 4 2}
支持{cmd:moptobj()}选项的命令有：
{help betareg_zh},
{help binreg_zh},
{help biprobit_zh},
{help clogit_zh},
{help cloglog_zh},
{help fracreg_zh},
{help glm_zh},
{help gsem_command_zh:gsem},
{help heckman_zh},
{help heckoprobit_zh},
{help heckprobit_zh},
{help hetprobit_zh},
{help hetregress_zh},
{help intreg_zh},
{help logistic_zh},
{help logit_zh},
{help mlogit_zh},
{help mprobit_zh},
{help nbreg_zh},
{help ologit_zh},
{help oprobit_zh},
{help poisson_zh},
{help probit_zh},
{help streg_zh},
{help tnbreg_zh},
{help tpoisson_zh},
{help truncreg_zh},
{help zinb_zh},
{help zip_zh},
以及
{help zioprobit_zh}.


{marker syn_eval}{...}
    {title:步骤 2: 执行单次函数评估}

{p 4 4 2}
第一个函数用新的系数向量替换当前的系数向量；第二个函数返回在新系数向量上的对数似然值评估。

{p 8 12 2}
{cmd:Mopt_reset_params(}{it:name}{cmd:,} {it:{help mf_moptimize##def_b:b}}{cmd:)}
    用{it:b}替换当前的系数向量。新向量必须与当前向量维度相同。

{p 8 12 2}
{cmd:Mopt_ll_eval(}{it:name}{cmd:)}
    在当前系数向量上执行一次函数评估。


{marker syn_clean}{...}
    {title:步骤 3: 清理}

{p 8 12 2}
{cmd:Mopt_moptobj_cleanup(}{it:name}{cmd:)}
    从内存中删除{help mf_moptimize_zh:moptimize()}结构，并删除在{help moptobj##syn_init:步骤 1}中创建的所有永久性临时变量。


{marker description}{...}
{title:描述}

{pstd}
{cmd:moptobj()}表示一组支持可回忆的最大似然评估器的Stata估计命令和Mata函数。


{marker remarks}{...}
{title:备注}

{pstd}
可回忆的最大似然评估器工具未在手册中记录，因为这可能对许多用户没有兴趣。

{pstd}
建议的工作流程如下：

	{hline 60}
	{it:command} ... {cmd:,} ... {cmd:moptobj(}{it:name}{cmd:)}
	
	{cmd:mata:}
		{cmd:for (i=1; i<=n; i++) {c -(}}
			...
			{cmd:b =} ...
			{cmd:Mopt_reset_params(}{it:name}{cmd:, b)}
			{cmd:ll = Mopt_ll_eval(}{it:name}{cmd:)}
			...
		{cmd:{c )-}}	
		{cmd:Mopt_moptobj_cleanup(}{it:name}{cmd:)}
	{cmd:end}
	{hline 60}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <moptobj.sthlp>}