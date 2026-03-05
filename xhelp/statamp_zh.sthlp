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
{vieweralsosee "Stata/SE" "help statase_zh"}{...}
{viewerjumpto "使用 Stata/MP" "statamp_zh##use"}{...}
{viewerjumpto "内容" "statamp_zh##contents"}
{help statamp:English Version}
{hline}{...}
{marker use}{...}
{title:使用 Stata/MP}

{pstd}
Stata 有三种版本：

{col 13}版本{col 29}描述
{col 13}{hline 47}
{col 13}{bf:Stata/IC}{col 29}标准版本 
{col 13}{bf:Stata/SE}{col 29}Stata/IC + 大型数据集
{col 10}-> {bf:Stata/MP}{col 29}Stata/SE + 并行处理
{col 13}{hline 47}
{col 13}查看 {bf:{help flavors_zh:[U] 5 种 Stata 版本}} 以获取描述

{pstd}
要确定您正在运行的 Stata 版本，请输入

	    {cmd:. about}

{pstd}
如果您使用的是其他版本的 Stata，请点击相应链接：  

{col 13}{hline 47}
{col 13}{bf:{help stataic_zh:Stata/IC}}{col 29}使用 Stata/IC
{col 13}{bf:{help statase_zh:Stata/SE}}{col 29}使用 Stata/SE
{col 13}{hline 47}

{pstd}
有关升级到 Stata/MP 的信息，请访问
{browse "https://www.stata.com"}.


{marker contents}{...}
{title:内容}

	1.  {help statamp##starting:启动 Stata/MP}

	2.  {help statamp##setting:设置 Stata/MP 的限制}
	    2.1  {help statamp##processors:设置处理器的建议}
	    2.2  {help statamp##maxvar:设置 maxvar 的建议}

	3.  {help statamp##dta:与非 MP 用户共享 .dta 数据集}

	4.  {help statamp##query:查询内存使用情况}

	5.  {help statamp##programming:给程序员的建议}
	    5.1  {help statamp##flavor:确定版本}
	    5.2  {help statamp##macshift:避免程序循环中的宏偏移}


{marker starting}{...}
{title:1.  启动 Stata/MP}

{pstd}
启动 Stata/MP 的方式与启动 Stata/IC 或 Stata/SE 非常相似：

{p 8 12 4}
    Windows:{break}
	选择 {bf:开始 > 所有程序 > Stata {ccl stata_version} > StataMP {ccl stata_version}}

{p 8 12 4}
    Mac:{break}
        从 {hi:data} 文件夹中双击文件 {hi:Stata.do}，或
        从 {hi:Stata} 文件夹中双击 {hi:StataMP} 图标。

{p 8 12 4}
    Unix:{break}
	在 Unix 命令提示符下，输入 {cmd:xstata-mp} 来调用 Stata/MP 的
	GUI 版本，或输入 {cmd:stata-mp} 来调用
	控制台版本。


{marker setting}{...}
{title:2.  设置 Stata/MP 的限制}

{pstd}
Stata/MP 的两个限制如下：

{p 8 16 4}
    1.  {cmd:processors}{break}
	    可使用的最大处理器或内核数量。
	    此限制初始设置为（1）计算机上的内核数量或（2）许可证允许的内核数量，具体取较小者。您可以重置此限制，以便使用较少的处理器，例如因为您想为其他非 Stata 任务保留处理器。

{p 8 16 4}
    2.  {cmd:maxvar}{break}
	    数据集中允许的最大变量数量。
	    此限制初始设置为 5,000；可以增加到 120,000。

{pstd}
您可以通过以下命令重置这些限制

	    {cmd:set processors} {it:#}
	    {cmd:set maxvar}     {it:#}          [{cmd:,} {cmdab:perm:anently}]

{pstd}
例如，您可能输入

	    {cmd:. set processors 4}
	    {cmd:. set maxvar     6000}

{pstd}
设置限制的顺序无关紧要。如果您在 {cmd:maxvar} 中指定了 {cmd:permanently} 选项，除了在当前会话中进行更改外，Stata/MP 会记住新限制，并在未来调用 Stata/MP 时使用它。

{pstd}
您可以随时按需要重置当前或永久限制。


{marker processors}{...}
{title:2.1  设置处理器的建议}

	    {cmd:set processors} {it:#}
	
{pstd}
您可以将使用的处理器数量设置为不超过（1）计算机上的内核数量和（2）许可的内核数量中的较小值。您甚至可以将 {cmd:processors} 设置为 1，这样 Stata/MP 实际上与 Stata/SE 相同。

{pstd}
一般而言，使用所有可用处理器的性能最佳，保持 {cmd:processors} 设置为默认值。如果您在后台运行大型 Stata 任务，则可能希望将 Stata/MP 的最大使用量减少，以便在前台任务中获得更好的性能。如果您在后台运行两个大型 Stata 任务，限制每个任务使用一半的处理器可能会获得稍微更好的性能。


{marker maxvar}{...}
{title:2.2  设置 maxvar 的建议}

	    {cmd:set maxvar}  {it:#} [{cmd:,} {cmdab:perm:anently}]{right:2,048 <= {it:#} <= 120,000   }

{pstd}
为什么对 {cmd:maxvar} 有限制？为什么不直接将 {cmd:maxvar} 设置为 120,000？因为简单地为变量留出空间，即使它们不存在，也会消耗内存，如果您只会使用变量数量远少于此的数据集，则会浪费内存。

{pstd}
例如，如果您将 {cmd:maxvar} 设置为 20,000，您将比将 {cmd:maxvar} 保持在默认值消耗大约 14MB 的内存。如果您将 {cmd:maxvar} 设置为 120,000，您将比将 {cmd:maxvar} 保持在默认值多消耗稍微超过 100MB 的内存。

{p 8 8 4}
    {bf:建议}:  考虑一下您通常使用的变量最多的数据集。将 {cmd:maxvar} 设置为比这个多几百个或甚至 1,000。（额外 1,000 变量的内存成本大约是 1MB。）

{p 8 8 4}
    {bf:记住}, 您可以随时通过输入 {cmd:set maxvar} {it:#} 来临时重置 {cmd:maxvar}。


{marker dta}{...}
{title:3.  与非 MP 用户共享 .dta 数据集}

{pstd}
只要您的数据集没有超过 Stata/SE 和 Stata/IC 版本允许的变量数量，您可以与 Stata/SE 和 Stata/IC 用户共享数据集；请参见 {help limits_zh}。


{marker query}{...}
{title:4.  查询内存使用情况}

{pstd}
命令

	    {cmd:. memory}

{pstd}
将显示当前的内存报告，命令 

	    {cmd:. query memory}

{pstd}
将显示当前的内存设置。
请参见 {help memory_zh:help memory}。



{marker programming}{...}
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
{title:5.2  避免程序循环中的宏偏移}

{pstd}
{help macro_zh:宏偏移} 在使用包含 20,000 个或更多变量的变量列表时会产生负面性能影响。我们建议在循环中避免使用 {cmd:macro shift}，而是使用 {help foreach_zh} 或“双重间接引用”。双重间接引用意味着在 {cmd:`i'} 包含数字 1、2 …… 时引用 {cmd:``i''}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <statamp.sthlp>}