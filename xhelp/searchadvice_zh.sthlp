
{smcl}
{* *! version 1.0.3  22apr2013}{...}
{hi:使用搜索的建议}

{help searchadvice:English Version}
{hline}
{p 5 9 2}1.  大小写无关紧要。可以搜索
	{search Kolmogorov-Smirnov} 或者 {search kolmogorov-smirnov}。

{p 5 9 2}2.  标点符号无关紧要。可以搜索
	{search kolmogorov smirnov}。

{p 5 9 2}3.  单词顺序无关紧要。可以搜索
	{search smirnov kolmogorov}。

{p 5 9 2}4.  可以缩写；在音节处断开：可以搜索
	{search kol smir}。 {opt search}通常能容忍多种缩写；缩写总比拼写错误要好。

{p 5 9 2}5.  单词 a, an, and, are, for, into, of, on, to, the, 和 with
        会被忽略。使用它们或省略它们都没有区别。

{p 5 9 2}6.  {opt search}对复数形式宽容，但查找单数形式更好。可以搜索 {search normal distribution}，而不是 {search normal distributions}。

{p 5 9 2}7.  在英语中指定搜索条件，而不是计算机术语。

{p 5 9 2}8.  使用美式拼写。

{p 5 9 2}9.  使用名词。不要使用“-ing”形式的词。可以搜索
	{search median test}，而不是 {search testing medians}。

{p 4 9 2}10.  使用少量单词。每增加一个单词都会进一步限制搜索。
	搜索 {search distribution} 会得到一个列表；搜索 {search normal distribution} 会得到该列表的一个子列表。

{p 4 9 2}11.  有时单词有多重语境。以下单词
	可以用于限制上下文：

{p 9 13 2}a.  {search data}，意指数据管理的上下文。

{p 9 13 2}b.  {search statistics}（缩写为 {search stat}），意指统计学的上下文。

{p 9 13 2}c.  {search graph} 或 {search graphs}，意指统计图形的上下文。

{p 9 13 2}d.  {search utility}（缩写为 {search util}），意指工具命令的上下文。

{p 9 13 2}e.  {search programs} 或 {search programming}（缩写为 {search prog}），意指 Stata 编程的上下文。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <searchadvice.sthlp>}