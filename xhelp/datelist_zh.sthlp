{smcl}
{* *! version 1.2.5  15may2018}{...}
{findalias asfrdatelist}
{vieweralsosee "" "--"}
{help datelist:English Version}
{hline}{...}
{findalias asfrnumlist}
{title:标题}

    {findalias frdatelist}


{title:描述}

{pstd}
{it:datelist} 是一个日期或时间的列表，通常在被绘制的变量具有日期格式时与图形选项一起使用。有关在 Stata 中如何存储和操作日期和时间的描述，请参见 {findalias frdatetime}。日历日期，也称为 {cmd:%td} 日期，在 Stata 中记录为自 1960年1月1日以来的天数，因此 0 意味着 1960年1月1日，1 意味着 1960年1月2日，16,541 意味着 2005年4月15日。类似地，-1 意味着 1959年12月31日，-2 意味着 1959年12月30日，-16,541 意味着 1914年9月18日。在这种情况下，datelist 要么是日期列表，如：

{pmore}
	15apr1973{break}
	17apr1973 20apr1973  23apr1973

{pstd}
要么是第一个和最后一个日期之间的增量，如：

{pmore}
	17apr1973(3)23apr1973

{pstd}
要么是组合形式：

{pmore}
	15apr1973 17apr1973(3)23apr1973

{pstd}
用空格、斜杠或逗号指定的日期必须用括号括起来，如：

{pmore}
	(15 apr 1973) (april 17, 1973)(3)(april 23, 1973)

{pstd}
均匀间隔的日历日期不是特别有用，但对于其他时间单位，均匀间隔可能会很有用，例如：

{pmore}
	1999q1(1)2005q1

{pstd}
当使用 {cmd:%tq} 日期时。
{cmd:1999q1(1)2005q1} 表示从 1999q1 到 2005q1 之间的每个季度。
{cmd:1999q1(4)2005q1} 将意味着每个第一季度。

{pstd}
为了解释 datelist，Stata 首先查看相关变量的格式，然后使用相应的日期到数字转换函数。例如，如果变量具有 {cmd:%td} 格式，则使用 {cmd:td()} 函数来转换日期；如果变量具有 {cmd:%tq} 格式，则使用 {cmd:tq()} 函数，依此类推。
请参见 {it:{help datetime##s9:方便地输入 SIF 值}} 在 {help datetime_zh:[D] Datetime} 中。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <datelist.sthlp>}