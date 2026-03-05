{smcl}
{* *! version 1.1.6  19oct2017}{...}
{vieweralsosee "[TS] vec intro" "mansection TS vecintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] irf" "help irf_zh"}{...}
{vieweralsosee "[TS] vec" "help vec_zh"}
{help vec_intro:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[TS] vec intro} {hline 2}}向量误差修正模型简介{p_end}
{p2col:}({mansection TS vecintro:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{title:描述}

{pstd}
Stata 提供了一套命令，用于拟合、预测、解释和对具有协整变量的向量误差修正模型（VECM）进行推断。在拟合 VECM 后，可以使用 {cmd:irf} 命令获得脉冲响应函数（IRF）和预测误差方差分解（FEVD）。以下表格描述了可用的命令。


    {title:拟合 VECM}

{p2colset 5 22 27 2}{...}
{p2col:{help vec_zh}}拟合向量误差修正模型{p_end}

    {title:模型诊断和推断}

{p2col:{help vecrank_zh}}估计 VECM 的协整秩{p_end}
{p2col:{help veclmar_zh}}在 {cmd:vec} 之后执行 LM 检验以检测残差自相关{p_end}
{p2col:{help vecnorm_zh}}在 {cmd:vec} 之后检验扰动是否为正态分布{p_end}
{p2col:{help vecstable_zh}}检查 VECM 估计的稳定性条件{p_end}
{p2col:{help varsoc_zh}}获得 VAR 和 VECM 的滞后顺序选择统计量{p_end}

    {title:从 VECM 预测}

{p2col:{helpb fcast compute}}在 {cmd:var}、{cmd:svar} 或 {cmd:vec} 之后计算动态预测{p_end}
{p2col:{helpb fcast graph}}绘制在 {cmd:fcast compute} 之后的预测{p_end}

    {title:处理 IRF 和 FEVD}

{p2col:{help irf_zh}}创建和分析 IRF 和 FEVD{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <vec_intro.sthlp>}