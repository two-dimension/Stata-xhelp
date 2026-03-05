{smcl}
{* *! version 1.0.2  19oct2017}{...}
{viewerdialog forecast "dialog forecast"}{...}
{vieweralsosee "[TS] forecast exogenous" "mansection TS forecastexogenous"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] forecast" "help forecast_zh"}{...}
{viewerjumpto "语法" "forecast_exogenous_zh##syntax"}{...}
{viewerjumpto "描述" "forecast_exogenous_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "forecast_exogenous_zh##linkspdf"}{...}
{viewerjumpto "示例" "forecast_exogenous_zh##examples"}
{help forecast_exogenous:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[TS] forecast exogenous} {hline 2}}声明外生变量{p_end}
{p2col:}({mansection TS forecastexogenous:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmdab:fore:cast} {cmdab:ex:ogenous} {varlist}


{marker description}{...}
{title:描述}

{pstd}
{cmd:forecast exogenous} 在当前预测模型中声明外生变量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS forecastexogenousRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse forecastex1}{p_end}
{phang2}{cmd:. regress y L.y x1 x2}{p_end}
{phang2}{cmd:. estimates store exregression}{p_end}
{phang2}{cmd:. forecast create myexample}{p_end}
{phang2}{cmd:. forecast estimates exregression}{p_end}

{pstd}拟合包含两个外生变量的单方程动态模型，
{cmd:x1} 和 {cmd:x2}{p_end}
{phang2}{cmd:. forecast exogenous x1}{p_end}
{phang2}{cmd:. forecast exogenous x2}{p_end}

{pstd}与上述两个命令相同，但作为一个命令输入{p_end}
{phang2}{cmd:. forecast exogenous x1 x2}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <forecast_exogenous.sthlp>}