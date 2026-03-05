{smcl}
{* *! version 1.2.3  10aug2012}{...}
{vieweralsosee "[D] labelbook" "help labelbook_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] label" "help label_zh"}{...}
{vieweralsosee "[D] codebook" "help codebook_zh"}{...}
{viewerjumpto "描述" "labelbook_problems_zh##description"}{...}
{viewerjumpto "备注" "labelbook_problems_zh##remarks"}{...}
{viewerjumpto "存储的结果" "labelbook_problems_zh##results"}
{help labelbook_problems:English Version}
{hline}{...}
{title:标题}

{p 4 33 2}
{hi:labelbook} ...{hi:, problems} {hline 2} labelbook 报告的潜在问题


{marker description}{...}
{title:描述}

{pstd}
{help labelbook_zh} 结合 {cmd:problems} 选项诊断值标签可能存在的问题。

{p 8 10 2}
1. 值标签的映射值存在间隙。
{p_end}
{p 8 10 2}
2. 值标签字符串包含前导或尾随空格。
{p_end}
{p 8 10 2}
3. 值标签包含重复标签。
{p_end}
{p 8 10 2}
4. 值标签长度为 12 的重复标签。
{p_end}
{p 8 10 2}
5. 值标签包含数字到数字的映射。
{p_end}
{p 8 10 2}
6. 值标签包含数字到空字符串的映射。
{p_end}
{p 8 10 2}
7. 值标签未被变量使用。
{p_end}

{pstd}
以下部分将讨论这些可能存在的问题。


{marker remarks}{...}
{title:备注}

{phang}
1. 值标签的映射值存在间隙。

{pmore}
假设在一个值标签中，你定义了 1、2、4 和 5 的映射，但忘记为值 3 贴标签。然而，有时，值标签可能故意存在间隙。例如，一些数据集设计师使用数字代码，如 7、8、9 或 97、98、99， 一致表示不同类型的缺失值，如“未达到”、“不适用”和“未回答”。这种做法显然会导致值标签中存在可安全忽略的间隙。

{pmore}
建议：检查存在间隙的值标签的准确性。


{pstd}
2. 值标签字符串包含前导或尾随空格。

{pmore}
值标签文本中的前导或尾随空格可能导致输出不对齐或值标签在输出中不必要地截断。这些空格也可能使正确处理字符串的子字符串变得更加困难，可能浪费资源。

{pmore}
建议：去除前导和尾随空格。


{pstd}
3. 值标签包含重复标签。

{pmore}
可以将不同的数字映射到相同的字符串，但这不会使 Stata 自行合并相应的数值代码。相反，你可能会观察到如下表格：

{space 12}{cmd:. label define odd_label 0 null 1 null, modify}
{space 12}{cmd:. label value x odd_label}
{space 12}{cmd}. tab x

{space 12}          {txt}x {c |}      频数     百分比        累计
{space 12}{hline 12}{c +}{hline 35}
{space 12}{txt}       null {c |}{res}         56       56.00       56.00
{space 12}{txt}       null {c |}{res}         44       44.00      100.00
{space 12}{txt}{hline 12}{c +}{hline 35}
{space 12}      总计 {c |}{res}        100      100.00{txt}

{pmore}
或更糟的是：

{space 12}{cmd:. label define odd_label 0 3 1 3, modify}
{space 12}{cmd:. label value x odd_label}
{space 12}{cmd}. tab x

{space 12}          {txt}x {c |}      频数     百分比        累计
{space 12}{hline 12}{c +}{hline 35}
{space 12}{txt}          3 {c |}{res}         56       56.00       56.00
{space 12}{txt}          3 {c |}{res}         44       44.00      100.00
{space 12}{txt}{hline 12}{c +}{hline 35}
{space 12}{txt}      总计 {c |}{res}        100      100.00{txt}

{pmore}
要消除这些值，生成一个新变量；请参见 {manhelp recode D} 和 {manhelp generate D}。

{pmore}
建议：避免重复标签。


{pstd}
4. 值标签长度为 12 的重复标签。

{pmore}
即使值标签字符串在完整长度上是不同的，Stata 通常必须在表格中截断值标签，因为没有空间显示完整标签。截断可能会创建重复项。许多命令只显示前 12 个字符，因此 {cmd:labelbook} 会在长度为 12 的位置找到重复的值标签。

{pmore}
建议：考虑使前 12 个字符的值标签唯一。


{pstd}
5. 值标签包含数字到数字的映射。

{pmore}
Stata 允许将数字（数值）映射到数字的值标签，即映射到可以被解释为数字的字符串。虽然这个特性有时很有用，但可能会引起极大的困惑，因为不清楚数字是数值还是可以被理解为数字的字符串：如果 Stata 显示 23，这个数字是 23 还是字符串 "23"？

{pmore}
以下是使用当前未贴值标签的 0-1 值变量 {cmd:x} 的示例：

{space 12}{cmd:. tab x}

{space 12}{txt}          x {c |}      频数     百分比        累计
{space 12}{hline 12}{c +}{hline 35}
{space 12}{txt}          0 {c |}{res}         56       56.00       56.00
{space 12}{txt}          1 {c |}{res}         44       44.00      100.00
{space 12}{txt}{hline 12}{c +}{hline 35}
{space 12}{txt}      总计 {c |}{res}        100      100.00{txt}

{space 12}{cmd:. label define odd_label 0 4 1 5, modify}
{space 12}{cmd:. label value x odd_label}
{space 12}{cmd}. tab x

{space 12}{txt}          x {c |}      频数     百分比        累计
{space 12}{hline 12}{c +}{hline 35}
{space 12}{txt}          4 {c |}{res}         56       56.00       56.00
{space 12}{txt}          5 {c |}{res}         44       44.00      100.00
{space 12}{txt}{hline 12}{c +}{hline 35}
{space 12}{txt}      总计 {c |}{res}        100      100.00{txt}

{pmore}
或者，更糟糕的：

{space 12}{cmd:. label define odd_label 0 1 1 0, modify}
{space 12}{cmd:. label value x odd_label}
{space 12}{cmd}. tab x

{space 12}{txt}          x {c |}      频数     百分比        累计
{space 12}{hline 12}{c +}{hline 35}
{space 12}{txt}          1 {c |}{res}         56       56.00       56.00
{space 12}{txt}          0 {c |}{res}         44       44.00      100.00
{space 12}{txt}{hline 12}{c +}{hline 35}
{space 12}{txt}      总计 {c |}{res}        100      100.00{txt}

{pmore}
这肯定会让你或他人查看你的数据时感到困惑。

{pmore}
建议：避免数字值标签。


{pstd}
6. 值标签包含数字到空字符串的映射。

{pmore}
可以定义值标签，其中数字映射到空字符串，即一个或多个空格。

{space 12}{cmd:. label define odd_label 0 odd 1 " ", modify}
{space 12}{cmd:. label value x odd_label}
{space 12}{cmd}. tab x

{space 12}{txt}          x {c |}      频数     百分比        累计
{space 12}{hline 12}{c +}{hline 35}
{space 12}{txt}        odd {c |}{res}         56       56.00       56.00
{space 12}{txt}            {c |}{res}         44       44.00      100.00
{space 12}{txt}{hline 12}{c +}{hline 35}
{space 12}{txt}      总计 {c |}{res}        100      100.00{txt}

{pmore}
建议：避免使用空标签。


{pstd}
7. 值标签未被变量使用。

{pmore}
如果你的数据集中包含未与任何变量关联的值标签，你可能在定义值标签后忘记将其分配（使用 "{cmd:label value} {it:varname labelname}" 语句）。如果你保存数据集，Stata 会识别出值标签未被使用并悄悄将其删除。

{pmore}
你也可能已经删除了所有与该值标签相关联的变量。在这种情况下，你可能不在意在保存数据时该值标签被删除。

{pmore}
建议：删除任何不再需要的值标签（使用 {cmd:label drop} {it:lblnamelist}），并将其他标签分配给变量。

{pmore}
在多语言的数据集中，值标签可能仅在非活动语言中使用。当数据被保存时，此类值标签不会被删除。


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:labelbook} 在 {cmd:r()} 中存储以下可能存在问题的值标签列表：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(names)}}{it:lblname-list}{p_end}
{synopt:{cmd:r(gaps)}}映射值中的间隙{p_end}
{synopt:{cmd:r(blanks)}}前导或尾随空格{p_end}
{synopt:{cmd:r(null)}}包含空字符串的值标签名称{p_end}
{synopt:{cmd:r(nuniq)}}重复标签{p_end}
{synopt:{cmd:r(nuniq_sh)}}长度为 12 的重复标签{p_end}
{synopt:{cmd:r(ntruniq)}}最大字符串长度的重复标签{p_end}
{synopt:{cmd:r(notused)}}未被任何变量使用{p_end}
{synopt:{cmd:r(numeric)}}包含映射到数字的值标签名称{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(}{it:lblname}{cmd:)}}使用值标签 {it:lblname} 的变量列表（仅在指定了 {cmd:var} 选项时）{p_end}
{p2colreset}{...}

{pstd}
在运行 {cmd:labelbook} 后，你可以通过键入

	{cmd:. return list}

查看可能存在问题的值标签列表。

{pstd}
要显示包含潜在问题的值标签定义 {it:prob}，请输入

	{cmd:. label list `r(}{it:prob}{cmd:)'}

{pstd}
例如

	{cmd:. label list `r(numeric)'}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <labelbook_problems.sthlp>}