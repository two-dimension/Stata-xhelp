{smcl}
{* *! version 1.1.4  19oct2017}{...}
{vieweralsosee "[TS] var intro" "mansection TS varintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] irf" "help irf_zh"}{...}
{vieweralsosee "[TS] var" "help var_zh"}{...}
{vieweralsosee "[TS] var svar" "help svar_zh"}{...}
{vieweralsosee "[TS] vec" "help vec_zh"}{...}
{vieweralsosee "[TS] vec intro" "help vec_intro_zh"}
{help var_intro:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[TS] var intro} {hline 2}}向量自回归模型简介{p_end}
{p2col:}({mansection TS varintro:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{title:描述}

{pstd}
Stata 提供了一套命令，用于拟合、预测、解释以及对向量自回归（VAR）模型和结构性向量自回归（SVAR）模型进行推断。该套命令包含多个用于估计和解释脉冲响应函数（IRFs）、动态乘数函数和预测误差方差分解（FEVDs）的命令。下面的表格描述了可用的命令。


    {title:拟合 VAR 或 SVAR}

{p2colset 5 22 27 2}{...}
{p2col:{help var_zh}}拟合向量自回归模型{p_end}
{p2col:{help svar_zh}}拟合结构性向量自回归模型{p_end}
{p2col:{help varbasic_zh}}拟合简单的 VAR 并绘制 IRFs 或 FEVDs{p_end}


    {title:模型诊断和推断}

{p2col:{help varstable_zh}}检查 VAR 或 SVAR 估计的稳定性条件{p_end}
{p2col:{help varsoc_zh}}获得 VAR 和 VECM 的滞后阶数选择统计量{p_end}
{p2col:{help varwle_zh}}在 {cmd:var} 或 {cmd:svar} 之后获得 Wald 滞后排除统计量{p_end}
{p2col:{help vargranger_zh}}在 {cmd:var} 或 {cmd:svar} 之后执行成对的 Granger 因果检验{p_end}
{p2col:{help varlmar_zh}}在 {cmd:var} 或 {cmd:svar} 之后执行残差自相关的 LM 检验{p_end}
{p2col:{help varnorm_zh}}在 {cmd:var} 或 {cmd:svar} 之后检验扰动是否服从正态分布{p_end}


    {title:在拟合 VAR 或 SVAR 后进行预测}

{p2col:{helpb fcast compute}}在 {cmd:var}、{cmd:svar} 或 {cmd:vec} 之后计算动态预测{p_end}
{p2col:{helpb fcast graph}}在 {cmd:fcast compute} 之后绘制预测图{p_end}


    {title:处理 IRFs、动态乘数函数和 FEVDs}

{p2col:{help irf_zh}}创建和分析 IRFs、动态乘数函数和 FEVDs{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <var_intro.sthlp>}