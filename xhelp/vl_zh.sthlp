{smcl}
{* *! version 1.0.0  12jun2019}{...}
{vieweralsosee "[D] vl" "mansection D vl"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] vl create" "help vl create"}{...}
{vieweralsosee "[D] vl drop" "help vl drop"}{...}
{vieweralsosee "[D] vl list" "help vl list"}{...}
{vieweralsosee "[D] vl rebuild" "help vl rebuild"}{...}
{vieweralsosee "[D] vl set" "help vl set"}{...}
{viewerjumpto "描述" "vl_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "vl_zh##linkspdf"}{...}
{viewerjumpto "备注" "vl_zh##remarks"}
{help vl:English Version}
{hline}{...}
{p2colset 1 11 13 2}{...}
{p2col:{bf:[D] vl} {hline 2}}管理变量列表{p_end}
{p2col:}({mansection D vl:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{opt vl} 代表变量列表。它是一套用于创建和管理命名变量列表的命令。列表特别旨在用作估计命令的参数。

{pstd}
具体而言，该套件旨在帮助将变量分为两组：一组将作为因子变量处理，另一组将作为连续变量或区间变量处理。

{pstd}
{opt vl} 创建两种类型的命名变量列表：系统定义的变量列表，由 {opt vl} {opt set} 自动创建，以及用户定义的变量列表，由 {opt vl} {opt create} 创建。您通常会先使用 {opt vl set} 创建系统定义的变量列表，然后再通过 {opt vl} {opt create} 从中创建您自己的变量列表。

{pstd}
创建一个名为 {it:vlusername} 的变量列表后，表达式 {cmd:$}{it:vlusername} 可以在 Stata 中的任何允许 {varlist} 的地方使用。变量列表实际上是 {help macro_zh:global macros}，而 {cmd:vl} 命令是创建和操作它们的便捷方式。

{pstd}
变量列表会随数据集保存。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D vlRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:vl} 命令如下：

{synoptset 15 tabbed}{...}
{syntab:仅系统}
{synopt :{helpb vl set}}根据变量的级别数量和其他特征初始化系统定义的变量列表{p_end}
{synopt :{helpb vl move}}将变量从一个系统定义的变量列表移动到另一个{p_end}

{syntab:仅用户}
{synopt :{helpb vl create}}创建用户定义的变量列表{p_end}
{synopt :{helpb vl modify}}从用户定义的变量列表中添加或删除变量{p_end}
{synopt :{helpb vl label}}为用户定义的变量列表添加标签{p_end}
{synopt :{helpb vl substitute}}使用因子变量运算符创建用户定义的变量列表{p_end}

{syntab:系统或用户}
{synopt :{helpb vl list}}列出变量列表的内容，无论是系统还是用户{p_end}
{synopt :{helpb vl dir}}显示定义的变量列表，无论是系统还是用户{p_end}
{synopt :{helpb vl drop}}删除变量列表或从多个变量列表中移除变量{p_end}
{synopt :{helpb vl clear}}删除所有变量列表{p_end}
{synopt :{helpb vl rebuild}}恢复变量列表{p_end}
{p2colreset}{...}

{pstd}
首先要注意的是，有些 {cmd:vl} 命令仅适用于系统定义的变量列表，有些仅适用于用户定义的变量列表，还有些适用于两者。

{pstd}
{cmd:vl} {cmd:set} 通常先使用。它初始化系统定义的变量列表。默认情况下，它将对数据集中所有数字变量进行分类。或者，您可以指定 {varlist} 仅对那些变量进行分类。

{pstd}
在讨论 {cmd:vl} 命令时，如果我们说“变量列表”，我们指的是通过 {cmd:vl} {cmd:set} 或 {cmd:vl} {cmd:create} 创建的命名变量列表。传统的 Stata 变量列表，即 {it:varlist}，我们称之为 {it:varlist}。变量列表包含 {it:varlist}s。

{pstd}
{cmd:vl} {cmd:create} 允许您创建自己的变量列表，可以从系统定义的变量列表开始，也可以从您指定的 {it:varlist}s 开始。无须运行 {cmd:vl} {cmd:set} 并创建系统定义的变量列表。您可以从头开始创建自己的列表。如果您熟悉数据集中的变量，并且知道哪些要作为因子变量处理，哪些要作为连续变量，您可能会只想创建用户定义的变量列表。

{pstd}
{cmd:vl} {cmd:rebuild} 在加载曾经有变量列表的数据集后恢复所有 {cmd:vl} 生成的变量列表。Stata 在您 {help save_zh} 数据时会保存变量列表，但当您 {help use_zh} 已保存的数据文件时，它们不会自动恢复。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <vl.sthlp>}