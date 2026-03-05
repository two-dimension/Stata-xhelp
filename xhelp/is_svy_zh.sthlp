{smcl}
{* *! version 1.0.3  11feb2011}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy" "help svy_zh"}{...}
{viewerjumpto "Syntax" "is_svy_zh##syntax"}{...}
{viewerjumpto "Description" "is_svy_zh##description"}{...}
{viewerjumpto "Option" "is_svy_zh##option"}
{help is_svy:English Version}
{hline}{...}
{title:标题}

{p 4 22 2}
{hi:[SVY] is_svy} {hline 2} 确定最后的估计命令是否属于 svy 类


{marker syntax}{...}
{title:语法}

	{cmd:is_svy} [{cmd:,} {cmdab:r:egression}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:is_svy} 返回 {cmd:r(is_svy)}，指示最后的估计命令是否属于 {hi:svy} 命令类（1 表示是，0 表示不是）。请注意，{hi:svy} 将 "汇总命令"（如 {cmd:svymean}）与回归类型命令（如 {cmd:svyregress}）视为估计命令。


{marker option}{...}
{title:选项}

{phang}
{cmd:regression} 指定 {cmd:r(is_svy)} 指示最后的估计命令是否为 {hi:svy} 回归命令。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <is_svy.sthlp>}