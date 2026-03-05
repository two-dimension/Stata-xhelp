{smcl}
{* *! version 1.4.9  15oct2018}{...}
{vieweralsosee "[R] 关于" "help about_zh"}{...}
{vieweralsosee "[D] 数据类型" "help data_types_zh"}{...}
{vieweralsosee "[D] 内存" "help memory_zh"}{...}
{vieweralsosee "[R] 设置" "help set_zh"}{...}
{vieweralsosee "[U] 5 种 Stata 版本" "help flavors_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "限制" "help limits_zh"}{...}
{vieweralsosee "Stata/IC" "help stataic_zh"}{...}
{vieweralsosee "Stata/MP" "help statamp_zh"}{...}
{viewerjumpto "使用 Stata/SE" "statase_zh##use"}{...}
{viewerjumpto "内容" "statase_zh##contents"}
{help statase:English Version}
{hline}{...}
{marker use}{...}
{title:使用 Stata/SE}

{pstd}
Stata 有三种版本：

{col 13}版本{col 29}描述
{col 13}{hline 47}
{col 13}{bf:Stata/IC}{col 29}标准版本 
{col 10}-> {bf:Stata/SE}{col 29}Stata/IC + 大型数据集
{col 13}{bf:Stata/MP}{col 29}Stata/SE + 并行处理
{col 13}{hline 47}
{col 13}请参见 {bf:{help flavors_zh:[U] 5 种 Stata 版本}} 以获取描述

{pstd}
要确定您正在运行的 Stata 版本，请输入

	    {cmd:. about}

{pstd}
如果您使用的是其他版本的 Stata，请点击相应的链接：

{col 13}{hline 47}
{col 13}{bf:{help stataic_zh:Stata/IC}}{col 29}使用 Stata/IC
{col 13}{bf:{help statamp_zh:Stata/MP}}{col 29}使用 Stata/MP
{col 13}{hline 47}

{pstd}
有关升级到 Stata/SE 或 Stata/MP 的信息，请访问 
{browse "https://www.stata.com"}。

{marker contents}{...}
{title:内容}

	1.  {help statase##starting:启动 Stata/SE}

	2.  {help statase##setting:设置 Stata/SE 的限制}

	3.  {help statase##dta:与非 SE 用户共享 .dta 数据集}

	4.  {help statase##query:查询内存使用情况}

	5.  {help statase##programmers:给程序员的建议}
	    5.1  {help statase##flavor:确定版本}
	    5.2  {help statase##macshift:在程序循环中避免宏偏移}

{marker starting}{...}
{title:1.  启动 Stata/SE}

{pstd}
您可以以与启动 Stata/IC 相似的方式启动 Stata/SE：

{p 8 12 4}
    Windows:{break}
	选择 {bf:开始 > 所有程序 > Stata {ccl stata_version} > StataSE {ccl stata_version}}

{p 8 12 4}
    Mac:{break}
        从 {hi:data} 文件夹双击文件 {hi:Stata.do}，或
        从 {hi:Stata} 文件夹双击 {hi:StataSE} 图标。

{p 8 12 4}
    Unix:{break}
	在 Unix 命令提示符下，输入 {cmd:xstata-se} 以调用 Stata/SE 的 GUI 版本，或输入 {cmd:stata-se} 以调用控制台版本。

{marker setting}{...}
{title:2.  设置 Stata/SE 的限制}

{pstd}
Stata/SE 的限制为

{p 8 16 4}
    1.  {cmd:maxvar}{break}
	    数据集中允许的最大变量数量。
	    此限制初始设置为 5,000；您可以将其增加到
	    32,767。

{pstd}
您可以使用以下命令重设限制

	    {cmd:set maxvar}  {it:#} [{cmd:,} {cmdab:perm:anently}]{right:2,048 <= {it:#} <= 32,767    }

{pstd}
例如，您可以输入

	    {cmd:. set maxvar  6000}

{pstd}
您设置限制的顺序无关紧要。如果您在设置限制时指定了
{cmd:permanently} 选项，除了针对当前会话进行更改外，
Stata/SE 会记住新限制并在将来调用 Stata/SE 时使用它：

	    {cmd:. set maxvar  6000, permanently}

{pstd}
您可以随时和多次重设当前或永久限制。

{pstd}
为什么会对 {cmd:maxvar} 设置限制？为什么不直接将 {cmd:maxvar} 设置为
32,767 呢？因为允许变量的存在，即使它们不存在，也会占用内存，如果您只使用变量数量远少于此数量的数据集，您将浪费内存。

{pstd}
例如，如果您将 {cmd:maxvar} 设置为 20,000，您将消耗
约 14 兆字节的内存，而不是保持 {cmd:maxvar} 在默认值。虽然这不是占用大量内存，但没有必要浪费它。

{p 8 8 4}
    {bf:推荐}: 考虑您通常使用的变量最多的数据集。将 {cmd:maxvar} 设置为高出几百甚至 1,000 的数量。（额外 1,000 个变量的内存开销大约是 1 MB。）

{marker dta}{...}
{title:3.  与非 SE 用户共享 .dta 数据集}

{pstd}
您可以与 Stata/MP 用户共享数据集，无需任何更改。
您可以与 Stata/IC 用户共享数据集，只要您的数据集没有超过
这些版本 Stata 允许的变量数量。请参见 {help limits_zh}。

{marker query}{...}
{title:4.  查询内存使用情况}

{pstd}
命令

	    {cmd:. memory}

{pstd}
将显示当前内存报告，命令 

	    {cmd:. query memory}

{pstd}
将显示当前内存设置。
请参阅 {help memory_zh:help memory}。

{marker programmers}{...}
{title:5.  给程序员的建议}

{marker flavor}{...}
{title:5.1  确定版本}

{pstd}
程序员可以通过检查 {help creturn_zh} 值来确定正在运行的 Stata 版本

		                 creturn 值
                        {c |} {cmd:c(flavor)   c(SE)     c(MP)}
	    {hline 12}{c +}{hline 30}
	    Stata/IC    {c |}  "{cmd:IC}"         0         0
	    Stata/SE    {c |}  "{cmd:IC}"         1         0
	    Stata/MP    {c |}  "{cmd:IC}"         1         1
	    {hline 12}{c BT}{hline 30}

{marker macshift}{...}
{title:5.2  在程序循环中避免宏偏移}

{pstd}
{help macro_zh:宏偏移} 在处理包含 20,000 个或更多变量的变量列表时，会产生负面的性能影响。我们建议避免在循环中使用 {cmd:宏偏移} ，而是使用 {help foreach_zh} 或 "双重间接引用"。双重间接引用是指当 {cmd:``i''} 中包含数字 1、2、... 时进行引用。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <statase.sthlp>}