{smcl}
{* *! version 1.1.11  25feb2019}{...}
{vieweralsosee "[TS] irf" "mansection TS irf"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] arfima" "help arfima_zh"}{...}
{vieweralsosee "[TS] arima" "help arima_zh"}{...}
{vieweralsosee "[TS] var" "help var_zh"}{...}
{vieweralsosee "[TS] var intro" "help var_intro_zh"}{...}
{vieweralsosee "[TS] var svar" "help svar_zh"}{...}
{vieweralsosee "[TS] varbasic" "help varbasic_zh"}{...}
{vieweralsosee "[TS] vec" "help vec_zh"}{...}
{vieweralsosee "[TS] vec intro" "help vec_intro_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[DSGE] dsge" "help dsge_zh"}{...}
{vieweralsosee "[DSGE] dsgenl" "help dsgenl_zh"}{...}
{viewerjumpto "语法" "irf_zh##syntax"}{...}
{viewerjumpto "描述" "irf_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "irf_zh##linkspdf"}
{help irf:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[TS] irf} {hline 2}}创建和分析 IRF、动态乘数函数和 FEVD{p_end}
{p2col:}({mansection TS irf:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:irf} {it:subcommand ...} [{cmd:,} {it:...}]

{synoptset 12}{...}
{synopthdr:子命令}
{synoptline}
{synopt:{help irf_create_zh:create}}创建包含 IRF、动态乘数函数和 FEVD 的 IRF 文件{p_end}
{synopt:{help irf_set_zh:set}}设置活动的 IRF 文件{p_end}

{synopt:{help irf_graph_zh:graph}}绘制来自活动文件的结果{p_end}
{synopt:{help irf_cgraph_zh:cgraph}}组合 IRF、动态乘数函数和 FEVD 的图形{p_end}
{synopt:{help irf_ograph_zh:ograph}}绘制叠加的 IRF、动态乘数函数和 FEVD{p_end}
{synopt:{help irf_table_zh:table}}从活动文件中创建 IRF、动态乘数函数和 FEVD 的表{p_end}
{synopt:{help irf_ctable_zh:ctable}}组合 IRF、动态乘数函数和 FEVD 的表{p_end}

{synopt:{help irf_describe_zh:describe}}描述活动文件的内容{p_end}
{synopt:{help irf_add_zh:add}}将 IRF 文件中的结果添加到活动 IRF 文件{p_end}
{synopt:{help irf_drop_zh:drop}}从活动文件中删除 IRF 结果{p_end}
{synopt:{help irf_rename_zh:rename}}重命名文件中的 IRF 结果{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
IRF 代表脉冲响应函数；FEVD 代表预测误差方差分解。
{p_end}
{p 4 6 2}
{opt irf} 只能在 {opt var}、{opt svar}、{opt vec}、{opt arima}、{opt arfima}、{opt dsge} 或 {opt dsgenl} 之后使用；请参见
{help var_zh:[TS] var}、{help svar_zh:[TS] var svar}、{help vec_zh:[TS] vec}、
{help arima_zh:[TS] arima}、{help arfima_zh:[TS] arfima}、
{help dsge_zh:[DSGE] dsge} 或 {help dsgenl_zh:[DSGE] dsgenl}。


{marker description}{...}
{title:描述}

{pstd}
{opt irf} 创建和操作包含脉冲响应函数 (IRF)、动态乘数函数和在通过 {help var_zh}、{help svar_zh} 或 {help vec_zh} 估计后的预测误差方差分解 (FEVD) 估计的 IRF 文件。

{pstd}
{opt irf} 创建和操作包含通过 {help arima_zh}、{help arfima_zh}、{help dsge_zh} 或 {help dsgenl_zh} 估计后的 IRF 估计的 IRF 文件。

{pstd}
有关解读和分析 IRF 和 FEVD 的更多信息，请参阅 {manlink TS irf} 和 {manlink TS irf create} (PDF 文档)。
{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS irfQuickstart:快速入门}

        {mansection TS irfRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irf.sthlp>}