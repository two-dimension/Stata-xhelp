{smcl}
{* *! version 1.0.4  19oct2017}{...}
{viewerdialog forecast "dialog forecast"}{...}
{vieweralsosee "[TS] forecast list" "mansection TS forecastlist"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] forecast" "help forecast_zh"}{...}
{viewerjumpto "Syntax" "forecast_list_zh##syntax"}{...}
{viewerjumpto "Description" "forecast_list_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "forecast_list_zh##linkspdf"}{...}
{viewerjumpto "Options" "forecast_list_zh##options"}{...}
{viewerjumpto "Example" "forecast_list_zh##example"}{...}
{viewerjumpto "Technical note" "forecast_list_zh##technote"}
{help forecast_list:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[TS] forecast list} {hline 2}}列出构成当前模型的预报命令{p_end}
{p2col:}({mansection TS forecastlist:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmdab:fore:cast} {cmdab:l:ist}
[{cmd:,} {it:选项}]

{synoptset 28}{...}
{synopthdr}
{synoptline}
{synopt:{cmdab:sav:ing(}{it:文件名}[{cmd:, replace}]{cmd:)}}将命令列表保存到文件{p_end}
{synopt:{opt notr:im}}不删除多余空格{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:forecast} {cmd:list} 返回组成当前模型的 {cmd:forecast} 命令列表。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection TS forecastlistQuickstart:快速开始}

        {mansection TS forecastlistRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在该帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:saving(}{it:文件名}[{cmd:, replace}]{cmd:)} 指定 {cmd:forecast} {cmd:list} 将命令列表写入磁盘，文件名为 {it:文件名}。如果未指定扩展名，默认假设为 {cmd:.do}。如果 {it:文件名} 已存在，则会发出错误，除非您指定 {cmd:replace}，在这种情况下将覆盖该文件。

{phang}
{cmd:notrim} 请求 {cmd:forecast} {cmd:list} 不删除任何多余空格，并以原始输入的方式显示命令。默认情况下，多余的空白会被删除。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse klein2}{p_end}
{phang2}{cmd:. reg3 (c p L.p w) (i p L.p L.k) (wp y L.y yr)}
        {cmd:if year < 1939, endog(w p y) exog(t wg g)}{p_end}
{phang2}{cmd:. estimates store klein}{p_end}

{pstd}创建一个新的预报模型{p_end}
{phang2}{cmd:. forecast create kleinmodel}

{pstd}将使用 {cmd:reg3} 拟合的随机方程添加到 {cmd:kleinmodel}{p_end}
{phang2}{cmd:. forecast estimates klein}{p_end}

{pstd}指定确定模型中其他四个内生变量的四个恒等式{p_end}
{phang2}{cmd:. forecast identity y = c + i + g}{p_end}
{phang2}{cmd:. forecast identity p = y - t - wp}{p_end}
{phang2}{cmd:. forecast identity k = L.k + i}{p_end}
{phang2}{cmd:. forecast identity w = wg + wp}{p_end}

{pstd}标识四个外生变量{p_end}
{phang2}{cmd:. forecast exogenous wg}{p_end}
{phang2}{cmd:. forecast exogenous g}{p_end}
{phang2}{cmd:. forecast exogenous t}{p_end}
{phang2}{cmd:. forecast exogenous yr}{p_end}

{pstd}获取一步前的预测{p_end}
{phang2}{cmd:. forecast solve, prefix(bl_) begin(1939)}{p_end}

{pstd}获取组成当前模型的 {cmd:forecast} 命令的列表{p_end}
{phang2}{cmd:. forecast list}{p_end}


{marker technote}{...}
{title:技术备注}

{pstd}
为了防止您意外破坏内存中的模型，{cmd:forecast} {cmd:list} 不为 {cmd:forecast} {cmd:create} 添加 {cmd:replace} 选项，即使您在最初调用 {cmd:forecast} {cmd:create} 时指定了 {cmd:replace}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <forecast_list.sthlp>}