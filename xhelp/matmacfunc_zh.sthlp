{smcl}
{* *! version 1.2.1  18sep2018}{...}
{vieweralsosee "[P] macro" "help macro_zh"}{...}
{vieweralsosee "[P] matrix" "help matrix_zh"}{...}
{vieweralsosee "[P] matrix rownames" "help matrix_rownames_zh"}{...}
{viewerjumpto "Syntax" "matmacfunc_zh##syntax"}{...}
{viewerjumpto "Description" "matmacfunc_zh##description"}{...}
{viewerjumpto "Option" "matmacfunc_zh##option"}{...}
{viewerjumpto "Examples" "matmacfunc_zh##examples"}
{help matmacfunc:English Version}
{hline}{...}
{title:标题}

{phang}
关于矩阵的宏函数


{marker syntax}{...}
{title:语法}

{pstd}
以下宏函数可以与 {cmd:local} 和 {cmd:global} 一起使用：

	{cmd:: rowfullnames} {it:A}
	{cmd:: colfullnames} {it:A}

	{cmd:: rownames} {it:A}
	{cmd:: colnames} {it:A}

	{cmd:: roweq} {it:A} {cmd:,} {cmdab:q:uoted}
	{cmd:: coleq} {it:A} {cmd:,} {cmdab:q:uoted}

	{cmd:: rownumb} {it:A} {it:s}
	{cmd:: colnumb} {it:A} {it:s}

	{cmd:: roweqnumb} {it:A} {it:s}
	{cmd:: coleqnumb} {it:A} {it:s}

	{cmd:: rownfreeparms} {it:A}
	{cmd:: colnfreeparms} {it:A}

	{cmd:: rownlfs} {it:A}
	{cmd:: colnlfs} {it:A}

	{cmd:: rowsof} {it:A}
	{cmd:: colsof} {it:A}

	{cmd:: rowvarlist} {it:A}
	{cmd:: colvarlist} {it:A}

	{cmd:: rowlfnames} {it:A} {cmd:,} {cmdab:q:uoted}
	{cmd:: collfnames} {it:A} {cmd:,} {cmdab:q:uoted}


{marker description}{...}
{title:描述}

{pstd}
这些宏函数适用于矩阵的行名和列名。
请参见 {manhelp matrix_rownames P:matrix rownames} 以设置名称。
请参见 {manhelp macro P} 以获取有关宏函数的信息。
请参见 {manhelp matrix P} 以获取有关 Stata 中矩阵的信息。

{pstd}
{cmd:rowfullnames} 和 {cmd:colfullnames} 获取当前矩阵的行名和列名的完整规格。

{pstd}
{cmd:rownames} 和 {cmd:colnames} 获取当前矩阵的行名和列名。

{pstd}
{cmd:roweq} 和 {cmd:coleq} 获取当前矩阵的行名和列名的方程名。

{pstd}
{cmd:rownumb} 和 {cmd:colnumb} 获取与 {it:s} 关联的 {it:A} 的行号和列号；如果未找到 {it:s}，则返回数值缺失 "{cmd:.}"。

{pstd}
{cmd:roweqnumb} 和 {cmd:coleqnumb} 获取与 {it:s} 关联的 {it:A} 的行方程号和列方程号；如果未找到 {it:s}，则返回数值缺失 "{cmd:.}"。

{pstd}
{cmd:rownfreeparms} 和 {cmd:colnfreeparms} 获取 {it:A} 的行和列中的自由参数数量。

{pstd}
{cmd:rownlfs} 和 {cmd:colnlfs} 获取 {it:A} 的行和列中的线性形式数量。

{pstd}
{cmd:rowsof} 和 {cmd:colsof} 获取 {it:A} 的行和列数量。

{pstd}
{cmd:rowvarlist} 和 {cmd:colvarlist} 获取与 {it:A} 的行和列对应的变量列表。

{pstd}
{cmd:rowlfnames} 和 {cmd:collfnames} 获取与 {it:A} 的行和列中的线性形式对应的名称列表。


{marker option}{...}
{title:选项}

{phang}
{cmd:quoted} 将每个方程名用双引号括起来。某些 Stata 估计命令可以创建包含空格的方程名的矩阵，当因变量的值标签中包含空格时。{cmd:quoted} 选项可以正确确定每个方程名。


{marker examples}{...}
{title:示例}

{phang}{cmd:. local names : rownames mymat}{p_end}
{phang}{cmd:. local names : rowfullnames mymat}{p_end}
{phang}{cmd:. local names : colfullnames e(b)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <matmacfunc.sthlp>}