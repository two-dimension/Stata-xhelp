{smcl}
{* *! version 1.0.0  21jun2019}{...}
{vieweralsosee "[LASSO] estimates store" "mansection lasso estimatesstore"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estimates save" "help estimates save"}{...}
{vieweralsosee "[R] estimates store" "help estimates store"}{...}
{viewerjumpto "Description" "lasso_estimates_store_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "lasso_estimates_store_zh##linkspdf"}
{help lasso_estimates_store:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[LASSO] estimates store} {hline 2}}保存和恢复内存和磁盘上的估计值{p_end}
{p2col:}({mansection LASSO estimatesstore:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estimates} {cmd:store} {it:name} 将当前（活动）的估计结果存储在名称为 {it:name} 的位置。

{pstd}
{cmd:estimates} {cmd:restore} {it:name} 从存储的名称 {it:name} 中加载结果到当前（活动）的估计结果中。

{pstd}
{cmd:estimates} {cmd:save} {help filename_zh:{it:filename}} 将当前（活动）估计结果保存到 {it:filename} 中。

{pstd}
{cmd:estimates} {cmd:use} {it:filename} 将保存在 {it:filename} 中的结果加载到当前（活动）的估计结果中。

{pstd}
在 lasso 命令之后的 {cmd:estimates} 命令与在其他估计命令之后的作用相同。唯一的不同是，{cmd:estimates} {cmd:save} {it:filename} 会保存两个文件，而不仅仅是一个。
{it:filename}{cmd:.ster} 和 {it:filename}{cmd:.stxer} 会被保存。有关详细信息，请参见 {manhelp estimates R}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection LASSO estimatesstoreRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lasso_estimates_store.sthlp>}