{smcl}
{* *! version 1.0.16  19apr2019}{...}
{vieweralsosee "[MI] mi ptrace" "mansection MI miptrace"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi impute mvn" "help mi_impute_mvn_zh"}{...}
{viewerjumpto "语法" "mi_ptrace_zh##syntax"}{...}
{viewerjumpto "描述" "mi_ptrace_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mi_ptrace_zh##linkspdf"}{...}
{viewerjumpto "选项" "mi_ptrace_zh##options"}{...}
{viewerjumpto "备注" "mi_ptrace_zh##remarks"}{...}
{viewerjumpto "存储结果" "mi_ptrace_zh##results"}
{help mi_ptrace:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[MI] mi ptrace} {hline 2}}将参数跟踪文件加载到Stata中
{p_end}
{p2col:}({mansection MI miptrace:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:mi} {cmd:ptrace}
{cmdab:d:escribe}
[{cmd:using}] {it:{help filename_zh}}


{p 8 12 2}
{cmd:mi} {cmd:ptrace}
{cmd:use} {it:{help filename_zh}}
[{cmd:,} 
{it:use_options}]

{synoptset 20}{...}
{synopthdr:use_options}
{synoptline}
{synopt:{cmd:clear}}可以覆盖现有的内存数据{p_end}
{synopt:{cmd:double}}以双精度加载变量（默认是浮点数）{p_end}
{synopt:{cmdab:sel:ect(}{it:selections}{cmd:)}}要加载的内容（默认加载全部）{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
其中 {it:selections} 是一个以空格分隔的单个选择列表。
单个选择的形式为 

			{cmd:b[}{it:yname}{cmd:,} {it:xname}{cmd:]}
			{cmd:v[}{it:yname}{cmd:,} {it:yname}{cmd:]}

{pstd}
其中 {it:yname} 和 {it:xname} 是通过 {cmd:mi} {cmd:ptrace}
{cmd:describe} 显示的。你还可以指定 

			{cmd:b[}{it:#_y}{cmd:,} {it:#_x}{cmd:]}
			{cmd:v[}{it:#_y}{cmd:,} {it:#_y}{cmd:]}

{pstd}
其中 {it:#_y} 和 {it:#_x} 是与 {it:yname} 和 {it:xname} 相关的变量编号，而这些也会通过 {cmd:mi} {cmd:ptrace}
{cmd:describe} 显示。

{pstd}
对于 {cmd:b}，你还可以指定 {cmd:*} 表示所有可能的索引元素。例如， 

{col 25}{cmd:b[*,*]}{col 38} {cmd:b}的所有元素
{col 25}{cmd:b[}{it:yname}{cmd:,*]}{col 38}对应于 {it:yname} 的行
{col 25}{cmd:b[*,}{it:xname}{cmd:]}{col 38}对应于 {it:xname} 的列

{pstd}
类似地，允许使用 {cmd:b[}{it:#_y}{cmd:,*]} 和 
{cmd:b[*,}{it:#_x}{cmd:]}。
同样适用于 {cmd:v}，并且第二个元素可以指定为 
{cmd:<}、{cmd:<=}、{cmd:=}、{cmd:>=} 或 {cmd:>}。例如， 

{col 25}{cmd:v[}{it:yname}{cmd:,=]}{col 38} {it:yname}的方差
{col 25}{cmd:v[}{cmd:*,=]}{col 38}所有方差（对角元素）
{col 25}{cmd:v[}{cmd:*,<]}{col 38}下三角
{col 25}{cmd:v[}{cmd:*,<=]}{col 38}下三角和对角线
{col 25}{cmd:v[}{cmd:*,>=]}{col 38}上三角和对角线
{col 25}{cmd:v[}{cmd:*,>]}{col 38}上三角

{p 4 4 2}
在 {cmd:mi} {cmd:ptrace} {cmd:describe} 和 
{cmd:mi} {cmd:ptrace} {cmd:use} 中， 
如果 {it:filename} 包含特殊字符或空格，则必须用引号指定。 
如果没有指定后缀，则假定 {it:filename} 为 
{it:filename}{cmd:.stptrace}。


{marker description}{...}
{title:描述}

{p 4 4 2}
参数跟踪文件，后缀为 {cmd:.stptrace} 的文件，由 
{cmd:saveptrace()} 选项创建于 
{bf:{help mi_impute_mvn_zh:mi impute mvn}}。
这些文件不是Stata数据集，但可以像加载数据集一样加载 
使用 {cmd:mi} {cmd:ptrace} {cmd:use}。
其内容可以通过使用 
{cmd:mi} {cmd:ptrace} {cmd:describe} 而不加载它们进行描述。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MI miptraceRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{p 4 8 2}
{cmd:clear}
    指定可以清除内存中的数据集，即使自上次更改以来尚未保存到磁盘。

{p 4 8 2}
{cmd:double} 
    指定 {cmd:b} 和 {cmd:v} 的元素将以双精度加载；默认情况下它们以浮点数加载。

{p 4 8 2}
{cmd:select(}{it:selections}{cmd:)}
    允许你加载 {cmd:b} 和 {cmd:v} 的子集。如果未指定该选项，则所有的 
    {cmd:b} 和 {cmd:v} 都会被加载。这个结果等同于指定 {cmd:select(b[*,*]} {cmd:v[*,<=])}。
    {cmd:<=} 指定仅加载对称矩阵 {cmd:v} 的对角线和下三角部分。

{p 8 8 2}
    指定 {cmd:select(b[*,*])} 仅会加载 {cmd:b}。

{p 8 8 2}
    指定 {cmd:select(v[*,<=])} 仅会加载 {cmd:v}。

{p 8 8 2}
    指定 {cmd:select(b[*,*]} {cmd:v[*,=])} 将加载 {cmd:b} 和 {cmd:v} 的对角元素。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
假设我们对 {it:y1} 和 {it:y2} 进行插补，假定它们是多元正态分布的，
其均值由 {it:x1}、{it:x2} 和 {it:x3} 的线性组合确定，
并且其方差是常数。
更简洁地写作，
{bf:y} = ({it:y1},{it:y2})' 服从 MVN({bf:X}{bf:B}, {bf:V}),
其中 {bf:B}: 2 {it:x} 3 和 {bf:V}: 2 {it:x} 2。
如果我们使用 MCMC 或 EM 程序生成将用于生成 {bf:y} 
值的 {bf:B} 和 {bf:V}，
我们必须确保使用足够的迭代次数，以使迭代过程稳定。 
{helpb mi impute mvn} 提供 {bf:B} 和 {bf:V} 元素的最坏线性组合 (WLC)。
如果我们想进行其他检查，可以指定 
{cmd:mi} {cmd:impute} {cmd:mvn} 的 
{cmd:saveptrace(}{it:filename}{cmd:)} 选项。 
{cmd:mi} {cmd:impute} 然后生成一个文件，其中包含 {cmd:m} （插补编号）， 
{cmd:iter} （总体迭代编号），以及相应的 {cmd:B} 和 {cmd:V}。 
每个 {cmd:m} 的最后 {cmd:iter} 是 {cmd:B} 和 {cmd:V}，这些文件是 
{cmd:mi} {cmd:impute} {cmd:mvn} 用于插补缺失值。

{p 4 4 2}
当我们使用 {cmd:mi} {cmd:impute} {cmd:mvn} 时，我们指定了烧入和烧间隔的数字，例如， 
{cmd:burnin(300)} 和 {cmd:burnbetween(100)}。 
如果我们还指定了 {cmd:saveptrace()}，则生成的文件组织如下：

{col 9}记录 # {c |}    {cmd:m}    {cmd:iter}       {bf:B}       {bf:V}
{col 9}{hline 9}{c +}{hline 29}
{col 12}    1 {c |}    1    -299     ...     ...
{col 12}    2 {c |}    1    -298     ...     ...
{col 12}    . {c |}    .       .       .       . 
{col 12}    . {c |}    .       .       .       .
{col 12}  299 {c |}    1      -1     ...     ...
{col 12}  300 {c |}    1       0     ...     ...  <- 用于插补 {it:m}=1
{col 12}  301 {c |}    2       1       .       .
{col 12}  302 {c |}    2       2       .       .
{col 12}    . {c |}    .       .       .       . 
{col 12}    . {c |}    .       .       .       .
{col 12}  399.{c |}    1      99     ...     ...
{col 12}  400.{c |}    1     100     ...     ...  <- 用于插补 {it:m}=2
{col 12}  401.{c |}    2     101     ...     ...
{col 12}    . {c |}    .       .       .       . 
{col 12}    . {c |}    .       .       .       .
{col 9}{hline 9}{c BT}{hline 29}

{p 4 4 2}
该文件不是Stata数据集，但 
{cmd:mi} {cmd:ptrace} {cmd:use} 可以加载该文件并将其转换为Stata格式，
然后它将看起来与上述相同，除了

{p 8 12 2}
o  记录号将变为Stata观测号。 

{p 8 12 2}
o  {bf:B} 将变为变量 
    {cmd:b_y1x1}、{cmd:b_y1x2} 和 {cmd:b_y1x3}; 以及 
    {cmd:b_y2x1}、{cmd:b_y2x2} 和 {cmd:b_y2x3}。
    （记住，我们有2个 {it:y} 变量和3个 {it:x} 变量。）

{p 8 12 2}
o  {bf:V} 将变为变量 
    {cmd:v_y1y1}、{cmd:v_y2y1} 和 {cmd:v_y2y2}。
    （这是 {bf:V} 的对角线和下三角部分； 
     变量 {cmd:v_y1y2} 不会被创建，因为它将等于 
     {cmd:v_y2y1}。）

{p 8 12 2}
o  变量标签将被填入变量的基础名称。 
    例如，变量 {cmd:b_y1x1} 的标签可能是 "experience, age"， 
    这会提醒我们 {cmd:b_y1x1} 包含用于预测经验的 
    年龄系数。
    {cmd:v_y2y1} 可能是 "education, experience"，这会 
    提醒我们 {cmd:v_y2y1} 包含教育与经验之间的协方差。


{marker results}{...}
{title:存储结果}

{p 4 4 2}
{cmd:mi ptrace describe} 将以下内容存储在 {cmd:r()} 中：

	标量
	    {cmd:r(tc)}   {cmd:%tc} 创建文件的日期时间
	    {cmd:r(nx)}   {it:x} 变量的数量（{bf:B} 的列）
	    {cmd:r(ny)}   {it:y} 变量的数量（{bf:B} 的行）

	宏
	    {cmd:r(x)}    以空格分隔的 [{it:op}{cmd:.}]{it:varname} 的 {it:x}
	    {cmd:r(y)}    以空格分隔的 [{it:op}{cmd:.}]{it:varname} 的 {it:y}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_ptrace.sthlp>}