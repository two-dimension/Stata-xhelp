{smcl}
{* *! version 1.0.3  21aug2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] Toeplitz()" "help mf_toeplitz_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] arfimaacf()" "help mf_arfimaacf_zh"}{...}
{viewerjumpto "语法" "mf_toeplitzsolve_zh##syntax"}{...}
{viewerjumpto "描述" "mf_toeplitzsolve_zh##description"}{...}
{viewerjumpto "备注" "mf_toeplitzsolve_zh##remarks"}{...}
{viewerjumpto "兼容性" "mf_toeplitzsolve_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_toeplitzsolve_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_toeplitzsolve_zh##source"}{...}
{viewerjumpto "参考文献" "mf_toeplitzsolve_zh##references"}
{help mf_toeplitzsolve:English Version}
{hline}{...}
{title:标题}

{p 4 8 2}
{bf:[M-5] toeplitzsolve()} {hline 2} 使用Toeplitz矩阵求解线性系统{p_end}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数 矩阵} 
{cmd:toeplitzsolve(}{it:实数 列向量 c1}{cmd:,} |{it:实数 矩阵 Y}{cmd:)}

{p 8 12 2}
{it:实数 矩阵} 
{cmd:toeplitzscale(}{it:实数 列向量 c1}{cmd:,} {it:实数 矩阵 Y}{cmd:)}

{p 8 12 2}
{it:实数 矩阵} 
{cmd:_toeplitzscale(}{it:实数 列向量 c1}{cmd:,} {it:实数 矩阵 Y}{cmd:,}
	{it:实数 列向量 v}{cmd:,} {it:实数 标量 ldet}{cmd:)}

{p 8 12 2}
{it:实数 矩阵} 
{cmd:toeplitzchprod(}{it:实数 列向量 c1}{cmd:,} {it:实数 矩阵 Z}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:toeplitzsolve(}{it:c1}{cmd:,} |{it:Y}{cmd:)}
求解 {it:T}*{it:B} = {it:Y} 中的 {it:B}，其中 
{it:T} = {cmd:Toeplitz(}{it:c1}{cmd:,}{it:c1}{cmd:')}.
如果 {it:Y} 缺失
{cmd:_toeplitzsolve()} 求解Yule-Walker方程，其中 
{it:Y} = {it:c1}[|{it:2}\{it:n}|].

{p 4 4 2}
{cmd:toeplitzscale(}{it:c1}{cmd:,} {it:Y}{cmd:)}
使用Durbin-Levinson算法计算 {cmd:solvelower(}{it:R}{cmd:,}{it:Y}{cmd:)}。这里 
{it:T} = {cmd:Toeplitz(}{it:c1}{cmd:,}{it:c1}{cmd:')} = 
{it:R}*{it:R}{cmd:'}, {it:R} = {cmd:cholesky(}{it:T}{cmd:)}。

{p 4 4 2}
{cmd:_toeplitzscale(}{it:c1}{cmd:,} {it:Y}{cmd:,} {it:v}{cmd:,} {it:ldet}{cmd:)}
使用Durbin-Levinson算法计算 {cmd:solvelower(}{it:L}{cmd:,}{it:Y}{cmd:)}。这里
{it:T} = {cmd:Toeplitz(}{it:c1}{cmd:,}{it:c1}{cmd:')} = 
{it:L}*{it:D}*{it:L}{cmd:'}，{it:D} = {cmd:diag(}{it:v}{cmd:)}，而
{it:L} 是下三角矩阵，主对角线上的元素为1。

{p 4 4 2}
{cmd:toeplitzchprod(}{it:c1}{cmd:,} {it:Z}{cmd:)} 计算 {it:R}*{it:Z}，
其中 {it:R} = {cmd:cholesky(}{it:T}{cmd:)} 和 
{it:T} = {cmd:Toeplitz(}{it:c1}{cmd:,} {it:c1}{cmd:')} = 
{it:R}*{it:R}{cmd:'}.


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:toeplitzsolve()}, {cmd:toeplitzscale()} 和 {cmd:_toeplitzchprod()} 专门为时间序列应用设计。列向量 {it:c1} 是过程的自协方差。元素 
{it:c1}[{it:h}] = 
{cmd:cov(}{it:Y}[{it:t},{it:j}]{cmd:,}{it:Y}[{it:t+h}-1,{it:j}]{cmd:)},
{it:h} = 1, ..., {it:n-t}+1，因此 
{it:c1}[1] = {cmd:var(}{it:y}[{it:t}]{cmd:)}。这里
{it:n} = {cmd:length(}{it:c1}{cmd:)} = {cmd:rows(}{it:Y}{cmd:)}。

{p 4 4 2}
自回归过程的Yule-Walker估计通过 {it:P} = {cmd:toeplitzsolve(}{it:c1}{cmd:)} 得到，建议
{it:c1} 是自相关函数，即 {it:c1}[1] = 1。
{cmd:toeplitzsolve()} 在计算时间序列预测时也非常有用；参见 {help mf_toeplitzsolve##B1994:Beran (1994, sec. 8.7)}。

{p 4 4 2}
{it:E} = {cmd:_toeplitzscale(}{it:c1}{cmd:,}{it:Y}{cmd:,}{it:v}{cmd:,}{it:ldet}{cmd:)}
是 {it:Y} 的一步预测残差矩阵 {it:r x c1}，其中 {it:Y} 的列是从自回归过程生成的，
协方差为 {it:T} = {cmd:Toeplitz(}{it:c1}{cmd:,}{it:c1}{cmd:')};
参见 {help mf_toeplitzsolve##P2007:Palma (2007, sec. 4.1.2)}。具体而言，
{it:E}[{it:t},{it:j}] = {it:Y}[{it:t},{it:j}] - 
{it:M}[{it:t},1\{it:t},{it:t-1}]*{it:Y}[|1,{it:j}\{it:t}-1,{it:j}|]，其中 
{it:M} = {cmd:cholinv(}{it:L}{cmd:)}, 但使用Durbin-Levinson算法高效执行。-{it:M} 的行包含过程的自回归参数。向量 {it:v} 包含残差的方差，{it:ldet} 是 {it:T} 的对数行列式。这些都是计算 {it:Y} 来自具有协方差 {it:T} 的零均值时间序列过程的对数似然所需的所有量。

{p 4 4 2}
{it:Z} = {cmd:toeplitzscale(}{it:c1}{cmd:,}{it:Y}{cmd:)} 计算 
{it:Z} = {it:E}:/{cmd:sqrt(}{it:v}{cmd:)}, 其中 {it:E} 和 {it:v} 来自于对 {cmd:_toeplitzscale()} 的调用。

{p 4 4 2}
如果 {it:Z} = {cmd:rnormal(}{it:r}{cmd:,}{it:c1}{cmd:,}0{cmd:,}1{cmd:)}, 那么
{it:Y} = {cmd:toeplitzchprod(}{it:c1}{cmd:,}{it:Z}{cmd:)} 是一组长度为 {it:r} 的 {it:c1} 个独立的零均值过程，协方差为 
{it:T} = {cmd:Toeplitz(}{it:c1}{cmd:,}{it:c1}{cmd:')}。通常情况下，{it:c1} = 1。
{it:R} = {cmd:cholesky(}{it:T}{cmd:)} 使用高效的 
Shur算法执行 ({help mf_toeplitzsolve##S1997:Stewart 1997})。

{p 4 4 2}
参见 {help mf_arfimaacf_zh:[M-5] arfimaacf()} 以生成自协方差
函数 {it:c1}，用于自回归（分数整合）移动平均过程。


{marker conformability}{...}
{title:兼容性}

    {cmd:toeplitzsolve(}{it:c1}{cmd:,} |{it:Y}{cmd:)}:
	      {it:c1}:  {it:r x} 1
	       {it:Y}:  {it:r x c1}
	  {it:result}:  {it:r x c1} 或 {it: r x} 1

    {cmd:toeplitzscale(}{it:c1}{cmd:,} {it:Y}{cmd:)}:
	      {it:c1}:  {it:r x} 1
	       {it:Y}:  {it:r x c1}
	  {it:result}:  {it:r x c1}

    {cmd:_toeplitzscale(}{it:c1}{cmd:,} {it:Y}{cmd:,} {it:v}{cmd:,} {it:ldet}{cmd:)}:
	      {it:c1}:  {it:r x} 1
	       {it:Y}:  {it:r x c1}
	       {it:v}:  {it:r x} 1
            {it:ldet}:  1 {it:x} 1
	  {it:result}:  {it:r x c1}

    {cmd:toeplitzchprod(}{it:c1}{cmd:,} {it:Z}{cmd:)}:
	       {it:c1}:  {it:r x} 1
	       {it:Z}:  {it:r x c1}
          {it:result}:  {it:r x c1}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view toeplitzsolve.mata, adopath asis:toeplitzsolve.mata}


{marker references}{...}
{title:参考文献}

{marker B1994}{...}
{phang}
Beran, J. 1994. {it:Long-Memory Processes的统计学}. Chapman & Hall/CRC.

{marker P2007}{...}
{phang}
Palma, W. 2007. {it:长记忆时间序列：理论与方法}. Wiley.

{marker S1997}{...}
{phang}
Stewart, M. 1997. 半正定Toeplitz矩阵的Cholesky分解。
{it:线性代数及其应用} 254: 497-525.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_toeplitzsolve.sthlp>}