{smcl}
{* *! version 1.0.1  15may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_zh"}{...}
{vieweralsosee "[SEM] sem path examples" "help sempath_examples_zh"}{...}
{viewerjumpto "语法" "webgetsem_zh##syntax"}{...}
{viewerjumpto "描述" "webgetsem_zh##description"}{...}
{viewerjumpto "示例" "webgetsem_zh##examples"}
{help webgetsem:English Version}
{hline}{...}
{title:标题}

{p2colset 5 24 26 2}{...}
{p2col :{hi:[SEM] webgetsem} {hline 2}}打开 SEM 示例路径图{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:webgetsem} {it:diagram_name} [{it:dataset_name}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:webgetsem} 在 {help sem examples:{bf:sem} 示例} 中打开指定的示例 {it:path_diagram}，并在 {help sem_gui:SEM 构建器} 的新窗口中显示。如果指定了 {it:dataset_name}，则可选择性地打开与示例相关的 dataset。

{pstd}
示例路径图也可以从 {help sempath_examples_zh:SEM 路径示例帮助页面} 打开。


{marker examples}{...}
{title:示例}

    {cmd:. webgetsem sem_sm2}
    {cmd:. webgetsem sem_mimic1 sem_mimic1}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <webgetsem.sthlp>}