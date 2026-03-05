{smcl}
{* *! version 1.0.2  05may2011}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] qrd()" "help mf_qrd_zh"}{...}
{vieweralsosee "[M-5] qrsolve()" "help mf_qrsolve_zh"}{...}
{vieweralsosee "[M-5] solveupper()" "help mf_solveupper"}{...}
{vieweralsosee "" "--"}{...}
{viewerjumpto "Syntax" "mf__lsfitqr_zh##syntax"}{...}
{viewerjumpto "Description" "mf__lsfitqr_zh##description"}{...}
{viewerjumpto "Remarks" "mf__lsfitqr_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf__lsfitqr_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf__lsfitqr_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf__lsfitqr_zh##source"}
{help mf__lsfitqr:English Version}
{hline}{...}
{title:标题}

{p 4 26 2}
{bf:[M-5] _lsfitqr()} {hline 2} 使用QR分解的最小二乘回归{p_end}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数矩阵} 
{cmd:_lsfitqr(}{it:实数矩阵 X}{cmd:,} {it:实数矩阵 Y}{cmd:,}
	{it:实数列向量 wt}{cmd:,} {it:实数标量 cons}{cmd:,} 
	{it:实数标量 rank}{cmd:,} {it:实数矩阵 E}{cmd:,} 
	{it:实数矩阵 r}{cmd:,} {it:实数矩阵 R}{cmd:,} 
	{it:实数行向量 p}{cmd:, |}{it: 实数标量 tol}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:_lsfitqr(}{it:X}{cmd:,} {it:Y}{cmd:,} {it:wt}{cmd:,} 
	{it:cons}{cmd:,} {it:rank}{cmd:,} {it:E}{cmd:,} {it:r}{cmd:,} 
	{it:R}{cmd:,} {it:p}{cmd:, |} {it:tol}{cmd:)}
计算{it:Y}对{it:X}的最小二乘回归拟合，使用正权重{it:wt}。如果不需要权重，请使用 
{it:wt} = {cmd:J(}0{cmd:,}1{cmd:,}0{cmd:)}。如果在模型中希望包含常数项并且{it:X}中没有一列的值为1，则使用{it:cons} = 1。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:_lsfitqr()}返回一个回归系数矩阵，该矩阵是将{it:Y}对{it:X}回归而得。权重{it:wt}是可选的。如果{it:cons}不为零，则模型中添加一个常数项。模型的秩返回在{it:rank}中，残差协方差在{it:E}中返回，回归均方矩阵在{it:r}中。上三角矩阵{it:R}来自QR分解，{it:p}是枢轴向量。设{it:q} = {cmd:invorder(}{it:p}{cmd:)}，并且{it:Z} =
{it:R}{cmd:[}{it:q}{cmd:,}{it:q}{cmd:]}, 则有{it:X}{cmd:'}{it:X} =
{it:Z}{cmd:'}{it:Z}。

{p 4 4 2}
返回时，{it:Y}包含预测值，  
{it:X}{cmd:*}{it:b} = {it:Q1}{cmd:*}{it:Q}{cmd:'}{it:Y}。  
详见{help mf_qrd_zh:qrd()}以定义{it:Q1}。
{it:X}和{it:wt}将被修改。当{cmd:_lsfitqr()}添加常数项时，它不会被枢轴化，回归均方将根据均值进行调整。
用于确定回归秩的容错度{it:tol}将被传递给{cmd:_solveupper()}。{cmd:_lsfitqr()}使用2^10作为默认值。有关{it:tol}如何用于确定回归秩，详见{helpb mf_solveupper:_solveupper()}。


{marker conformability}{...}
{title:适应性}

    {cmd:_lsfitqr(}{it:X}{cmd:,} {it:Y}{cmd:,} {it:wt}{cmd:,} {it:cons}{cmd:,} {it:rank}{cmd:,} {it:E}{cmd:,} {it:r}{cmd:,} {it:R}{cmd:,} {it:p}{cmd:, |}{it: tol}{cmd:)}:
	       {it:X}:  {it:n x k}
	       {it:Y}:  {it:n x m}
	      {it:wt}:  {it:n x} 1 或  0 {it: x} 1
	    {it:cons}:  1 {it:x} 1
	    {it:rank}:  1 {it:x} 1
	       {it:E}:  {it:m x m}
	       {it:r}:  {it:m x m}
	       {it:R}:  {it:k x k}
	       {it:p}:  1 {it:x k}
             {it:tol}:  1 {it:x} 1
	  {it:result}:  {it:k x m}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{it:Y}和{it:X}的行数必须相等，除非 
{it:X} = {bf:J(}0{bf:,}0{bf:,}0{cmd:)}。 如果 
{it:X} = {bf:J(}0{bf:,}0{bf:,}0{cmd:)}, {it:cons}必须不为零。权重{it:wt}被忽略，除非{bf:length(}{it:wt}{cmd:)} == {it:n}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view _lsfitqr.mata, adopath asis:_lsfitqr.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf__lsfitqr.sthlp>}