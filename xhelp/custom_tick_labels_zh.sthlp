{smcl}
{* *! version 1.1.3  11feb2011}{...}
{* 此帮助文件由 graxis.idlg 调用 (及其他)}{...}
{vieweralsosee "[G-3] axis_label_options" "help axis_label_options_zh"}
{help custom_tick_labels:English Version}
{hline}{...}
{title:自定义坐标轴标签}

{pstd}
在坐标轴上指定非数字标签的方法是提供数字位置，后跟用双引号包含的标签 ({cmd:""}). 以下是一些示例：

{pin2}
{cmd:0 "男性" 1 "女性"}

{pin2}
{cmd:1 "第一" 2 "第二" 3 "第三"}

{pin2}
{cmd:1 "周一"} {cmd:2 "周二"} {cmd:3 "周三"} {cmd:4 "周四"}
{cmd:5 "周五"} {cmd:6 "周六"} {cmd:7 "周日"}

{pin2}
{cmd:1 "一"} {cmd:2 "二"}
{cmd:3 "三"}{space 2}{cmd:4 "四"}{space 2}{cmd:5 "五"}{space 2}{cmd:6 "六"}{break}
{cmd:7 "七"} {cmd:8 "八"} {cmd:9 "九"} {cmd:10 "十"} {cmd:11 "十一"} {cmd:12 "十二"}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <custom_tick_labels.sthlp>}