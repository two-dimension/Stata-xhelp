{smcl}
{* *! version 1.0.3  11feb2011}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] by" "help by_zh"}{...}
{vieweralsosee "[P] byable" "help byprog_zh"}{...}
{vieweralsosee "[P] quietly" "help quietly_zh"}{...}
{viewerjumpto "Syntax" "qby_zh##syntax"}{...}
{viewerjumpto "Description" "qby_zh##description"}
{help qby:English Version}
{hline}{...}
{title:标题}

{p2colset 5 16 18 2}{...}
{p2col :{hi:[R] qby} {hline 2}}安静地对数据的子集重复 Stata 命令{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 34 2}{cmd:qby} {it:变量列表}{cmd::}  {it:命令}

{p 8 34 2}{cmd:qby} {it:变量列表1} [{cmd:(}{it:变量列表2}{cmd:)}]
	[{cmd:,} {cmdab:s:ort} {cmd:rc0}]{cmd::}  {it:命令}


{p 8 34 2}{cmd:qbys} {it:变量列表}{cmd::}  {it:命令}

{p 8 34 2}{cmd:qbys} {it:变量列表1} [{cmd:(}{it:变量列表2}{cmd:)}]
	[{cmd:,} {cmd:rc0}]{cmd::}  {it:命令}


{marker description}{...}
{title:描述}

{pstd}
{cmd:qby} 和 {cmd:qbys} 是方便命令，相当于

	    {cmd:quietly by} {it:...}
    和
	    {cmd:quietly bysort} {it:...}

{pstd}
请参见 {help by_zh} 和 {help quietly_zh}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <qby.sthlp>}