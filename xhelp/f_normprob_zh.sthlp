{smcl}
{* *! version 1.1.0  20sep2014}{...}
{vieweralsosee "[FN] 统计函数" "mansection FN Statisticalfunctions"}
{help f_normprob:English Version}
{hline}{...}

{pstd}
这些函数在 Stata 7 中已过时。它们的替代函数为

{p2colset 9 25 27 2}{...}
{p2col:旧函数}等于新函数{p_end}
{tab}{hline 37}
{p2col:{cmd:nchi()}}{helpb nchi2()}{p_end}
{p2col:{cmd:normprob()}}{helpb normal()}{p_end}
{p2col:{cmd:invnchi()}}{helpb invnchi2()}{p_end}
{p2col:{cmd:npnchi()}}{helpb npnchi2()}{p_end}


{p2col:旧函数}与新函数相关{p_end}
{tab}{hline 43}
{p2col:{cmd:chiprob()}}{helpb chi2()} 和 {helpb chi2tail()}{p_end}
{p2col:{cmd:fprob()}}{helpb F()} 和 {helpb Ftail()}{p_end}
{p2col:{cmd:invchi()}}{helpb invchi2()} 和 {helpb invchi2tail()}{p_end}
{p2col:{cmd:invfprob()}}{helpb invF()} 和 {helpb invFtail()}{p_end}
{p2col:{cmd:tprob()}}{helpb ttail()}{p_end}
{p2colreset}{...}


{pstd}
{cmd:invchi()} 仅在 {help version_zh} 设置为小于 7 时有效。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <f_normprob.sthlp>}