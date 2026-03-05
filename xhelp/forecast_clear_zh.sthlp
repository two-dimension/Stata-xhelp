{smcl}
{* *! version 1.0.2  19oct2017}{...}
{viewerdialog forecast "dialog forecast"}{...}
{vieweralsosee "[TS] forecast clear" "mansection TS forecastclear"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] forecast" "help forecast_zh"}{...}
{vieweralsosee "[TS] forecast create" "help forecast create"}{...}
{viewerjumpto "Syntax" "forecast_clear_zh##syntax"}{...}
{viewerjumpto "Description" "forecast_clear_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "forecast_clear_zh##linkspdf"}
{help forecast_clear:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[TS] forecast clear} {hline 2}}清除当前模型从内存中{p_end}
{p2col:}({mansection TS forecastclear:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmdab:fore:cast} {cmd: clear}


{marker description}{...}
{title:描述}

{pstd}
{cmd:forecast} {cmd:clear} 从内存中移除当前预测模型。
{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS forecastclearRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <forecast_clear.sthlp>}