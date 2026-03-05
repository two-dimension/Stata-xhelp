{smcl}
{* *! version 1.0.2  15may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "Syntax" "mf_panelsum_zh##syntax"}{...}
{viewerjumpto "Description" "mf_panelsum_zh##description"}{...}
{viewerjumpto "Conformability" "mf_panelsum_zh##conformability"}{...}
{viewerjumpto "Source code" "mf_panelsum_zh##source"}
{help mf_panelsum:English Version}
{hline}{...}
{title:标题}

{p 4 8 2}
{bf:[M-5] panelsum()} {hline 2} 面板求和


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:real matrix} = 
{cmd:panelsum(}{it:X}{cmd:,}
[{it:weights}{cmd:,}]
{it:info}{cmd:)}

{p 4 4 2}
其中

	    {it:X}:  {it:real} {it:matrix}，可能是一个视图
      {it:weights}:  {it:real colvector}
         {it:info}:  {it:real matrix}，来自 {help mf_panelsetup_zh:panelsetup()}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:panelsum()} 根据 {it:info} 中的面板信息计算 {it:X} 的列的面板内和。


{marker conformability}{...}
{title:符合性}

{p 4 4 2}
{cmd:panelsum(}{it:X}{cmd:,} 
{it:weights}{cmd:,} 
{it:info}{cmd:)}:
{p_end}
		{it:X}:  {it:r x c}
	  {it:weights}:  r {it:x} 1    (可选)
	     {it:info}:  {it:K x} 2, {it:K} = 面板数量
	   {it:result}:  {it:K x c}


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数内置。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_panelsum.sthlp>}