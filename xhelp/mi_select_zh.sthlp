{smcl}
{* *! version 1.1.3  15may2018}{...}
{vieweralsosee "[MI] mi select" "mansection MI miselect"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi extract" "help mi_extract_zh"}{...}
{vieweralsosee "[MI] Technical" "help mi_technical_zh"}{...}
{viewerjumpto "语法" "mi_select_zh##syntax"}{...}
{viewerjumpto "描述" "mi_select_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mi_select_zh##linkspdf"}{...}
{viewerjumpto "选项" "mi_select_zh##option"}{...}
{viewerjumpto "备注" "mi_select_zh##remarks"}{...}
{viewerjumpto "存储结果" "mi_select_zh##results"}
{help mi_select:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[MI] mi select} {hline 2}}程序员的 mi extract 替代命令
{p_end}
{p2col:}({mansection MI miselect:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:mi select init} [{cmd:, fast} ]

{p 8 12 2}
{cmd:mi select} {it:#}{...}

{p 4 4 2}
其中 0 <= {it:#} <= {it:M}，典型用法如

              {cmd}quietly mi query 
              local M = r(M)

              preserve
              mi select init
              local priorcmd "`r(priorcmd)'"

              forvalues m=1(1)`M' {
                      mi select `m'
                      ...
                      `priorcmd'
              }

              restore{txt}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:select} 是一个程序员命令。这是一个更快、更危险的版本
{bf:{help mi_extract_zh:mi extract}}。
在使用 {cmd:mi} {cmd:select} 之前，必须对 {cmd:mi} 数据进行保护；请参见
{bf:{help preserve_zh:[P] preserve}}。

{p 4 4 2}
{cmd:mi} {cmd:select} {cmd:init} 初始化 {cmd:mi} {cmd:select} {it:#}
，并且必须在首次调用 {cmd:mi} {cmd:select} {it:#} 之前使用。

{p 4 4 2}
{cmd:mi} {cmd:select} {it:#} 将内存中的数据替换为 {it:m}={it:#} 的数据副本。
数据并未被 {cmd:mi} {cmd:set} 设置。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI miselectRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{p 4 8 2}
{cmd:fast}，与 {cmd:mi} {cmd:select} {cmd:init} 一起指定，表明 
   通过 {cmd:mi} {cmd:select} {it:#} 命令交付的数据除了排序顺序外不应被更改。
   这样可以提高 {cmd:mi} {cmd:select} 的操作速度。{cmd:fast} 在所有样式中都被允许，但目前
   仅影响宽样式的性能。

{p 8 8 2}
    如果未指定 {cmd:fast}，通过 {cmd:mi} 
    {cmd:select} {it:#} 交付的数据在下一个 {cmd:mi} {cmd:select} {it:#} 调用之前可能会被自由修改。
    但是，数据不得被删除。{cmd:mi} {cmd:select} 使用存储在 {cmd:_dta[]} 中的特征（请参见
    {manhelp char P}）来知道其状态。


{marker remarks}{...}
{title:备注}

{pstd}
两个 {cmd:mi} {cmd:select} 命令协同工作。{cmd:mi} {cmd:select}
{cmd:init} 初始化 {cmd:mi} {cmd:select} {it:#}。

{pstd}
{cmd:mi} {cmd:select} {cmd:init} 返回宏 {cmd:r(priorcmd)}，您需在每次 {cmd:mi} {cmd:select} {it:#} 调用之间执行该命令。
{cmd:r(priorcmd)} 在首次调用 {cmd:mi} {cmd:select} {it:#} 之前并非强制要求发出，虽然如果方便，可以执行。
{cmd:mi} {cmd:select} {it:#} 调用可以按任意顺序进行，并且可以重复选择相同的 {it:m}。

{p 4 4 2}
通过 {cmd:mi} {cmd:select} {it:#} 交付的数据与通过 {cmd:mi} {cmd:extract} 交付的数据不同，因为数据集中可能有额外变量。
其中一个额外变量 {cmd:_mi_id} 是唯一观察标识符。

{pstd}
如果您希望将选定数据中所做的更改返回到 {cmd:mi} 数据中，您可以编写一个包含 {cmd:mi_id} 和更新变量的文件，然后在最终
{cmd:restore} 之后使用 {cmd:_mi_id} 将其与 {cmd:mi} 数据匹配。默认情况下，对所选数据的更改将不会返回到基础 {cmd:mi} 数据中。

{p 4 4 2}
在宽数据的情况下，{cmd:mi} 数据没有 {cmd:_mi_id} 变量。
所选数据中的 {cmd:_mi_id} 反映了当前的 {cmd:mi} 数据顺序。


{marker results}{...}
{title:存储结果}

{p 4 4 2}
{cmd:mi select init} 将以下内容存储在 {cmd:r()} 中：

{p 8 8 2}
宏
{p_end}
{p 13 30 2}
{cmd:r(priorcmd)}{bind:      }在调用 {cmd:mi} {cmd:select} {it:#} 之前要发出的命令；
该命令将为 {cmd:restore, preserve} 或无
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_select.sthlp>}