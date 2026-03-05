{smcl}
{* *! version 1.0.0  17jun2019}{...}
{vieweralsosee "[META] meta data" "mansection META metadata"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta esize" "help meta esize"}{...}
{vieweralsosee "[META] meta set" "help meta set"}{...}
{vieweralsosee "[META] meta update" "help meta update"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta" "help meta_zh"}{...}
{vieweralsosee "[META] Glossary" "help meta glossary"}{...}
{vieweralsosee "[META] Intro" "mansection META Intro"}{...}
{viewerjumpto "Description" "meta_data_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "meta_data_zh##linkspdf"}
{help meta_data:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[META] meta data} {hline 2}}声明元分析数据{p_end}
{p2col:}({mansection META metadata:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
本条目描述了如何使用 {cmd:meta} 命令准备元分析数据。

{pstd}
简单来说，可以按以下步骤操作：

{phang}
1. 如果可以访问 {help meta_glossary##summary_data:汇总数据}，请使用
{helpb meta esize} 计算并声明效应大小，如优势比或 Hedges's g。

{phang}
2. 或者，如果您只拥有预计算的（通用的）效应大小，请使用
{helpb meta set}。

{phang}
3. 要在声明后更新部分元分析设置，请使用
{helpb meta update}。

{phang}
4. 要检查数据是否已经设置为元分析或查看当前的元分析设置，请使用 {helpb meta query}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection META metaesizeRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meta_data.sthlp>}