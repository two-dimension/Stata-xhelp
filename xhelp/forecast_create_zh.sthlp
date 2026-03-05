{smcl}
{* *! version 1.0.3  19oct2017}{...}
{viewerdialog forecast "dialog forecast"}{...}
{vieweralsosee "[TS] forecast create" "mansection TS forecastcreate"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] forecast" "help forecast_zh"}{...}
{vieweralsosee "[TS] forecast clear" "help forecast clear"}{...}
{viewerjumpto "Syntax" "forecast_create_zh##syntax"}{...}
{viewerjumpto "Description" "forecast_create_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "forecast_create_zh##linkspdf"}{...}
{viewerjumpto "Option" "forecast_create_zh##option"}{...}
{viewerjumpto "Example" "forecast_create_zh##example"}{...}
{viewerjumpto "Technical note" "forecast_create_zh##technote"}
{help forecast_create:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[TS] forecast create} {hline 2}}创建一个新的预测模型{p_end}
{p2col:}({mansection TS forecastcreate:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmdab:fore:cast} {cmdab:cr:eate} [{it:name}]
[{cmd:,} {cmd:replace}]

{phang}
{it:name} 是模型的可选名称。  
{it:name} 必须遵循 {findalias frnames} 中描述的命名规则。


{marker description}{...}
{title:描述}

{pstd}
{cmd:forecast create} 在 Stata 中创建一个新的预测模型。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS forecastcreateQuickstart:快速开始}

        {mansection TS forecastcreateRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:replace} 使 Stata 在创建 {it:name} 之前清除内存中现有的模型。  
您一次只能在内存中保留一个模型。  
默认情况下，如果内存中已存在其他模型，{cmd:forecast create} 会发出错误消息。


{marker example}{...}
{title:示例}

{pstd}创建一个名为 {cmd:salesfcast} 的模型{p_end}
{phang2}{cmd:. forecast create salesfcast}{p_end}


{marker technote}{...}
{title:技术说明}

{pstd}
警告：在使用 {cmd:forecast create} 创建预测模型后，不要输入 {cmd:clear all}、{cmd:clear mata} 或 {cmd:clear results}，除非您打算删除您的预测模型。  
输入 {cmd:clear all} 或 {cmd:clear mata} 会消除用于存储您的预测模型的内部结构。  
输入 {cmd:clear results} 会清除内存中的所有估计结果。  
如果您的预测模型包含依赖于调用 {cmd:predict} 的估计结果，您将无法解决您的模型。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <forecast_create.sthlp>}