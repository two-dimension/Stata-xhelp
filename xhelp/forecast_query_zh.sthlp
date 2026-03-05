{smcl}
{* *! version 1.0.4  19oct2017}{...}
{viewerdialog forecast "dialog forecast"}{...}
{vieweralsosee "[TS] forecast query" "mansection TS forecastquery"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] forecast" "help forecast_zh"}{...}
{vieweralsosee "[TS] forecast describe" "help forecast describe"}{...}
{viewerjumpto "Syntax" "forecast_query_zh##syntax"}{...}
{viewerjumpto "Description" "forecast_query_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "forecast_query_zh##linkspdf"}{...}
{viewerjumpto "Examples" "forecast_query_zh##examples"}{...}
{viewerjumpto "Stored results" "forecast_query_zh##results"}
{help forecast_query:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[TS] forecast query} {hline 2}}检查是否已启动预测模型{p_end}
{p2col:}({mansection TS forecastquery:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmdab:fore:cast} {cmdab:q:uery}  


{marker description}{...}
{title:描述}

{pstd}
{cmd:forecast query} 发出一条消息，指示是否已启动预测模型。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS forecastqueryRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}检查内存中是否有任何预测模型{p_end}
{phang2}{cmd:. forecast query}

{pstd}创建一个名为 {cmd:fcmodel} 的预测模型{p_end}
{phang2}{cmd:. forecast create fcmodel}

{pstd}重新检查内存中的预测模型{p_end}
{phang2}{cmd:. forecast query}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:forecast query} 将以下内容存储在 {cmd:r()} 中：

{synoptset 14 tabbed}{...}
{p2col 5 14 18 2: 标量}{p_end}
{synopt:{cmd:r(found)}}{cmd:1} 如果模型已启动, {cmd:0} 否则{p_end}

{p2col 5 14 18 2: 宏}{p_end}
{synopt:{cmd:r(name)}}模型名称{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <forecast_query.sthlp>}