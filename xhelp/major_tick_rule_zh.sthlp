{smcl}
{* *! version 1.1.3  11feb2011}{...}
{* 此帮助文件由 graxis.idlg（及其他文件）调用}{...}
{vieweralsosee "[G-3] axis_label_options" "help axis_label_options_zh"}{...}
{viewerjumpto "Axis rules for major ticks" "major_tick_rule_zh##axis_rules"}{...}
{viewerjumpto "Custom axis labels" "major_tick_rule_zh##custom"}
{help major_tick_rule:English Version}
{hline}{...}
{marker axis_rules}{...}
{title:主刻度的轴规则}

{pstd}
轴规则指定在轴上放置主刻度和标签的位置。以下表格说明了如何指定轴规则。

	{it:规则}{col 18}示例{col 30}描述
	{hline -2}
	{cmd:#}{it:#}{...}
{col 18}{cmd:#6}{...}
{col 30}6 个好值
	{it:#}{cmd:(}{it:#}{cmd:)}{it:#}{...}
{col 18}{cmd:-4(.5)3}{...}
{col 30}指定范围：-4 到 3，步长为 0.5
	{cmd:minmax}{...}
{col 18}{cmd:minmax}{...}
{col 30}最小值和最大值
	{cmd:none}{...}
{col 18}{cmd:none}{...}
{col 30}不标记任何值
	{cmd:.}{...}
{col 18}{cmd:.}{...}
{col 30}跳过规则
	{hline -2}

{pstd}
也可以使用一个 {it:numlist} 来指定轴规则，详见 {help numlist_zh}。


{marker custom}{...}
{title:自定义轴标签}

{pstd}
沿轴指定非数字标签的方法是提供轴上的数字位置，然后用双引号({cmd:""})包含其标签。以下是一些示例：

{pin2}
{cmd:0 "男"} {cmd:1 "女"}

{pin2}
{cmd:1 "第一"} {cmd:2 "第二"} {cmd:3 "第三"}

{pin2}
{cmd:1 "一"} {cmd:2 "二"} {cmd:3 "三"} {cmd:4 "四"}
{cmd:5 "五"} {cmd:6 "六"} {cmd:7 "日"}

{pin2}
{cmd:1 "一"} {cmd:2 "二"}
{cmd:3 "三"}{space 2}{cmd:4 "四"}{space 2}{cmd:5 "五月"}{space 2}{cmd:6 "六月"}{break}
{cmd:7 "七"} {cmd:8 "八"} {cmd:9 "九"} {cmd:10 "十"} {cmd:11 "十一"} {cmd:12 "十二"}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <major_tick_rule.sthlp>}