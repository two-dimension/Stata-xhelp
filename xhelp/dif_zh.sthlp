{smcl}
{* *! version 1.0.6  14may2019}{...}
{viewerdialog irt "dialog irt"}{...}
{vieweralsosee "[IRT] DIF" "mansection IRT DIF"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] diflogistic" "help diflogistic_zh"}{...}
{vieweralsosee "[IRT] difmh" "help difmh_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt" "help irt_zh"}{...}
{viewerjumpto "描述" "irt_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "dif_zh##linkspdf"}{...}
{viewerjumpto "备注" "dif_zh##remarks"}
{help dif:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[IRT] DIF} {hline 2}}差异项目功能介绍{p_end}
{p2col:}({mansection IRT DIF:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
差异项目功能（DIF）发生在旨在测量潜在特质的项目表现不公时，偏向于某一组个体而非另一组。有关单个 DIF 测试的详细信息，包括语法和示例，请参阅以下帮助文件。

{p2colset 9 24 26 2}{...}
{p2col :{help diflogistic_zh}}逻辑回归 DIF 测试{p_end}
{p2col :{help difmh_zh}}曼特尔–汉塞尔 DIF 测试{p_end}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection IRT DIFRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
DIF 通常与拟合项目反应理论模型一起研究。我们鼓励您首先阅读 {manlink IRT irt} 以了解 Stata 中的 IRT 功能。

{pstd}
调查 DIF 涉及评估测试项目在具有相同潜在特质值的被试之间是否表现不同。如果这些个体对某一特定响应的选择概率不同，则该项目在具有相同潜在特质的个体之间“功能不同”。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dif.sthlp>}