{smcl}
{* *! version 1.0.1  05may2011}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] arfimapsdensity()" "help mf_arfimapsdensity_zh"}{...}
{vieweralsosee "" "--"}{...}
{viewerjumpto "语法" "mf_ucmpsdensity_zh##syntax"}{...}
{viewerjumpto "描述" "mf_ucmpsdensity_zh##description"}{...}
{viewerjumpto "备注" "mf_ucmpsdensity_zh##remarks"}{...}
{viewerjumpto "符合性" "mf_ucmpsdensity_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_ucmpsdensity_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_ucmpsdensity_zh##source"}
{help mf_ucmpsdensity:English Version}
{hline}{...}
{title:标题}

{p 4 28 2}
{bf:[M-5] ucmpsdensity()} {hline 2} 时间序列随机周期的参数谱密度{p_end}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数矩阵} 
{cmd:ucmpsdensity(}{it:实数标量 n}{cmd:,} {it:实数向量 rho}{cmd:,}
	{it:实数向量 lambda}{cmd:,} {it:实数向量 order}{cmd:,} 
	{it:实数标量 v}{cmd:,} 
	{it:实数标量 pspectrum}{cmd:, |}{it:实数向量 range}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:ucmpsdensity(}{it:n}{cmd:,} {it:rho}{cmd:,} {it:lambda}{cmd:,} 
	{it:d}{cmd:,} {it:v}{cmd:,} {it:pspectrum}{cmd:, |}{it:range}{cmd:)}
计算由其阶数、频率和阻尼效应定义的时间序列随机周期的参数谱密度。周期频率存储在向量 {it:rho} 中，阻尼效应存储在向量 {it:lambda} 中。{it:v} 包含过程的特有误差方差。这些周期参数可以从未观察到的成分模型中提取。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:ucmpsdensity()} 返回一个 {it:n x k}+1 矩阵，其中包含前 {it:k} 列中的谱密度和最后一列中的频率，其中 {it:k} = {cmd:length(}{it:rho}{cmd:)}。如果 {it:pspectrum} != 0，则计算参数谱。默认情况下，{it:range} = (0,{helpb mf_pi:pi()})


{marker conformability}{...}
{title:符合性}

    {cmd:ucmpsdensity(}{it:n}{cmd:,} {it:rho}{cmd:,} {it:lambda}{cmd:,} {it:order}{cmd:,} {it:v}{cmd:,} {it:pspectrum}{cmd:, |}{it:range}{cmd:)}:
	       {it:n}:  1 {it:x} 1
	     {it:rho}:  {it:k x} 1 或 1 {it:x k}
	  {it:lambda}:  {it:k x} 1 或 1 {it:x k}
	   {it:order}:  {it:k x} 1 或 1 {it:x k}
	       {it:v}:  1 {it:x} 1
       {it:pspectrum}:  1 {it:x} 1
	   {it:range}:  2 {it:x} 1 或 1 {it:x} 2
	  {it:result}:  {it:n x k}+1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
频率 {it:rho} 必须在 (0,{helpb mf_pi:pi()}) 之间。阻尼效应 {it:lambda} 必须在 (0,1) 之间。周期阶数 {it:order} 必须包含正整数。方差参数 {it:v} 必须大于零。如果指定范围，则必须在 [0,{helpb mf_pi:pi()}] 之间。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view ucmpsdensity.mata, adopath asis:ucmpsdensity.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_ucmpsdensity.sthlp>}