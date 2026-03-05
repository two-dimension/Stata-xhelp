{smcl}
{* *! version 1.2.2  15may2018}{...}
{findalias asfradohelp}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] help" "help help_zh"}{...}
{viewerjumpto "Syntax" "examplehelpfile_zh##syntax"}{...}
{viewerjumpto "Description" "examplehelpfile_zh##description"}{...}
{viewerjumpto "Options" "examplehelpfile_zh##options"}{...}
{viewerjumpto "Remarks" "examplehelpfile_zh##remarks"}{...}
{viewerjumpto "Examples" "examplehelpfile_zh##examples"}
{help examplehelpfile:English Version}
{hline}{...}
{title:标题}

{phang}
{bf:whatever} {hline 2} 计算任意统计量


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmdab:wh:atever}
[{varlist}]
{ifin}
{weight}
[{cmd:,} {it:options}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{opt d:etail}}显示额外的统计信息{p_end}
{synopt:{opt mean:only}}抑制显示；仅计算均值；
程序员选项{p_end}
{synopt:{opt f:ormat}}使用变量的显示格式{p_end}
{synopt:{opt sep:arator(#)}}每 {it:#} 个变量后画分隔线；
默认值是 {cmd:separator(5)}{p_end}
{synopt:{opth g:enerate(newvar)}}创建变量名 {it:newvar}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
允许使用 {cmd:by}；见 {manhelp by D}.{p_end}
{p 4 6 2}
允许使用 {cmd:fweight}；见 {help weight_zh}.


{marker description}{...}
{title:描述}

{pstd}
{cmd:whatever} 在数据未分层时计算 {varlist} 中变量的任意统计量。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt detail} 显示计算的详细输出。

{phang}
{opt meanonly} 将计算限制为仅基于均值。默认值使用修剪均值。

{phang}
{opt format} 请求使用与变量关联的显示格式来显示汇总统计，而不是使用默认的 {cmd:g} 显示格式；见
{findalias frformats}。

{phang}
{opt separator(#)} 指定在输出中插入分隔线的频率。默认值是 {cmd:separator(5)}，表示每5个变量后绘制一条线。 {cmd:separator(10)} 将在每10个变量后绘制一条线。 {cmd:separator(0)} 会抑制分隔线。

{phang}
{opth generate(newvar)} 创建 {it:newvar}，其中包含任意值。


{marker remarks}{...}
{title:备注}

{pstd}
有关任意统计量的详细信息，请参见
{manlink R Intro}。


{marker examples}{...}
{title:示例}

{phang}{cmd:. whatever mpg weight}{p_end}

{phang}{cmd:. whatever mpg weight, meanonly}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <examplehelpfile.sthlp>}