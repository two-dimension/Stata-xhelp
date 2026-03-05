{smcl}
{* *! version 1.1.5  11may2018}{...}
{vieweralsosee "[M-2] 介绍" "mansection M-2 Intro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-0] 介绍" "help mata_zh"}{...}
{viewerjumpto "目录" "m2_intro_zh##contents"}{...}
{viewerjumpto "描述" "m2_intro_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "m2_intro_zh##linkspdf"}{...}
{viewerjumpto "备注" "m2_intro_zh##remarks"}
{help m2_intro:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[M-2] 介绍} {hline 2}}语言定义
{p_end}
{p2col:}({mansection M-2 Intro:查看完整的 PDF 文档条目}){p_end}
{p2colreset}{...}


{marker contents}{...}
{title:目录}

	[M-2] 条目{col 25}描述
	{hline 68}

{col 8}   {c TLC}{hline 8}{c TRC}
{col 8}{hline 3}{c RT}{it: 语法 }{c LT}{hline}
{col 8}   {c BLC}{hline 8}{c BRC}

	{bf:{help m2_syntax_zh:语法}}{col 25}语法和句法

	{bf:{help m2_subscripts_zh:下标}}{col 25}下标的使用

	{bf:{help m2_reswords_zh:保留字}}{col 25}保留字

	{bf:{help m2_comments_zh:注释}}{col 25}注释

{col 8}   {c TLC}{hline 25}{c TRC}
{col 8}{hline 3}{c RT}{it: 表达式与运算符 }{c LT}{hline}
{col 8}   {c BLC}{hline 25}{c BRC}

	{bf:{help m2_exp_zh:表达式}}{col 25}表达式

	{bf:{help m2_op_assignment_zh:赋值运算符}}{col 25}赋值运算符

	{bf:{help m2_op_arith_zh:算术运算符}}{col 25}算术运算符

	{bf:{help m2_op_increment_zh:自增运算符}}{col 25}自增和自减运算符

	{bf:{help m2_op_logical_zh:逻辑运算符}}{col 25}逻辑运算符

	{bf:{help m2_op_conditional_zh:条件运算符}}{col 25}条件运算符

	{bf:{help m2_op_colon_zh:冒号运算符}}{col 25}冒号运算符

	{bf:{help m2_op_join_zh:连接运算符}}{col 25}行和列连接运算符

	{bf:{help m2_op_range_zh:范围运算符}}{col 25}范围运算符

	{bf:{help m2_op_transpose_zh:共轭转置运算符}}{col 25}共轭转置运算符

	{bf:{help m2_op_kronecker_zh:克罗内克乘运算符}}{col 25}克罗内克直积运算符

{col 8}   {c TLC}{hline 26}{c TRC}
{col 8}{hline 3}{c RT}{it: 声明与参数 }{c LT}{hline}
{col 8}   {c BLC}{hline 26}{c BRC}

	{bf:{help m2_declarations_zh:声明}}{col 25}声明与类型

	{bf:{help m2_optargs_zh:可选参数}}{col 25}可选参数

	{bf:{help m2_struct_zh:结构}}{col 25}结构

	{bf:{help m2_class_zh:类}}{col 25}面向对象编程（类）

	{bf:{help m2_pragma_zh:指令}}{col 25}抑制警告信息

	{bf:{help m2_doppelganger_zh:替身}}{col 25}{...}
库中的内置函数的替代品

	{bf:{help m2_version_zh:版本}}{col 25}版本控制

{col 8}   {c TLC}{hline 17}{c TRC}
{col 8}{hline 3}{c RT}{it: 控制流 }{c LT}{hline}
{col 8}   {c BLC}{hline 17}{c BRC}

	{bf:{help m2_if_zh:如果}}{col 25}{...}
{cmd:if (}{it:exp}{cmd:)} ... {cmd:else} ...

	{bf:{help m2_for_zh:循环}}{col 25}{...}
{cmd:for (}{it:exp1}{cmd:;} {it:exp2}{cmd:;} {it:exp3}{cmd:)} {it:stmt}

	{bf:{help m2_while_zh:当}}{col 25}{...}
{cmd:while (}{it:exp}{cmd:)} {it:stmt}

	{bf:{help m2_do_zh:执行}}{col 25}{...}
{cmd:do} ... {cmd:while (}{it:exp}{cmd:)}

	{bf:{help m2_break_zh:中断}}{col 25}{...}
跳出 {cmd:for}、{cmd:while} 或 {cmd:do} 循环

	{bf:{help m2_continue_zh:继续}}{col 25}{...}
继续到下一个 {cmd:for}、{cmd:while} 或 {cmd:do} 循环

	{bf:{help m2_goto_zh:跳转}}{col 25}{cmd:goto} {it:label}

	{bf:{help m2_return_zh:返回}}{col 25}{...}
{cmd:return} 和 {cmd:return(}{it:exp}{cmd:)}

{col 8}   {c TLC}{hline 16}{c TRC}
{col 8}{hline 3}{c RT}{it: 特殊主题 }{c LT}{hline}
{col 8}   {c BLC}{hline 16}{c BRC}

	{bf:{help m2_semicolons_zh:分号}}{col 25}分号的使用

	{bf:{help m2_void_zh:空}}{col 25}空矩阵

	{bf:{help m2_pointers_zh:指针}}{col 25}指针

	{bf:{help m2_ftof_zh:ftof}}{col 25}将函数传递给函数

{col 8}   {c TLC}{hline 13}{c TRC}
{col 8}{hline 3}{c RT}{it: 错误代码 }{c LT}{hline}
{col 8}   {c BLC}{hline 13}{c BRC}

	{bf:{help m2_errors_zh:错误}}{col 25}错误代码

	{hline 68}


{marker description}{...}
{title:描述}

{p 4 4 2}
本节定义了 Mata 编程语言。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-2 IntroRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{bf:{help m2_syntax_zh:[M-2] 语法}} 提供了一个概述，简洁而紧凑，其他部分则对此进行了扩展。

{p 4 4 2}
另请参阅
{bf:{help m1_intro_zh:[M-1] 介绍}} 以获取 Mata 的介绍。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_intro.sthlp>}