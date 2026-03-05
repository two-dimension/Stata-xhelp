{smcl}
{* *! version 1.0.4  14may2018}{...}
{vieweralsosee "[R] 错误信息" "mansection R Errormessages"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] 搜索" "help search_zh"}
{help error_messages:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[R] 错误信息} {hline 2}}错误信息和返回代码
{p_end}
{p2col:}({mansection R Errormessages:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{title:描述}

{pstd}
每当 Stata 检测到出现问题——无论是您输入的内容无法理解、您试图做不该做的事情，还是您请求了不可能的操作——Stata 都会通过输入一条描述问题的消息以及一个返回代码来响应。 例如，

        {cmd:. lsit}
        {err:未识别的命令:  lsit}
        {search r(199):r(199);}

        {cmd:. list myvar}
        {err:未找到变量 myvar}
        {search r(111):r(111);}

        {cmd:. test a=b}
        {err:未找到最后的估计值}
        {search r(301):r(301);}

{pstd}
在每种情况下，消息可能足以指导您找到解决方案。 当我们输入 {cmd:lsit} 时，Stata 回应了“{err:未识别的命令}”。 我们本来想输入 {cmd:list}。 当我们输入 {cmd:list} {cmd:myvar} 时，Stata 回应了“{err:未找到变量 myvar}”。 我们的数据中没有名为 {cmd:myvar} 的变量。 当我们输入 {cmd:test} {cmd:a=b} 时，Stata 回应了“{err:未找到最后的估计值}”。 {cmd:test} 测试关于之前拟合模型的假设，而我们尚未拟合模型。

{pstd}
消息中的括号内的数字在 {cmd:r(199)}、{cmd:r(111)} 和 {cmd:r(301)} 消息中被称为返回代码。 要了解有关这些消息的更多信息，请输入 {cmd:search} {cmd:rc} {it:#}，其中 {it:#} 是括号中返回的数字。

    {cmd}{...}
    . search rc 301

        [P] 错误信息 . . . . . . . . . . . . . . . . . . 返回代码 301
            {bf:未找到最后的估计值};{txt}
            您输入了一个估计命令，如 {bf:regress}，但没有参数，或试图执行 {bf:test}，或输入了 {bf:predict}，但没有之前的估计结果。

{pstd}
程序员应参见 {manlink P error} 以获取有关编程错误信息的详细信息。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <error_messages.sthlp>}