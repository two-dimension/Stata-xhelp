
{smcl}
{* *! version 1.0.1  11feb2011}{...}
{title:过时的命令}

{help svy8:English Version}
{hline}
{pstd}
这些命令已被 Stata 版本 9（及更高版本）中的 {cmd:svy} 前缀命令所替代。旧的命令名称继续有效。

	旧命令			{col 35}新命令
	{hline 11}		{col 35}{hline 15}
	{cmd:svygnbreg}		{col 35}{cmd:svy:} {helpb gnbreg}
	{cmd:svyheckman}	{col 35}{cmd:svy:} {help heckman_zh}
	{cmd:svyheckprob}	{col 35}{cmd:svy:} {helpb heckprob}
	{cmd:svyintreg}		{col 35}{cmd:svy:} {help intreg_zh}
	{cmd:svyivreg}		{col 35}{cmd:svy:} {help ivreg_zh}
	{cmd:svylogit}		{col 35}{cmd:svy:} {help logit_zh}
	{cmd:svymean}		{col 35}{cmd:svy:} {help mean_zh}
	{cmd:svymlogit}		{col 35}{cmd:svy:} {help mlogit_zh}
	{cmd:svynbreg}		{col 35}{cmd:svy:} {help nbreg_zh}
	{cmd:svyologit}		{col 35}{cmd:svy:} {help ologit_zh}
	{cmd:svyoprobit}	{col 35}{cmd:svy:} {help oprobit_zh}
	{cmd:svypoisson}	{col 35}{cmd:svy:} {help poisson_zh}
	{cmd:svyprobit}		{col 35}{cmd:svy:} {help probit_zh}
	{cmd:svyprop}		{col 35}{cmd:svy:} {help proportion_zh}
	{cmd:svyratio}		{col 35}{cmd:svy:} {help ratio_zh}
	{cmd:svyregress}	{col 35}{cmd:svy:} {help regress_zh}
	{cmd:svytab}		{col 35}{helpb "svy: tabulate"}
	{cmd:svytotal}		{col 35}{cmd:svy:} {help total_zh}

{pstd}
请查看上述新命令的帮助。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <svy8.sthlp>}