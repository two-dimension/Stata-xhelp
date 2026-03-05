
{smcl}
{* *! version 1.0.0  29mar2013}{...}
{findalias asfrabbrev}{...}
{title:标题}
{help abbreviations:English Version}
{hline}

{title:{findalias frabbrev}}

{pstd}
Stata 允许使用简写。在本手册中，我们通常避免简写命令、变量名和选项以确保可读性：

{phang2}
{cmd:. summarize myvar, detail}

{pstd}
另一方面，经验丰富的 Stata 用户往往会将相同的命令简写为

{phang2}
{cmd:. sum myv, d}

{pstd}
一般而言，命令、选项和变量名可以简写为唯一识别它们的最短字符序列。

{pstd}
如果命令或选项执行某些无法轻易撤销的操作，则此规则会被违反；命令必须完整拼写。

{pstd}
此外，几个常用的命令和选项允许使用比一般规则更短的简写。

{pstd}
一般规则适用于变量名，且没有例外。


{title:{findalias frcmdabbrev}}

{pstd}
可以通过查看命令的语法图来确定命令或选项的最短允许简写。此最小简写通过下划线显示：

            {cmdab:reg:ress}
            {cmdab:ren:ame}
            {cmd:replace}
            {cmdab:rot:ate}
            {cmdab:ru:n}

{pstd}
如果没有下划线，则不允许任何简写。例如，{cmd:replace} 不能被简写，其根本原因是 {cmd:replace} 会更改数据。

{pstd}
{cmd:regress} 可以简写为 {cmd:reg}、{cmd:regr}、{cmd:regre} 或 {cmd:regres}，或可以完整拼写。

{pstd}
有时，短的简写也被允许。以字母 "d" 开头的命令包括 {cmd:decode}、{cmd:describe}、{cmd:destring}、{cmd:dir}、{cmd:discard}、{cmd:display}、{cmd:do} 和 {cmd:drop}，这表明 {cmd:describe} 的最短允许简写是 {cmd:desc}。然而，因为 {cmd:describe} 是一个常用的命令，您可以用字母 {cmd:d} 来简写它。您也可以用字母 {cmd:l} 来简写 {cmd:list} 命令。

{pstd}
一般简写规则的另一个例外是，修改或破坏数据的命令必须完全拼写。两个以字母 "d" 开头的命令，{cmd:discard} 和 {cmd:drop}，是破坏性的，因为一旦输入这些命令，就无法撤销其结果。因此，两个命令都必须完全拼写。

{pstd}
对一般规则的最终例外是实现为 ado 文件的命令。这些命令不得简写。Ado 文件命令是外部的，其名称与磁盘文件的名称对应。


{title:{findalias froptabbrev}}

{pstd}
选项的简写遵循与命令简写相同的逻辑：您可以通过检查命令的语法图来确定最低可接受的简写。{cmd:summarize} 的语法图部分如下所示：

{phang2}
{cmdab:su:mmarize} ..., {cmdab:d:etail} {cmdab:f:ormat}

{pstd}
{cmd:detail} 选项可以简写为 {cmd:d}、{cmd:de}、{cmd:det}、..., {cmd:detail}。同样，{cmd:format} 选项可以简写为 {cmd:f}、{cmd:fo}、..., {cmd:format}。

{pstd}
{cmd:clear} 和 {cmd:replace} 选项与许多命令一起出现。{cmd:clear} 选项表示即使完成此命令将导致内存中的所有数据丢失，并且内存中的数据自上次保存到磁盘后已更改，您仍希望继续。{cmd:clear} 必须完整拼写，例如在 {cmd:use} {cmd:newdata,} {cmd:clear} 中。

{pstd}
{cmd:replace} 选项表示可以覆盖现有数据集。如果输入 {cmd:save mydata} 并且文件 {cmd:mydata.dta} 已经存在，您将收到消息 "{file mydata.dta already exists}"，Stata 将拒绝覆盖该文件。为了允许 Stata 覆盖数据集，您应输入 {cmd:save} {cmd:mydata,} {cmd:replace}。{cmd:replace} 不可简写。

    {bf:技术说明}

{pstd}
{cmd:replace} 是一个比 {cmd:clear} 更强的修饰符，在使用之前您应该仔细考虑。使用错误的 {cmd:clear}，您可能会失去几个小时的工作，但错误的 {cmd:replace} 可能会导致您失去数天的工作。  


{title:{findalias frvarabbrev}}

{p 8 10 2}o 变量名可以简写为唯一识别它们的最短字符序列，在当前加载的内存数据中。

{p 10 10 2}如果您的数据集包含四个变量，{cmd:state}、{cmd:mrgrate}、{cmd:dvcrate} 和 {cmd:dthrate}，您可以将变量 {cmd:dvcrate} 称为 {cmd:dvcrat}、{cmd:dvcra}、{cmd:dvcr}、{cmd:dvc} 或 {cmd:dv}。您可以输入 {cmd:list} {cmd:dv} 来列出 {cmd:dvcrate} 的数据。然而，您不能将变量 {cmd:dvcrate} 称为 {cmd:d}，因为该简写不能将 {cmd:dvcrate} 与 {cmd:dthrate} 区分开来。如果您输入 {cmd:list} {cmd:d}，Stata 将回应 "ambiguous abbreviation" 的消息。（如果您想引用所有以字母 "d" 开头的变量，您可以键入 {cmd:list} {cmd:d*}；请参见 {findalias frvarlists}。）

{p 8 10 2}o 字符 {cmd:~} 可用于表示 "这里有零个或多个字符"。例如，{cmd:r~8} 可能指变量 {cmd:rep78}、{cmd:rep1978}、{cmd:repair1978}，或者仅为 {cmd:r8}。（{cmd:~} 字符与 {findalias frvarlists} 中的 {cmd:*} 字符相似，只是它增加了 "并且只有一个变量与此规范匹配" 的限制。）

{p 10 10 2}如上所述，您可以简写变量。您可以输入 {cmd:dvcr} 来指代 {cmd:dvcrate}，但是如果有多个变量以字母 {cmd:dvcr} 开头，您将收到错误消息。输入 {cmd:dvcr} 与输入 {cmd:dvcr~} 是相同的。


{title:{findalias frabbrevprog}}

{pstd}
Stata 提供了多个有用的命令和函数来帮助程序员简写和展开命令名称和变量名称。

{synoptset 20}{...}
{synopthdr:命令/函数}
{synoptline}
{synopt :{help unab_zh}} 展开并取消标准变量列表的简写 {p_end}
{synopt :{helpb tsunab}} 展开并取消可能包含时间序列运算符的变量列表的简写 {p_end}
{synopt :{helpb fvunab}} 展开并取消可能包含时间序列运算符或因子变量的变量列表的简写 {p_end}

{synopt :{help unabcmd_zh}} 取消命令名称的简写 {p_end}

{synopt :{help novarabbrev_zh}} 关闭变量简写 {p_end}
{synopt :{helpb varabbrev}} 打开变量简写 {p_end}
{synopt :{helpb set varabbrev}} 设置是否支持变量简写 {p_end}

{synopt :{helpb abbrev():abbrev({it:s},{it:n})}} 字符串函数，将 {it:s} 简写为 {it:n} 个字符 {p_end}
{synopt :{help mf_abbrev_zh:abbrev({it:s},{it:n})}} 上述 Mata 变体，允许 {it:s} 和 {it:n} 为矩阵 {p_end}
{synoptline}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <abbreviations.sthlp>}