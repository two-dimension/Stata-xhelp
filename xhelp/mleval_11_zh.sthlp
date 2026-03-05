
{smcl}
{* *! version 1.2.4  10oct2017}{...}
{cmd:help mleval_11}, {cmd:help mlsum_ll}, {cmd:help mlvecsum_ll}, {cmd:help mlmatsum_ll}, {cmd:help mlmatbysum_ll}{right:{help prdocumented_zh:以前已记录}}
{hline}
{help mleval_11:English Version}
{hline}

{p2colset 4 14 16 2}{...}
{p2col:{hi:[R] ml} {hline 2}}用于 ml 方法 d0、d1、d2、e1、e2、v0、v1 和 v2 的对数似然评估程序{p_end}
{p2colreset}{...}

{p 12 12 8}
{it}[与 {bf:ml} 的评估器类型相关的名称在版本 11 中已更改。
此帮助文件记录了 {cmd:ml} 的旧语法，因此可能对您没有兴趣。您不必将旧 do 文件中的 {cmd:ml} 调用翻译为现代语法，因为 Stata 继续理解旧语法和新语法。此帮助文件提供给希望调试或理解旧代码的用户。
点击 {help ml_zh:这里} 获取现代 {cmd:ml} 命令的帮助文件。]{rm}

{title:用于 ml 对数似然评估器的子程序语法}

{p 8 19 2}
{cmd:mleval}{space 4}
{newvar} {cmd:=} {it:vecname} [{cmd:,}
{opt eq(#)}]

{p 8 19 2}
{cmd:mleval}{space 4} {it:scalarname} {cmd:=} {it:vecname}
{cmd:,} {opt scalar} [{opt eq(#)}]

{p 8 19 2}
{cmd:mlsum}{space 5} {it:scalarname_lnf} {cmd:=} {it:exp}
[{it:{help if_zh}}] [{cmd:,} {opt nowei:ght}]

{p 8 19 2}
{cmd:mlvecsum}{space 3}{it:scalarname_lnf} {it:rowvecname} {cmd:=} {it:exp}
[{it:{help if_zh}}] [{cmd:,} {opt eq(#)}]

{p 8 19 2}{cmd:mlmatsum}{space 3}{it:scalarname_lnf} {it:matrixname} {cmd:=} {it:exp}
[{it:{help if_zh}}] [{cmd:,} {cmd:eq(}{it:#}[{cmd:,}{it:#}]{cmd:)}]

{p 8 19 2}{cmd:mlmatbysum}
	{it:scalarname_lnf}
	{it:matrixname} 
	{it:varname_a} 
	{it:varname_b} 
	[{it:varname_c}]
	[{it:{help if_zh}}] {cmd:,}
	{opth by(varname)}
	[{cmd:eq(}{it:#}[{cmd:,}{it:#}]{cmd:)}]

{title:描述}

{pstd}
这些命令在使用 {cmd:ml} 方法 d0、d1、d2、e1、e2、v0、v1 和 v2 时，帮助编码似然评估程序。在编码方法 lf 评估器时无助。

{pstd}
{opt mleval} 是方法 d0、d1、d2、e1、e2、v0、v1 和 v2 评估器的一个子程序，用于评估它们传递的系数向量。

{pstd}
{opt mlsum} 是方法 d0、d1、d2、e1 和 e2 评估器的一个子程序，用于定义要返回的值 ln L。

{pstd}
{opt mlvecsum} 是方法 d1 和 d2 评估器的一个子程序，用于定义要返回的梯度向量 g。仅在似然函数满足线性形式限制时适用。

{pstd}
{opt mlmatsum} 是方法 d2、e2 和 v2 评估器的一个子程序，用于定义要返回的赫西矩阵 H。仅在似然函数满足线性形式限制时适用。

{pstd}
{opt mlmatbysum} 是方法 d2 和 v2 评估器的一个子程序，用于帮助定义要返回的赫西矩阵 H。适用于似然函数包含由分组和构成的项的情况，例如面板数据模型。对于此类模型，使用 {opt mlmatsum} 计算观测级别的外积，并使用 {opt mlmatbysum} 计算组级别的外积。{opt mlmatbysum} 要求数据按 {opt by()} 选项中指定的变量排序。

{title:mleval 选项}

{phang}
{opt eq(#)} 指定要评估的方程号 {it:i}，用于 {it:theta_ij} = {it:x_ij} * {it:b_i}。如果未指定 {opt eq()}，则假定为 {cmd:eq(1)}。

{phang}
{opt scalar} 确认 {it:i} 方程已知为常数，这意味着该方程被指定为 {opt ()}、{opt (name:)} 或 {cmd:/}{it:name} 在 {opt ml model} 语句中。
如果指定此选项，创建的新变量将作为标量创建。
如果 {it:i} 方程不评估为标量，则会发出错误消息。

{title:mlsum 的选项}

{phang}
{opt noweight} 指定在求和似然函数时忽略权重 ({cmd:$ML_w})。

{title:mlvecsum 的选项}

{phang}
{opt eq(#)} 指定要构建的梯度向量 {it:d}ln{it:L}/{it:db_i} 的方程。默认值为 {cmd:eq(1)}。

{title:mlmatsum 的选项}

{phang}
{cmd:eq(}{it:#}[{cmd:,}{it:#}]{cmd:)} 指定要构建的赫西矩阵的方程。默认值为 {cmd:eq(1)}，这与 {cmd:e(1,1)} 相同，意味着 {it:d}^2ln{it:L}/({it:db_}1 {it:db}_1')。指定 {cmd:eq(}{it:i}{cmd:,}{it:j}{cmd:)} 的结果是 {it:d}^2ln{it:L}/({it:db_i} {it:db_j}')。

{title:mlmatbysum 的选项}

{phang}
{opth by(varname)} 是必需的，指定分组变量。{it:varname} 必须是数值变量。

{phang}
{cmd:eq(}{it:#}[{cmd:,}{it:#}]{cmd:)} 指定要构建的赫西矩阵的方程。默认值为 {cmd:eq(1)}，这与 {cmd:e(1,1)} 相同，意味着 {it:d}^2ln{it:L}/({it:db_}1 {it:db}_1')。指定 {cmd:eq(}{it:i}{cmd:,}{it:j}{cmd:)} 的结果是 {it:d}^2ln{it:L}/({it:db_i} {it:db_j}')。

{title:示例}

{pstd}
请参见 {help mlmethod_11_zh}，获取使用 {opt mleval}、{opt mlsum}、{opt mlvecsum} 和 {opt mlmatsum} 命令的对数似然评估器大纲。
{bf:[R] ml} 包含更多示例。更多示例可以在 {it:{browse "http://www.stata.com/bookstore/mle.html":Stata 的最大似然估计，第 3 版}} 中找到 
(Gould, Pitblado 和 Sribney 2006) {c -} 从 StataCorp 提供。

{title:另见}

{psee}
手册:  {manlink R ml}

{psee}
{space 2}帮助:  {manhelp ml R}, {help mlmethod_11_zh}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mleval_11.sthlp>}