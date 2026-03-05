{smcl}
{* *! version 1.2.5  15may2018}{...}
{vieweralsosee "[P] discard" "mansection P discard"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] clear" "help clear_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] class" "help class_zh"}{...}
{vieweralsosee "[P] classutil" "help classutil_zh"}{...}
{vieweralsosee "[P] Dialog programming" "help dialog_programming_zh"}{...}
{viewerjumpto "Syntax" "discard_zh##syntax"}{...}
{viewerjumpto "Description" "discard_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "discard_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "discard_zh##remarks"}
{help discard:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[P] discard} {hline 2}}删除自动加载的程序{p_end}
{p2col:}({mansection P discard:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmd:discard}


{marker description}{...}
{title:描述}

{pstd}
{cmd:discard} 删除所有自动加载的程序 (有关详细信息，见 {findalias fradowhat})；清空 {cmd:e()}、{cmd:r()} 和 {cmd:s()} 存储的结果 (见 {manhelp return P})；消除最近一次估计命令存储的信息及任何其他已保存的估计结果 (见 {manhelp ereturn P})；关闭所有打开的图形并删除所有 sersets (见 {manhelp serset P})；清空所有类定义和实例 (见 {manhelp classutil P})；清除所有商业日历 (见 {bf:{help datetime_business_calendars_zh:[D] 日期时间商业日历}})；关闭所有对话框并清除其记住的内容 (见 {manhelp dialog_programming P:对话框编程})。

{pstd}
简而言之，{cmd:discard} 让 Stata 忘记当前的一切，但不会忘记任何重要的东西，比如内存中的数据。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P discardRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
使用 {cmd:discard} 来调试 ado 文件。对 ado 文件进行更改不会导致 Stata 更新其内部的已更改程序副本。{cmd:discard} 从内存中清除所有自动加载的程序，迫使 Stata 使用磁盘上存在的版本来更新其内部副本。

{pstd}
此外，所有 Stata 的估计命令在不带参数输入时可以显示其先前的输出。它们通过在内存中存储问题的信息来实现这一点。 {help predict_zh} 计算各种统计量 (预测值、残差、影响统计量等)，{helpb estat vce} 显示协方差矩阵，{help lincom_zh} 计算估计系数的线性组合，而 {help test_zh} 和 {help testnl_zh} 执行假设检验，所有这些都使用存储的信息。{cmd:discard} 消除了这些信息，使其看起来就像您从未拟合过模型。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <discard.sthlp>}