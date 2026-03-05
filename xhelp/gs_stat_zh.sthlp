{smcl}
{* *! version 1.0.4  11feb2011}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] gs_graphinfo" "help gs_graphinfo_zh"}{...}
{viewerjumpto "Syntax" "gs_stat_zh##syntax"}{...}
{viewerjumpto "Description" "gs_stat_zh##description"}{...}
{viewerjumpto "Remarks" "gs_stat_zh##remarks"}
{help gs_stat:English Version}
{hline}{...}
{title:标题}

{p 4 21 2}
{hi:[G-2] gs_stat} {hline 2} 验证（不存在）图形的子程序


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:gs_stat}
{c -(} {cmd:exists} | {cmd:!exists} {c )-}
{it:name}

{p 8 16 2}
{cmd:gs_stat}
{it:lmac}
{cmd::}
{it:name}


{marker description}{...}
{title:描述}

{pstd}
{cmd:gs_stat} 的第一个语法验证图形 {it:name} 是否存在或不存在。

{pstd}
{cmd:gs_stat} 的第二个语法在局部宏 {it:lmac} 中返回 "{cmd:exists}" 或 "{cmd:!exists}"。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:gs_stat} 的第一个语法在 {it:name} 确认的情况下不返回任何信息且保持安静；否则，它会发出相应的错误信息：

	{err:___ 无效名称}
	r(198);

	{err:图形 ___ 已经存在}
	r(110);

	{err:图形 ___ 未找到}
	r(111);

	{err:类对象 ___ 存在但不是图形}
	r(110);

	{err:类对象 ___ （不是图形）已经存在}
	r(110);

{pstd}
{cmd:gs_stat} 的第二个语法在 {it:lmac} 中返回文件是否存在，但它仍然可能会发出错误信息：

	{err:___ 无效名称}
	r(198);

	{err:类对象 ___ （不是图形）存在：}
	      {err:___ 不能用作图形名称}
	r(110);

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gs_stat.sthlp>}