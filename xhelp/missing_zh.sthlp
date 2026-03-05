{smcl}
{* *! version 1.1.7  15may2018}{...}
{findalias asfrmiss}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] codebook" "help codebook_zh"}{...}
{vieweralsosee "[D] egen" "help egen_zh"}{...}
{vieweralsosee "[FN] Functions by category" "help functions_zh"}{...}
{vieweralsosee "[MI] Intro" "help mi_intro"}{...}
{vieweralsosee "[D] mvencode" "help mvencode_zh"}{...}
{vieweralsosee "[D] recode" "help recode_zh"}{...}
{vieweralsosee "[XT] xtdescribe" "help xtdescribe_zh"}{...}
{vieweralsosee "[U] 13 Functions and expressions (expressions)" "help exp_zh"}{...}
{viewerjumpto "Description" "missing_zh##description"}{...}
{viewerjumpto "Remarks" "missing_zh##remarks"}
{help missing:English Version}
{hline}{...}
{title:标题}

{pstd}
{findalias frmiss}


{marker description}{...}
{title:描述}

{pstd}
Stata 有 27 种数值缺失值：

{pmore}
{cmd:.} 是默认值，称为“系统缺失值”或 {cmd:sysmiss}

    和

{pmore}
{cmd:.a}、{cmd:.b}、{cmd:.c}、...、{cmd:.z}，称为“扩展缺失值”。

{pstd}
数值缺失值由大正值表示。
其顺序为

{center:所有非缺失数字 < {cmd:.} < {cmd:.a} < {cmd:.b} < ... < {cmd:.z}}

{pstd}
因此，表达式 {cmd:age > 60} 在变量 {cmd:age} 大于 60 或缺失时为真。

{pstd}
要排除缺失值，请询问值是否小于“{cmd:.}”。例如，

{phang2}{cmd:. list if age > 60 & age < .}

{pstd}
要指定缺失值，请询问值是否大于或等于“{cmd:.}”。例如，

{phang2}{cmd:. list if age >=.}

{pstd}
Stata 有一种字符串缺失值，表示为 {cmd:""}（空字符串）。


{marker remarks}{...}
{title:备注}

{pstd}
关于缺失值及其在 Stata 中的处理的更多细节请参考以下标题：

	{help missing##overview:概述}
	{help missing##expressions:表达式}
	{help missing##operators:运算符}
	{help missing##functions:函数}
	{help missing##matrices:矩阵}
	{help missing##useful:有用的命令}
	{help missing##value:值标签}
	{help missing##estimation:估计命令}
	{help missing##technical:技术说明：检查值是否缺失}


{marker overview}{...}
    {title:概述}

{phang}
1.  Stata 支持不同类型的数值缺失值，以用于指定值未知的不同原因。最常用的缺失值 {cmd:.}，称为 sysmiss，几乎总是在 Stata 无法分配特定值时生成。26 个扩展缺失值 {cmd:.a}、{cmd:.b}、...、{cmd:.z} 对于需要更复杂缺失值追踪的用户可用。

{pmore}空字符串被视为类型为字符串的缺失值。

{phang}
2.  数值缺失值由大正值表示。这意味着像 {bind:{cmd:income > 100}} 的表达式对于变量 {cmd:income} 的缺失值以及那些大于 100 的值都评估为 {hi:真}。另外，简单表达式 {cmd:if} {it:varname} 对 {it:varname} 的所有非零值，包括缺失值，评估为真。

{phang}
3.  缺失值的顺序为

{center:{it:所有非缺失数字} < {cmd:.} < {cmd:.a} < {cmd:.b} < ... < {cmd:.z}}

{phang}
4.  大多数 Stata 统计命令通过忽略一个或多个缺失值的观测来处理缺失值（称为“逐行删除”或“仅完整案例”）。


{marker expressions}{...}
    {title:表达式}

{pstd}
表达式在 Stata 的许多地方出现（参见 {manhelp syntax P} 和 {help exp_zh}）。例如，

{phang2}
{cmd:. generate} {it:newvarname} {cmd:=} {it:exp}

{pstd}
为每个变量 {it:newvarname} 的观测评估表达式 {it:exp}。如果 {it:exp} 评估为缺失，则 {it:newvarname} 的观测将被设置为缺失。

{pstd}
表达式还用于将命令的操作限制于观测的子集。例如，

{phang2}
{cmd:. summarize} {it:varname} {cmd:if} {it:exp}

{pstd}
通过使用所有 {it:exp} 评估为真（而不是零）的观测来总结 {it:varname}，包括那些缺失的观测。


{marker operators}{...}
    {title:运算符}

{pstd}
关系运算符（参见 {help operators}）将缺失值解释为大正数（见上文）。因此，以下所有评估为真：

		{cmd:73 < .}        {cmd:. == .}        {cmd:.a == .a}
        	{cmd:.a != .}       {cmd:.a < .b}       {cmd:.a <= .b}

{pstd}
而以下所有评估为假：

		{cmd:73 >= .}       {cmd:. == .a}       {cmd:. > .a}

{pstd}
数值运算符（{cmd:+} 等）在其任何一个参数为缺失时返回缺失。


{marker functions}{...}
    {title:函数}

{pstd}
Stata 有一些处理缺失值的特殊函数：

{p 8 25 2}{cmd:missing()}{space 7}
  如果其任一参数（数值或字符串）评估为缺失，则返回 1（真），否则返回 0（假）。

{p 8 25 2}{cmd:mi()}{space 12}
  是 {cmd:missing()} 的简写。

{p 8 25 2}{cmd:matmissing(}{it:K}{cmd:)}{space 3}
  如果矩阵 {it:K} 的任何元素为缺失，则返回 1（真），否则返回 0（假）。

{pstd}
一些 Stata 函数以特殊方式解释 {cmd:.}。例如，函数 {cmd:inrange(x,a,b)} 如果 {cmd:x} 属于区间 {cmd:[a,b]} 则返回 1。这个函数将 {cmd:a==.} 解释为 -无穷大，将 {cmd:b==.} 解释为 +无穷大。这些特殊解释在 {help functions_zh} 中讨论。

{pstd}
其他 Stata 函数如果一个或多个参数缺失或无效，则返回缺失（{cmd:.}）。


{marker matrices}{...}
    {title:矩阵}

{pstd}
矩阵可以包含所有类型的缺失值。矩阵运算符（见 {help matrix operators}）

                {cmd:-}     取反
		{cmd:'}     转置

                {cmd:\}     行连接
                {cmd:,}     列连接
                {cmd:+}     加法
                {cmd:-}     减法
		{cmd:*}     乘法（包括乘以标量）
		{cmd:/}     除以标量
		{cmd:#}     克罗内克乘积

{pstd}
逐元素生成缺失值。

{pstd}
在矩阵乘积 {cmd:C=A*B} 中，如果 {cmd:A} 的第 {it:i} 行或 {cmd:B} 的第 {it:j} 列包含缺失值，则 {cmd:C}[{it:i},{it:j}] 为缺失。

{pstd}
如果标量 {cmd:b} 是缺失值，则不允许进行标量 {cmd:C=A/b} 的矩阵除法。否则，矩阵 {cmd:A} 中的缺失值逐元素在 {cmd:C} 中生成缺失值。

{pstd}
与 {help list_zh} 命令类似，{helpb matrix list} 命令有 {cmd:nodotz} 选项，可以将扩展缺失值 {cmd:.z} 显示为空字符串，而不是 "{cmd:.z}"。


{marker useful}{...}
    {title:有用的命令}

{p2colset 5 25 27 2}{...}
{p2line}
{p2col:{help mvencode_zh}}将缺失值转换为数值{p_end}
{p2col:{helpb mvdecode}}将数值转换为缺失值{p_end}
{p2col:{help codebook_zh}}提供关于变量的详细信息，包括简单和扩展缺失值的出现{p_end}
{p2col:{help misstable_zh}}汇总缺失值{p_end}
{p2col:{help egen_zh:egen, rownonmiss()}}计算变量列表中有效观测的数量{p_end}
{p2col:{help egen_zh:egen, rowmiss()}}计算变量列表中的缺失值数量{p_end}
{p2col:{help recode_zh}}对变量进行重新编码，时可以选项地为新变量，并具有重新编码缺失值的特殊功能。{p_end}
{p2col:{help mi_zh}}缺失值的多重插补{p_end}
{p2col:{help xtdescribe_zh}}描述面板数据中的参与模式{p_end}
{p2line}
{p2colreset}{...}


{marker value}{...}
    {title:值标签}

{pstd}
可以为扩展缺失值 {cmd:.a} 到 {cmd:.z} 定义值标签，但不能为 sysmiss {cmd:.} 定义值标签。这些值标签的显示方式与非缺失值的值标签相同。请参见 {manhelp label D}。


{marker estimation}{...}
    {title:估计命令}

{pstd}
大多数 Stata 命令会忽略在命令中引用的一个或多个变量缺失的观测。例如，回归命令 {help regress_zh} 会忽略所有对因变量或任何自变量存在缺失值的观测。这种方法称为“逐行删除”、“仅完整案例”等。仅在缺失值“随机”时，这种方法在统计上才是适当的。在对命令应用的 {help if_zh} 或 {help weight_zh} 表达式中，表达式将被评估，缺失值将通过运算符和 function() 逻辑处理。

{pstd}
可以将多个观测视为与一个观测单位相关的 Stata 命令（例如，来自 {help xt_zh} 模型的面板观测、来自 {help st_zh} 模型的事件）会忽略“组”中的特定观测，即那些缺失值的观测。


{marker technical}{...}
    {title:技术说明：检查值是否缺失}

{pstd}
您可能会认为可以用表达式 {it:exp}{cmd:==.} 检查表达式或变量 {it:exp} 是否缺失。然而，请记住，Stata 有 27 种不同的缺失值（{cmd:.}、{cmd:a}、{cmd:b}、...、{cmd:z}）。

{pstd}
{it:exp}{cmd:==.} 意味着表达式 {it:exp} 等于特定的缺失值，即 sysmiss {cmd:.}。如果 {it:exp} 等于某一个扩展缺失值（如 {cmd:.a} 或 {cmd:.z}），则 {it:exp}{cmd:==.} 返回假。要测试 {it:exp} 是否缺失，即等于 {cmd:.} 或某个扩展缺失值，应该使用表达式

	{it:exp} {cmd:>= .}
    或
	{cmd:missing(}{it:exp}{cmd:)}

    可缩写为

	{cmd:mi(}{it:exp}{cmd:)}

{pstd}
要测试 {it:exp} 是否缺失，请使用以下任一形式：

	{it:exp} {cmd:< .}
	{cmd:!missing(}{it:exp}{cmd:)}
	{cmd:!mi(}{it:exp}{cmd:)}

{pstd}
最后两种形式的优点在于缺失函数 {cmd:missing()} 和 {cmd:mi()} 允许多个（数值或字符串）参数来测试任一参数是否缺失。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <missing.sthlp>}