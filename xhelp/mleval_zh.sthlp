{smcl}
{* *! version 1.3.7  16apr2018}{...}
{vieweralsosee "[R] ml" "mansection R ml"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "mlmethod" "help mlmethod_zh"}{...}
{viewerjumpto "子例程的语法，用于 ml 对数似然估算器" "mleval_zh##syntax"}{...}
{viewerjumpto "描述" "mleval_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mleval_zh##linkspdf"}{...}
{viewerjumpto "与 mleval 一起使用的选项" "mleval_zh##options_mleval"}{...}
{viewerjumpto "与 mlsum 一起使用的选项" "mleval_zh##option_mlsum"}{...}
{viewerjumpto "与 mlvecsum 一起使用的选项" "mleval_zh##option_mlvecsum"}{...}
{viewerjumpto "与 mlmatsum 一起使用的选项" "mleval_zh##option_mlmatsum"}{...}
{viewerjumpto "与 mlmatbysum 一起使用的选项" "mleval_zh##options_mlmatbysum"}{...}
{viewerjumpto "示例" "mleval_zh##examples"}
{help mleval:English Version}
{hline}{...}
{p2colset 1 11 13 2}{...}
{p2col:{bf:[R] ml} {hline 2}}用于 ml 方法 d0、d1、d2、lf0、lf1、lf2 和 gf0 对数似然估算器的程序{p_end}
{p2col:}({mansection R ml:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:子例程的语法，用于 ml 对数似然估算器}

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


{marker description}{...}
{title:描述}

{pstd}
这些命令用于帮助编码使用 {help ml_zh} 方法 d0、d1、d2、lf0、lf1、lf2 和 gf0 的似然评估程序。当编码方法 lf 评估器时，它们没有帮助。

{pstd}
{opt mleval} 是一个子例程，供方法 d0、d1、d2、lf0、lf1、lf2 和 gf0 评估器使用，以评估它们传递的系数向量。

{pstd}
{opt mlsum} 是一个子例程，供方法 d0、d1 和 d2 评估器使用，以定义要返回的值 ln L。

{pstd}
{opt mlvecsum} 是一个子例程，供方法 d1 和 d2 评估器使用，以定义要返回的梯度向量 g。它仅适用于似然函数满足线性形式约束的情况。

{pstd}
{opt mlmatsum} 是一个子例程，供方法 d2 和 lf2 评估器使用，以定义要返回的 Hessian 矩阵 H。它仅适用于似然函数满足线性形式约束的情况。

{pstd}
{opt mlmatbysum} 是一个子例程，供方法 d2 评估器使用，以帮助定义要返回的 Hessian 矩阵 H。它适用于似然函数包含由分组求和组成的项，如在面板数据模型中。对于此类模型，使用 {opt mlmatsum} 计算观测级别的外积，以及使用 {opt mlmatbysum} 计算组级别的外积。{opt mlmatbysum} 要求数据按 {opt by()} 选项中指定的变量排序。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R mlRemarksandexamples:备注与示例}

        {mansection R mlMethodsandformulas:方法与公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options_mleval}{...}
{title:与 mleval 一起使用的选项}

{phang}
{opt eq(#)} 指定要评估的方程编号 {it:i}，对于该方程第 {it:theta_ij} = {it:x_ij} * {it:b_i}。如果未指定 {opt eq()}，则默认为 {cmd:eq(1)}。

{phang}
{opt scalar} 断言第 {it:i} 个方程已知可评估为常数，这意味着方程已在 {opt ()}、{cmd:(}{it:name}{cmd::)} 或 {cmd:/}{it:name} 的 {opt ml model} 语句中指定。如果指定此选项，则创建的新变量将作为标量创建。如果第 {it:i} 个方程无法评估为标量，则会发出错误消息。


{marker option_mlsum}{...}
{title:与 mlsum 一起使用的选项}

{phang}
{opt noweight} 指定在求和似然函数时忽略权重 ({cmd:$ML_w})。


{marker option_mlvecsum}{...}
{title:与 mlvecsum 一起使用的选项}

{phang}
{opt eq(#)} 指定要构建的梯度向量 {it:d}ln{it:L}/{it:db_i} 的方程。默认值为 {cmd:eq(1)}。


{marker option_mlmatsum}{...}
{title:与 mlmatsum 一起使用的选项}

{phang}
{cmd:eq(}{it:#}[{cmd:,}{it:#}]{cmd:)} 指定要构建 Hessian 矩阵的方程。默认值为 {cmd:eq(1)}，这与 {cmd:eq(1,1)} 相同，意味着 {it:d}^2ln{it:L}/({it:db_}1 {it:db}_1')。指定 {cmd:eq(}{it:i}{cmd:,}{it:j}{cmd:)} 将导致 {it:d}^2ln{it:L}/({it:db_i} {it:db_j}')。


{marker options_mlmatbysum}{...}
{title:与 mlmatbysum 一起使用的选项}

{phang}
{opth by(varname)} 是必需的，并指定组变量。

{phang}
{cmd:eq(}{it:#}[{cmd:,}{it:#}]{cmd:)} 指定要构建 Hessian 矩阵的方程。默认值为 {cmd:eq(1)}，这与 {cmd:eq(1,1)} 相同，意味着 {it:d}^2ln{it:L}/({it:db_}1 {it:db}_1')。指定 {cmd:eq(}{it:i}{cmd:,}{it:j}{cmd:)} 将导致 {it:d}^2ln{it:L}/({it:db_i} {it:db_j}')。


{marker examples}{...}
{title:示例}

{pstd}
请参见 {help mlmethod_zh}，了解使用 {opt mleval}、{opt mlsum}、{opt mlvecsum} 和 {opt mlmatsum} 命令的对数似然估算器的轮廓。{bf:[R] ml} 包含更多示例。更多示例可以在 {it:{browse "http://www.stata-press.com/books/ml4.html":使用 Stata 进行最大似然估计， 第 4 版}}中找到（Gould、Pitblado 和 Poi 2010） {c -} 可从 StataCorp 获取。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mleval.sthlp>}