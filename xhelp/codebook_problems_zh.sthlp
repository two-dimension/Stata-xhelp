{smcl}
{* *! version 1.2.1  16may2013}{...}
{vieweralsosee "[D] codebook" "mansection D codebook"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] label" "help label_zh"}{...}
{vieweralsosee "[D] labelbook" "help labelbook_zh"}{...}
{viewerjumpto "codebook 报告的潜在问题" "codebook problems##problems"}{...}
{viewerjumpto "讨论" "codebook problems##discussion"}{...}
{viewerjumpto "其他潜在问题" "codebook problems##other_problems"}{...}
{viewerjumpto "存储结果" "codebook problems##results"}
{help codebook_problems:English Version}
{hline}{...}
{marker problems}{...}
{title:codebook 报告的潜在问题}

{pstd}
带有 {cmd:problems} 选项的 {help codebook_zh} 可以诊断变量存在的潜在问题。

{p 8 10 2}
1. 常量变量，包括总是缺失的变量
{p_end}
{p 8 10 2}
2. 具有不存在值标签的变量
{p_end}
{p 8 10 2}
3. 标签不完全的变量
{p_end}
{p 8 10 2}
4. 可能被压缩的字符串变量
{p_end}
{p 8 10 2}
5. 具有前导或尾随空格的字符串变量
{p_end}
{p 8 10 2}
6. 具有嵌入空格的字符串变量
{p_end}
{p 8 10 2}
7. 具有嵌入二进制0（\0）的字符串变量
{p_end}
{p 8 10 2}
8. 非整数值日期变量
{p_end}

{pstd}
以下讨论了这些可能的问题。

{marker discussion}{...}
{title:讨论}

{pstd}
1.  常量变量，包括总是缺失的变量

{pin}
常量变量在所有观测中取相同值，或总是缺失，通常是多余的。然而，这样的变量可能也表明存在问题。例如，始终缺失的变量可能是在导入数据时输入规格不正确导致的。此外，如果您为数据的一个子集生成了一个新变量，而该表达式对所有观测都是错误的，也可能导致这样的变量出现。

{pin}
建议：仔细检查常量变量的来源。如果您正在保存常量变量，请确保对该变量使用 {help compress_zh} 以最小化存储。

{pstd}
2.  具有不存在值标签的变量

{pin}
Stata 将值标签视为可以附加到一个或多个变量的单独对象。如果变量链接到尚未定义的值标签或使用了错误的值标签名称，则可能会出现问题。

{pin}
建议：附加正确的值标签，或使用 {helpb label define} 定义值标签。参见 {manhelp label D}。

{pstd}
3.  标签不完全的变量

{pin}
如果变量被值标签标记，但没有为该变量的某些值提供映射，则称该变量为“标签不完全”。举例来说，有一个变量值为 0、1 和 2，但值标签只提供了 1、2 和 3。这种情况通常表明数据或值标签中存在错误。

{pin}
建议：更改数据或值标签中的一个。

{pstd}
4.  可能被压缩的字符串变量

{pin}
字符串变量使用的存储空间由其 {help data types:data type} 决定。例如，存储类型为 {cmd:str20} 表示每个观测使用 20 字节。如果声明的存储类型超过了您的需求，内存和磁盘空间会被浪费。

{pin}
建议：使用 {help compress_zh} 将数据尽可能紧凑地存储。

{pstd}
5.  具有前导或尾随空格的字符串变量

{pin}
在大多数应用中，前导和尾随空格不会影响变量的含义，但这可能是导入数据或数据操控的副作用。多余的前导和尾随空格会迫使 Stata 使用更多内存。此外，处理带有前导和尾随空格的字符串更困难。

{pin}
建议：通过输入以下内容，从字符串变量 {cmd:s} 中删除前导和尾随空格：

{space 12}{cmd:replace s = trim(s)}

{pin}
参见 {helpb trim()}。

{pstd}
6.  具有嵌入空格的字符串变量

{pin}
具有嵌入空格的字符串变量往往是合适的；然而，有时它们也表明在导入数据时存在问题。

{pin}
建议：验证变量中的空格是否有意义。

{pstd}
7.  具有嵌入二进制0（\0）的字符串变量

{pin}
具有嵌入二进制0（\0）的字符串变量是允许的；然而，在处理它们时应谨慎，因为某些命令和函数可能仅能处理二进制字符串的纯文本部分，而忽略首个二进制0之后的内容。

{pin}
建议：注意数据中的二进制字符串以及您是否以仅适用于纯文本值的方式对其进行处理。

{pstd}
8.  非整数值日期变量

{pin}
Stata 的 {help datetime_zh:日期和时间格式} 设计用于整数值，但也可以处理非整数值。

{pin}建议：仔细检查非整数值的性质。如果变量中的非整数值是由于舍入错误导致的，您可能希望将该变量舍入至最接近的整数。

{pin2}
{cmd:replace time = round(time)}

{marker other_problems}{...}
{title:其他潜在问题}

{pstd}
数据中潜在问题的列表可能是无穷尽的。因此，{cmd:codebook} 无法完成全部工作。以下是其他常见问题和在 Stata 中可能的解决方法的部分列表。

{pstd}
a.  作为字符串存储的数值数据

{pin}
将数据导入 Stata 后，您可能会发现某些字符串变量实际上可以解读为数字。与字符串数据相比，Stata 可以对数值数据做得更多。此外，字符串表示通常会使计算机资源的使用效率降低。使用 {help destring_zh} 可以将字符串变量转换为数值型。

{pin}
字符串变量可能包含一个“字段”，其中有数值信息。例如，一个地址变量可能包含街道名称后跟门牌号码。Stata 的 {help string functions} 可以提取相关的子串。

{pstd}
b.  作为字符串存储的分类变量

{pin}
大多数统计命令不允许使用字符串变量。此外，仅限少数几个不同值的字符串变量是一种低效的存储方法。请改用带有值标签的数值，这可以通过 {help encode_zh} 容易创建。

{pstd}
c.  重复观测

{pin}
参见 {manhelp duplicates D}。

{pstd}
d.  总是缺失的观测

{pin}
使用 {cmd:rownonmiss()} {help egen_zh} 函数删除在 {it:varlist} 中对所有变量均缺失的观测：

{space 12}{cmd:egen nobs = rownonmiss(}{it:varlist}{cmd:)}
{space 12}{cmd:drop if nobs==0}

{pin}
如果仅希望删除总是缺失的观测，请对 {it:varlist} 指定 {cmd:_all}。

{marker results}{...}
{title:存储结果}

{pstd}
带有 {cmd:problems} 选项的 {cmd:codebook} 会将潜在问题的变量列表存储在 {cmd:r()} 中：

{synoptset 24 tabbed}{...}
{p2col 5 24 28 2: 宏}{p_end}
{synopt:{cmd:r(cons)}}常量（或缺失）{p_end}
{synopt:{cmd:r(labelnotfound)}}未定义值标签{p_end}
{synopt:{cmd:r(notlabeled)}}已值标签但类别未标记{p_end}
{synopt:{cmd:r(str_type)}}可压缩{p_end}
{synopt:{cmd:r(str_leading)}}前导空格{p_end}
{synopt:{cmd:r(str_trailing)}}尾随空格{p_end}
{synopt:{cmd:r(str_embedded)}}嵌入空格{p_end}
{synopt:{cmd:r(str_embedded0)}}嵌入二进制0（\0）{p_end}
{synopt:{cmd:r(realdate)}}非整数日期{p_end}
{p2colreset}{...}

{pstd}
运行 {cmd:codebook} 后，您可以查看潜在问题的变量列表。

{tab}{cmd:. return list}

{pstd}
要描述存在潜在问题的变量 {it:prob}：

{tab}{cmd:. describe `r(}{it:prob}{cmd:)'}

{pstd}
例如，要描述标签不完全的变量，

{tab}{cmd:. describe `r(notlabeled)'}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <codebook_problems.sthlp>}