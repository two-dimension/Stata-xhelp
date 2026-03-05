
{smcl}
{* *! version 1.0.1  11feb2011}{...}
{title:过时的命令}

{help svymlog:English Version}
{hline}
{pstd}
{cmd:bstrap},
{cmd:simul},
{cmd:spikeplt},
{cmd:stcurv},
{cmd:svyintrg},
{cmd:svymlog},
{cmd:svyolog},
{cmd:svyoprob},
{cmd:svypois},
{cmd:svyprobt},
{cmd:svyreg},
{cmd:xtclog}, 和
{cmd:xtpois}
已被重命名，以利用 Stata 版本 7（及更高版本）允许使用的更长名称。旧命令名称继续有效。

	旧名称          新名称
	{hline 8}        {hline 12}
	{cmd:bstrap}          {help bootstrap_zh}
	{cmd:simul}           {help simulate_zh}
	{cmd:spikeplt}        {help spikeplot_zh}
	{cmd:stcurv}          {help stcurve_zh}
	{cmd:svyintrg}        {cmd:svy:} {help intreg_zh}
	{cmd:svymlog}         {cmd:svy:} {help mlogit_zh}
	{cmd:svyolog}         {cmd:svy:} {help ologit_zh}
	{cmd:svyoprob}        {cmd:svy:} {help oprobit_zh}
	{cmd:svypois}         {cmd:svy:} {help poisson_zh}
	{cmd:svyprobt}        {cmd:svy:} {help probit_zh}
	{cmd:svyreg}          {cmd:svy:} {help regress_zh}
	{cmd:xtclog}          {help xtcloglog_zh}
	{cmd:xtpois}          {help xtpoisson_zh}

{pstd}
请查看上述新命令的帮助。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <svymlog.sthlp>}