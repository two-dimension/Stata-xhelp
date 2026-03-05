{smcl}
{* *! version 1.0.9  10aug2012}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway kdensity" "help twoway_kdensity_zh"}{...}
{vieweralsosee "[R] kdensity" "help kdensity_zh"}{...}
{viewerjumpto "语法" "twoway__kdensity_gen_zh##syntax"}{...}
{viewerjumpto "描述" "twoway__kdensity_gen_zh##description"}{...}
{viewerjumpto "选项" "twoway__kdensity_gen_zh##options"}{...}
{viewerjumpto "存储结果" "twoway__kdensity_gen_zh##results"}
{help twoway__kdensity_gen:English Version}
{hline}{...}
{title:标题}

{p 4 34 2}
{hi:[G-2] twoway__kdensity_gen} {hline 2} twoway kdensity 子程序


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:twoway__kdensity_gen}
	{it:varname}
	[{it:weight}]
	[{cmd:if} {it:exp}]
	[{cmd:in} {it:in_range}]
	{cmd:,}{break}
	{cmdab:r:ange:(}{it:range}{cmd:)}{break}
	[
	{cmd:n(}{it:#}{cmd:)}
	{cmdab:bw:idth:(}{it:#}{cmd:)}
	{cmd:area(}{it:#}{cmd:)}
	{cmdab:gen:erate:(}{it:yvar} {it:xvar} [, {cmd:replace} ]{cmd:)}
	{cmdab:k:ernel:(}{it:kernel}{cmd:)} {it:kernel_names}
	]

{pstd}
{cmd:fweight}s 和 {cmd:aweight}s 是允许的；请参见 {help weights}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:twoway__kdensity_gen} 是为了帮助解析和生成用于 {cmd:graph twoway kdensity} 的变量，详见 {manhelp twoway_kdensity G-2:twoway kdensity}。


{marker options}{...}
{title:选项}

{phang}
{cmd:range(}{it:range}{cmd:)} 指定 {it:xvar} 的值范围。这里 {it:range} 可以是识别最小值和最大值的一对数字，也可以 {it:range} 是一个变量。如果 {it:range} 是一个变量，则范围是通过以下命令的 {cmd:r(min)} 和 {cmd:r(max)} 值来确定：

{pmore}
{cmd}. summarize {it:range} if {it:exp} in {it:in_range}, meanonly{text}

{phang}
{cmd:n(}{it:#}{cmd:)} 指定评估点的数量。默认值是 {cmd:n(1)}。

{phang}
{cmd:bwidth(}{it:#}{cmd:)} 指定平滑参数。这是与 {cmd:kdensity} 相同的 {cmd:bwidth()} 选项，见 {manhelp kdensity R}。旧的 {cmd:width()} 选项也可用。

{phang}
{cmd:area(}{it:#}{cmd:)} 指定面积调整。该数字在生成 {it:yvar} 时与核密度估计相乘。默认值是 {cmd:area(1)}。

{phang}
{cmd:generate(}{it:yvar} {it:xvar} [{cmd:,} {cmd:replace}]{cmd:)} 指定要生成的变量名称。值的网格放置在 {it:xvar} 中，核密度估计放置在 {it:yvar} 中。{cmd:replace} 选项表明如果这些变量已经存在，则可以替换它们。

{phang}
{cmd:kernel(}{it:kernel}{cmd:)} 指定在 {it:kernel} 中的核加权函数，{it:kernel} 在 {help kdensity_zh##kernel} 中定义。

{phang}
{it:kernel_names} 是 {help kdensity_zh} 接受的核加权函数的名称。此旧语法不能与新语法 {cmd:kernel()} 结合使用。


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:twoway__kdensity_gen} 在 {cmd:r()} 中存储以下内容：

{pstd}
标量：

	 {cmd:r(n)}        评估点数量
	 {cmd:r(min)}      {cmd:range()} 的最小值
	 {cmd:r(max)}      {cmd:range()} 的最大值
	 {cmd:r(delta)}    网格点之间的距离
	 {cmd:r(area)}     面积倍增器
	 {cmd:r(width)}    平滑参数

{pstd}
宏：

	 {cmd:r(varname)}  {it:varname}
	 {cmd:r(range)}    来自 {cmd:range(}{it:range}{cmd:)} 选项的 {it:range}
	 {cmd:r(kernel)}   用于计算密度估计的核名称

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway__kdensity_gen.sthlp>}