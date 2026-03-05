
{smcl}
{* *! version 1.0.4  18jan2010}{...}
{cmd:help mleval_10}, {cmd:help mlsum_10}, {cmd:help mlvecsum_10}, {cmd:help mlmatsum_10}, {cmd:help mlmatbysum_10}{right:{help prdocumented_zh:以前已记录}}
{hline}
{help mleval_10:English Version}
{hline}

{title:标题}

{p2colset 4 14 16 2}{...}
{p2col:{hi:[R] ml} {hline 2}}用于 ml 方法 d0、d1 和 d2 的程序
对数似然评估器{p_end}
{p2colreset}{...}

{p 12 12 8}
{it}[{bf:ml} 语法自版本 11 起已更改。
本帮助文件记录了 {cmd:ml} 的旧语法，因此可能与您无关。您不需要将旧 do 文件中的 {cmd:ml} 调用转换为现代语法，因为 Stata 会同时理解旧语法和新语法。此帮助文件是为希望调试或理解旧代码的人提供的。
点击 {help ml_zh:这里} 查看现代 {cmd:ml} 命令的帮助文件。]{rm}


{title:用于 d0、d1 和 d2 评估器的子例程语法}

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
这些命令在使用 {help ml_10_zh} 方法 d0、d1 和 d2 时帮助编码似然评估程序。它们在编码方法 lf 评估器时则没有帮助。

{pstd}
{opt mleval} 是方法 d0、d1 和 d2 评估器用来评估传递给它们的系数向量的子例程。

{pstd}
{opt mlsum} 是方法 d0、d1 和 d2 评估器用于定义要返回的值 ln L 的子例程。

{pstd}
{opt mlvecsum} 是方法 d1 和 d2 评估器用来定义要返回的梯度向量 g 的子例程。只有当似然函数满足线性形式限制时，它才适合使用。

{pstd}
{opt mlmatsum} 是方法 d2 评估器用来定义要返回的负 Hessian 矩阵 -H 的子例程。只有当似然函数满足线性形式限制时，它才适合使用。

{pstd}
{opt mlmatbysum} 是方法 d2 评估器的子例程，用于帮助定义要返回的负 Hessian 矩阵 -H。它适合用于似然函数包含由分组和构成的项，例如在面板数据模型中。对于此类模型，请使用 {opt mlmatsum} 计算观测级别的外积，并使用 {opt mlmatbysum} 计算组级别的外积。{opt mlmatbysum} 要求数据按 {opt by()} 选项中的变量排序。


{title:与 mleval 一起使用的选项}

{phang}
{opt eq(#)} 指定要评估的方程编号 {it:i}，其中 {it:theta_ij} = {it:x_ij} * {it:b_i}。如果未指定 {opt eq()}，则假定为 {cmd:eq(1)}。

{phang}
{opt scalar} 断言第 {it:i} 个方程已知为常数，这意味着该方程是指定为 {opt ()}、{opt (name:)} 或 {cmd:/}{it:name} 在 {opt ml model} 语句上。如果您指定此选项，创建的新变量将作为标量创建。如果第 {it:i} 个方程不等于标量，则将发出错误消息。


{title:与 mlsum 一起使用的选项}

{phang}
{opt noweight} 指定在求和似然函数时忽略权重 ({cmd:$ML_w})。


{title:与 mlvecsum 一起使用的选项}

{phang}
{opt eq(#)} 指定要构建梯度向量 {it:d}ln{it:L}/{it:db_i} 的方程。默认值为 {cmd:eq(1)}。


{title:与 mlmatsum 一起使用的选项}

{phang}
{cmd:eq(}{it:#}[{cmd:,}{it:#}]{cmd:)} 指定用于构建负 Hessian 矩阵的方程。默认值为 {cmd:eq(1)}，这与 {cmd:e(1,1)} 相同，意味着 -{it:d}^2ln{it:L}/({it:db_}1 {it:db}_1')。指定 {cmd:eq(}{it:i}{cmd:,}{it:j}{cmd:)} 会导致 -{it:d}^2ln{it:L}/({it:db_i} {it:db_j}')。


{title:与 mlmatbysum 一起使用的选项}

{phang}
{opth by(varname)} 是必需的，并指定组变量。 {it:varname} 必须是一个数字变量。

{phang}
{cmd:eq(}{it:#}[{cmd:,}{it:#}]{cmd:)} 指定用于构建负 Hessian 矩阵的方程。默认值为 {cmd:eq(1)}，这与 {cmd:e(1,1)} 相同，意味着 -{it:d}^2ln{it:L}/({it:db_}1 {it:db}_1')。指定 {cmd:eq(}{it:i}{cmd:,}{it:j}{cmd:)} 会导致 -{it:d}^2ln{it:L}/({it:db_i} {it:db_j}')。


{title:示例}

{pstd}
请参见 {help mlmethod_10_zh} 获取使用 {opt mleval}、{opt mlsum}、{opt mlvecsum} 和 {opt mlmatsum} 命令的对数似然评估器的概述。
{bf:[R] ml} 包含更多示例。更多示例可以在
    {it:{browse "http://www.stata.com/bookstore/mle.html":Stata的最大似然估计, 第3版}} 
（Gould, Pitblado 和 Sribney 2006） {c -} 从 StataCorp 获取。


{title:另见}

{psee}
手册：{bf:[R] ml}

{psee}
在线：{manhelp ml R}、{help mlmethod_10_zh}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mleval_10.sthlp>}