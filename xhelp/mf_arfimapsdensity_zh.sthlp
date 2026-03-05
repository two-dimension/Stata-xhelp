{smcl}
{* *! version 1.0.2  01mar2017}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] ucmpsdensity()" "help mf_ucmpsdensity_zh"}{...}
{viewerjumpto "Syntax" "mf_arfimapsdensity_zh##syntax"}{...}
{viewerjumpto "Description" "mf_arfimapsdensity_zh##description"}{...}
{viewerjumpto "Remarks" "mf_arfimapsdensity_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_arfimapsdensity_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_arfimapsdensity_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_arfimapsdensity_zh##source"}
{help mf_arfimapsdensity:English Version}
{hline}{...}
{title:标题}

{p 4 31 2}
{bf:[M-5] arfimapsdensity()} {hline 2} 参数谱密度函数{p_end}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real matrix} 
{cmd:arfimapsdensity(}{it:real scalar n}{cmd:,} {it:real colvector phi}{cmd:,}
	{it:real colvector theta}{cmd:,} {it:real scalar d}{cmd:,} 
	{it:real scalar v}{cmd:,} 
	{it:real scalar pspectrum}{cmd:, |}{it:real vector range}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:arfimapsdensity(}{it:n}{cmd:,} {it:phi}{cmd:,} {it:theta}{cmd:,} 
	{it:d}{cmd:,} {it:v}{cmd:,} {it:pspectrum}{cmd:, |}{it:range}{cmd:)}
计算由自回归参数 {it:phi}、移动平均参数 {it:theta}、分数差分参数 {it:d} 和特异性误差方差 {it:v} 定义的自回归分数积分移动平均 (ARFIMA) 过程的参数谱密度。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:arfimapsdensity()} 返回一个 {it:n x} 2 矩阵，其中第一列包含谱密度，第二列包含频率。如果 {it:pspectrum} != 0， 将计算参数谱。默认情况下，{it:range} = (0,{helpb mf_pi:pi()})。当 {it:d} = 0 时，得到一个 ARMA 过程的谱密度。


{marker conformability}{...}
{title:兼容性}

    {cmd:arfimapsdensity(}{it:n}{cmd:,} {it:phi}{cmd:,} {it:theta}{cmd:,} {it:d}{cmd:,} {it:v}{cmd:,} {it:pspectrum}{cmd:, |}{it:range}{cmd:)}:
	       {it:n}:  1 {it:x} 1
	     {it:phi}:  {it:p x} 1
	   {it:theta}:  {it:q x} 1
	       {it:d}:  1 {it:x} 1
	       {it:v}:  1 {it:x} 1
       {it:pspectrum}:  1 {it:x} 1
	   {it:range}:  2 {it:x} 1 或 1 {it:x} 2
	  {it:result}:  {it:n x} 2


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
由 {it:phi} 和 {it:theta} 定义的 AR({it:p}) 和 MA({it:q}) 多项式的根必须在单位圆外，且这两个多项式不得有共同根。分数差分参数必须在 (-1,1/2) 之内。方差参数 {it:v} 必须大于零。{it:range} 如果被指定，必须在 [0,{helpb mf_pi:pi()}] 范围内。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view arfimapsdensity.mata, adopath asis:arfimapsdensity.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_arfimapsdensity.sthlp>}