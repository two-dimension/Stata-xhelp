{smcl}
{* *! version 1.1.2  15may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{viewerjumpto "Syntax" "mf__parse_colon_zh##syntax"}{...}
{viewerjumpto "Description" "mf__parse_colon_zh##description"}{...}
{viewerjumpto "Remarks" "mf__parse_colon_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf__parse_colon_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf__parse_colon_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf__parse_colon_zh##source"}
{help mf__parse_colon:English Version}
{hline}{...}
{title:标题}

{p 4 8 2}
{bf:[M-5] _parse_colon()} {hline 2} Stata 前缀命令的解析工具


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:mata:} {cmd:_parse_colon("}{it:hascolon}{cmd:",}
{cmd:"}{it:rhscmd}{cmd:")}


{p 8 8 2}
输入（来自 Stata）：

{col 12}{cmd:`0'}{col 25}待解析的字符串

{p 8 8 2}
输出（到 Stata）：

{col 12}{cmd:`}{it:hascolon}{cmd:'}{col 25}0 或 1，表示 {cmd:`0'} 是否包含冒号
{col 12}{cmd:`0'}{col 25}原始 {cmd:`0'} 在冒号之前的内容{...}
（如果没有冒号则保持不变）
{col 12}{cmd:`}{it:rhscmd}{cmd:'}{col 25}冒号右侧的原始 {cmd:`0'}（如果没有冒号则为 ""）


{p 4 4 2}
（语法以 Stata 格式显示，因为 {cmd:_parse_colon()} 
旨在从 Stata ado 文件中使用。
参数是要创建的局部宏的名称。
Mata 函数 
{cmd:_parse_colon()} 实际上是 {it:void}，每个参数都是
{it:string scalar}.）


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:_parse_colon("}{it:hascolon}{cmd:",}
{cmd:"}{it:rhscmd}{cmd:")} 是一个旨在从 Stata ado 文件中使用的函数，用于帮助
解析前缀命令。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
假设 {cmd:`0'} 包含 "{cmd:by group: generate x = _n}"。
则在运行 {cmd:mata: _parse_colon(colon, rhs)} 后，
{cmd:`colon'} 包含 1，
{cmd:`0'} 包含 "{cmd:by group}"，而
{cmd:`rhs'} 包含 "{cmd:generate x = _n}"。


{marker conformability}{...}
{title:符合性}

{p 4 4 2}
所有参数都是 {it:string scalar}，包含要创建或替换的 Stata 局部宏的名称。


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:`0'} 始终会在最左侧的冒号处分割，因此 
{cmd:_parse_colon()} 可以用于处理嵌套的冒号命令。

{p 4 4 2}
引号、括号、方括号或大括号中的冒号会被忽略。

{p 4 4 2}
{cmd:mata:} {cmd:_parse_colon("}{it:hascolon}{cmd:",}
{cmd:"}{it:rhscmd}{cmd:")} 
    不会因错误而中止，并且不会产生错误消息。
    如果局部宏 {cmd:`0'} 不包含 
    冒号，则 {cmd:`}{it:hascolon}{cmd:'} 被设置为 0，
    而 {cmd:`}{it:rhscmd}{cmd:'} 被设置为 ""。
    如果存在冒号但其右侧没有内容， 
    {cmd:`}{it:hascolon}{cmd:'} 被设置为 1，
    而 {cmd:`}{it:rhscmd}{cmd:'} 被设置为 ""。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view _parse_colon.mata, adopath asis:_parse_mata.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf__parse_colon.sthlp>}