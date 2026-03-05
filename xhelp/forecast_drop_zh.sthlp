{smcl}
{* *! version 1.0.3  19oct2017}{...}
{viewerdialog forecast "dialog forecast"}{...}
{vieweralsosee "[TS] forecast drop" "mansection TS forecastdrop"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] forecast" "help forecast_zh"}{...}
{vieweralsosee "[TS] forecast solve" "help forecast solve"}{...}
{viewerjumpto "Syntax" "forecast_drop_zh##syntax"}{...}
{viewerjumpto "Description" "forecast_drop_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "forecast_drop_zh##linkspdf"}{...}
{viewerjumpto "Options" "forecast_drop_zh##options"}{...}
{viewerjumpto "Example" "forecast_drop_zh##example"}{...}
{viewerjumpto "Stored results" "forecast_drop_zh##results"}
{help forecast_drop:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[TS] forecast drop} {hline 2}}删除预测变量{p_end}
{p2col:}({mansection TS forecastdrop:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmdab:fore:cast} {cmdab:dr:op}
[{cmd:,} {it:选项}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{p2coldent:* {opt pre:fix(string)}}指定预测变量的前缀{p_end}
{p2coldent:* {opt suf:fix(string)}}指定预测变量的后缀{p_end}
{synoptline}
{p 4 6 2}* 您可以指定 {cmd:prefix()} 或 {cmd:suffix()}，但不能同时指定两者。


{marker description}{...}
{title:描述}

{pstd}
{cmd:forecast drop} 删除之前由 {cmd:forecast}
{cmd:solve} 创建的变量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS forecastdropQuickstart:快速开始}

        {mansection TS forecastdropRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt prefix(string)} 和 {opt suffix(string)} 指定将用于识别要删除的预测变量的名称前缀或后缀。您可以指定 {cmd:prefix()} 或 {cmd:suffix()}，但不能同时指定两者。默认情况下，{cmd:forecast drop} 删除之前调用 {cmd:forecast solve} 产生的所有预测变量。

{pmore}
但是，假设您之前在使用 {cmd:forecast solve} 时指定了 {cmd:simulate()} 选项，并希望删除包含模拟结果的变量，而保留包含点预测的变量。然后您可以使用 {cmd:prefix()} 或 {cmd:suffix()} 选项来识别要删除的模拟变量。


{marker example}{...}
{title:示例}

{pstd}
{cmd:forecast drop} 安全地删除以前使用 {cmd:forecast} {cmd:solve} 创建的变量。假设您之前解决了模型并创建了后缀为 {cmd:_f} 的预测变量。请不要输入

{phang2}
{cmd:. drop *_f}

{pstd}
来从数据集中删除这些变量。相反，请输入

{phang2}
{cmd:. forecast drop}

{pstd}
前一个命令是危险的：假设您被交付了数据集，并被要求生成预测。之前处理数据集的人创建了其他以 {cmd:_f} 结尾的变量。使用 {cmd:drop} 也会删除这些变量。{cmd:forecast} {cmd:drop} 仅删除之前由 {cmd:forecast} {cmd:solve} 根据内存中的模型创建的变量。
{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:forecast drop} 将以下内容存储在 {cmd:r()} 中：

{synoptset 14 tabbed}{...}
{p2col 5 14 18 2: 标量}{p_end}
{synopt:{cmd:r(n_dropped)}}删除的变量数量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <forecast_drop.sthlp>}