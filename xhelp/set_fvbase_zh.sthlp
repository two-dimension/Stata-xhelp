{smcl}
{* *! version 1.0.0  08mar2017}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrfvvarlists}{...}
{viewerjumpto "Syntax" "set_fvbase_zh##syntax"}{...}
{viewerjumpto "Description" "set_fvbase_zh##description"}
{help set_fvbase:English Version}
{hline}{...}
{title:标题}

{p2colset 4 22 24 2}{...}
{p2col:{hi:[P] set fvbase} {hline 2}}设置是否自动确定因子变量的默认基准水平
{p_end}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:set}
{cmd:fvbase}
{c -(}{cmd:on} | {cmd:off}{c )-}


{marker description}{...}
{title:描述}

{pstd}
{cmd:set} {cmd:fvbase}指定在未明确指定时是否自动确定因子变量的默认基准水平。当 {cmd:set} {cmd:fvbase} {cmd:off} 生效时，如果未指定基准水平，则所有因子变量都被假定为没有基准水平，即便基准水平已经通过 {help fvset_zh} 设置。

{pstd}
以下命令的行为就像 {cmd:set} {cmd:fvbase} {cmd:off} 生效一样，无论当前设置如何：

	{help list_zh}
	{help mean_zh}
	{help summarize_zh}
	{help total_zh}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <set_fvbase.sthlp>}