{smcl}
{* *! version 1.0.4  11feb2011}{...}
{vieweralsosee "[TS] var intro" "help var_intro_zh"}{...}
{vieweralsosee "[TS] vec intro" "help vec_intro_zh"}
{help fcast:English Version}
{hline}{...}
{title:VAR、SVAR和VEC后的动态预测}

{pstd}
{cmd:fcast} 计算并绘制在 {cmd:var}、{cmd:svar} 或 {cmd:vec} 后内生变量的动态预测。{cmd:fcast} 具有两个子命令。{cmd:fcast compute} 计算动态预测、估计的置信区间以及预测的标准误差。{cmd:fcast graph} 绘制预测、置信区间和观察值的图形。

    命令{space 11}查看帮助{space 9}描述
    {hline -2}
{p 4 43 2}{cmd:fcast} {cmdab:c:ompute}{space 5}{helpb fcast compute}{space 4}获取动态预测

{p 4 43 2}{cmd:fcast} {cmdab:g:raph}{space 7}{helpb fcast graph}{space 6}绘制从 {cmd:fcast compute} 获取的动态预测
{p_end}
    {hline -2}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fcast.sthlp>}