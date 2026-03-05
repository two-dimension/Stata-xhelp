{smcl}
{* *! version 1.1.5  31oct2018}{...}
{findalias asfrtsvarlists}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 11 语言语法" "help language_zh"}{...}
{vieweralsosee "[U] 11.1.8 数字列表" "help numlist_zh"}{...}
{vieweralsosee "[U] 11.4 变量名和变量列表" "help varlist_zh"}{...}
{vieweralsosee "[U] 13.7 显式下标" "help subscripting_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{viewerjumpto "描述" "tsvarlist_zh##description"}{...}
{viewerjumpto "备注" "tsvarlist_zh##remarks"}{...}
{viewerjumpto "示例" "tsvarlist_zh##examples"}{...}
{viewerjumpto "视频示例" "tsvarlist_zh##video"}
{help tsvarlist:English Version}
{hline}{...}
{title:标题}

    {findalias frtsvarlists}


{marker description}{...}
{title:描述}

{pstd}
时间序列 {it:varlists} 是现有变量的 {it:varlists} 的一种变体。 当某个命令允许时间序列 {it:varlist} 时，可以包含时间序列运算符。 例如，{cmd:L.gnp} 指的是变量 {cmd:gnp} 的滞后值。 时间序列运算符如下：

	运算符{col 19}意义
	{hline 57}
	{cmd:L.}{col 19}滞后 (x_t-1)
	{cmd:L2.}{col 19}2期滞后 (x_t-2)
	...
	{cmd:F.}{col 19}前导 (x_t+1)
	{cmd:F2.}{col 19}2期前导 (x_t+2)
	...
	{cmd:D.}{col 19}差分 (x_t - x_t-1)
	{cmd:D2.}{col 19}差分的差分 (x_t - 2x_t-1 + x_t-2)
	...
	{cmd:S.}{col 19}“季节性”差分 (x_t - x_t-1)
	{cmd:S2.}{col 19}滞后-2（季节性）差分 (x_t - x_t-2)
	...
	{hline 57}


{marker remarks}{...}
{title:备注}

{p 5 9 2}
1.  时间序列运算符可以重复和组合。  
{cmd:L3.gnp} 指变量 {cmd:gnp} 的第三滞后，与 
{cmd:LLL.gnp}、{cmd:LL2.gnp} 和 {cmd:L2L.gnp} 相同。

{p 5 9 2}
2.  前导运算符（有时称为前向运算符） {cmd:F.} 是滞后运算符 {cmd:L.} 的互补，因此 {cmd:FL.gnp} 就是 {cmd:gnp}。

{p 5 9 2}
3.  注意 {cmd:D1.gnp} 等于 {cmd:S1.gnp}，但 {cmd:D2.gnp} 不等于 {cmd:S2.gnp}，因为

{p 13 13 2}
{cmd:D2.gnp} = (gnp_t - gnp_t-1) - (gnp_t-1 - gnp_t-2){p_end}
{p 19 19 2}
= gnp_t - 2*gnp_t-1 + gnp_t-2
       
{p 9 9 2}
而

{p 13 13 2}
{cmd:S2.gnp} = (gnp_t - gnp_t-2)

{p 5 9 2}
4.  运算符可以小写或大写输入。

{p 5 9 2}
5.  运算符可以按任意顺序输入；Stata 会将表达式转换为其标准形式。 例如，Stata 会将
{cmd:ld2ls12d.gnp} 转换为 {cmd:L2D3S12.gnp}。

{p 5 9 2}
6.  除了 {it:operator#} 外，Stata 还理解 
{it:operator({help numlist_zh})} 意为一组操作变量。 例如，指定

{p 13 13 2}
{cmd:L(1/3).gnp} 

{p 9 9 2}
在变量列表中与输入 

{p 13 13 2}
{cmd:L.gnp L2.gnp L3.gnp} 

{p 5 9 2}
是相同的。

{p 5 9 2}
7.  在 {it:operator#} 中，将 {it:#} 设为零会返回变量本身。  
因此，代替输入

{p 13 13 2}
{cmd:regress y x L(1/3).x}

{p 9 9 2}
你可以通过输入

{p 13 13 2}
{cmd:regress y L(0/3).x} 

{p 5 9 2}
来节省一些输入字符。

{p 5 9 2}
8.  在使用时间序列运算符之前，必须使用 {bf:{help tsset_zh}} 声明时间变量。

{p 13 13 2}
{cmd:. list l.gnp}{p_end}
{p 13 13 2}
时间变量未设置{p_end}
{p 13 13 2}
{search r(111)}{p_end}
{p 13 13 2}
{cmd:. tsset time}{p_end}
{p 13 13 2}
{it:(输出省略)}{p_end}
{p 13 13 2}
{cmd:. list l.gnp}{p_end}
{p 13 13 2}
{it:(输出省略)}

{p 5 9 2}
9.  变量名可以按照常规 Stata 约定进行缩写。 例如，如果你数据集中以 {cmd:gn} 开头的唯一变量是 {cmd:gnp}，那么你可以输入 {cmd:L.gn} 代替 
{cmd:L.gnp}。

{p 4 9 2}
10.  时间序列运算符尊重时间变量。 {cmd:L2.gnp} 
指的是 gnp_t-2，而不管数据集中是否存在缺失观察值。  
注意以下数据集中1992年的观察值缺失：

{col 12}     {c TLC}{hline 6}{c -}{hline 8}{c -}{hline 8}{c TRC}
{col 12}     {c |} {res}年      gnp   L2.gnp {txt}{c |}
{col 12}     {c LT}{hline 6}{c -}{hline 8}{c -}{hline 8}{c RT}
{col 12}  1. {c |} {res}1989   5452.8        . {txt}{c |}
{col 12}  2. {c |} {res}1990   5764.9        . {txt}{c |}
{col 12}  3. {c |} {res}1991   5932.4   5452.8 {txt}{c |}
{col 12}  4. {c |} {res}1993   6560.0   5932.4 {txt}{c |} <- 注意，正确填充
{col 12}  5. {c |} {res}1994   6922.4        . {txt}{c |}
{col 12}  6. {c |} {res}1995   7237.5   6560.0 {txt}{c |}
{col 12}     {c BLC}{hline 6}{c -}{hline 8}{c -}{hline 8}{c BRC}

{p 4 9 2}
11.  时间序列运算符不仅适用于面板数据，也适用于纯时间序列数据。 唯一的区别在于你如何 {cmd:tsset} 数据。

{p 13 13 2}
{cmd:. webuse grunfeld}{break}
{cmd:. tsset company time}

{p 4 9 2}
12. 时间序列运算符 {cmd:L.} 和 {cmd:F.} 可以与因子变量组合使用。

{p 13 13 2}
{cmd:. sysuse census}{break}
{cmd:. generate t = _n}{break}
{cmd:. tsset t}{break}
{cmd:. regress death medage iL.region [aw=pop]}

{p 9 9 2}
     你可以指定 {cmd:Li.region} 而不是 {cmd:iL.region}；结果将是相同的。


{marker examples}{...}
{title:示例}

{phang}{cmd:. webuse gxmpl1}{p_end}
{phang}{cmd:. list cpi L.cpi L2.cpi L3.cpi}{p_end}
{phang}{cmd:. list cpi L(1/3).cpi}

{phang}{cmd:. list cpi L2.cpi LL.cpi}

{phang}{cmd:. list cpi F.cpi F2.cpi F3.cpi}{p_end}
{phang}{cmd:. list cpi F2.cpi FF.cpi}

{phang}{cmd:. generate cpi_diff = cpi[_n] - cpi[_n-1]}{p_end}
{phang}{cmd:. list cpi cpi_diff D.cpi}

{phang}{cmd:. list cpi D.cpi S.cpi D2.cpi S2.cpi}{p_end}


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=ik8r4WvrPkc":时间序列，第三部分：时间序列运算符}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tsvarlist.sthlp>}