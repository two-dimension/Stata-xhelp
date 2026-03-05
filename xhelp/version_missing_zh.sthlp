{smcl}
{* *! version 1.1.1  12may2017}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] display" "help display_zh"}{...}
{vieweralsosee "[R] which" "help which_zh"}{...}
{vieweralsosee "whatsnew" "help whatsnew_zh"}{...}
{viewerjumpto "Syntax" "version_missing_zh##syntax"}{...}
{viewerjumpto "Description" "version_missing_zh##description"}
{help version_missing:English Version}
{hline}{...}
{title:标题}

{p2colset 5 29 31 2}{...}
{p2col :{hi:[P] version, missing} {hline 2}}设置版本以使用对缺失值的现代处理{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	    {cmdab:vers:ion} {it:#}{cmd:,} {cmdab:mis:sing}

	    {cmdab:vers:ion} {it:#}{cmd:,} {cmdab:mis:sing}{cmd::}  {it:command}


{marker description}{...}
{title:描述}

{pstd}
{cmd:version} {it:#}{cmd:,} {cmd:missing} 请求对缺失值的现代处理。只有当 {it:#} 小于 8 时，允许使用 {cmd:missing} 
（因为在此情况下，缺失值的现代处理是隐含的）。

{pstd}
在 8 版本之前，只有一个缺失值 （{cmd:.}）。为了保持旧程序的正常运行，当 {cmd:version} 小于 8 时，Stata 将表现得好像 {cmd:.} = {cmd:.a} = {cmd:.b} = ... = {cmd:.z}。因此旧代码，例如 "...{cmd:if x!=.}"，继续排除所有缺失观察值。

{pstd}
指定 {cmd:missing} 会导致旧程序无法运行。指定 {cmd:missing} 的唯一原因是您希望更新旧程序以区分缺失值编码，并且您确实希望在其他方面使其现代化。很少有程序需要这样做。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <version_missing.sthlp>}