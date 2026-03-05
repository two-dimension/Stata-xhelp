{smcl}
{* *! version 1.1.3  09aug2017}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] program properties" "help program_properties_zh"}{...}
{vieweralsosee "[SVY] svy" "help svy_zh"}{...}
{vieweralsosee "[SVY] svy bootstrap" "help svy_bootstrap_zh"}{...}
{vieweralsosee "[SVY] svy brr" "help svy_brr_zh"}{...}
{vieweralsosee "[SVY] svy jackknife" "help svy_jackknife_zh"}{...}
{vieweralsosee "[SVY] svy sdr" "help svy_sdr_zh"}{...}
{vieweralsosee "[SVY] svyset" "help svyset_zh"}{...}
{viewerjumpto "Remarks" "svy_parsing_zh##remarks"}{...}
{viewerjumpto "Example" "svy_parsing_zh##example"}
{help svy_parsing:English Version}
{hline}{...}
{title:标题}

{p 4 25 2}
{hi:[P] svy 解析} {hline 2} 检查与 svy 前缀一起使用的社区贡献命令的选项


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:svy} 为复杂调查数据拟合统计模型，并可与满足其编程属性的社区贡献估计命令一起使用；见 {help program properties}。并非所有估计命令的选项都允许与 {cmd:svy} 前缀一起使用，因此 {cmd:svy} 提供了一种方法，以便估计命令程序员检查这些不允许的选项。{cmd:svy} 通过寻找特定名称的程序来帮助验证在带前缀命令中指定的选项。语法验证命令的名称是带前缀的估计的一个函数，如下所示：

{pmore}
{cmd:. svy:} {it:cmdname} ... , {it:options}

{pstd}
上述命令使 {cmd:svy} 查找一个名为 {it:cmdname}{cmd:_svy_check} 的命令，然后进行调用

{pmore}
{cmd:.} {it:cmdname}{cmd:_svy_check}, {opt vce(vcetype)} {it:options}

{pstd}
如果 {it:cmdname}{cmd:_svy_check} 存在。{it:vcetype} 默认为空，但将包含复制方法，即使 {help svyset_zh}，使用 {opt vce()} 选项。


{marker example}{...}
{title:示例}

{pstd}
假设我们开发了一个估计命令，并且增加了对 {cmd:svy} 的支持。假设我们的命令称为 {cmd:myest}，并且有一个叫做 {opt lrstats} 的选项，它不允许与 {cmd:svy} 前缀一起使用。当 {cmd:svy} 与 {cmd:myest} 一起使用时，{cmd:svy} 将查找名为 {cmd:myest_svy_check} 的程序。如果 {cmd:myest_svy_check} 存在，{cmd:svy} 将使用在调用 {cmd:myest} 中指定的选项及 {opt vce()} 选项（包含将使用的 VCE 方法）进行调用。例如，

{pmore}
{cmd:. svy:} {cmd:myest} {it:varlist}

{pstd}
将发出调用

{pmore}
{cmd:. myest_svy_check, vce(linearized)}

{pstd}
如果 {cmd:myest_svy_check} 存在。

{pstd}
我们提到过 {cmd:myest} 有一个不允许与 {cmd:svy} 一起使用的选项 {opt lrstats}，因此我们的 {cmd:myest_svy_check} 有以下定义：

	{cmd}program myest_svy_check
		syntax [, vce(string) lrstats *]
		if "`lrstats'" != "" {c -(}
			di as err "选项 lrstats 不允许与 svy `vce' 一起使用"
			exit 198
		{c )-}
	end{txt}

{pstd}
{cmd:myest_svy_check} 特别解析选项 {opt vce()} 和 {opt lrstats}，忽略所有其他选项。如果指定了 {opt lrstats}，则 {cmd:myest_svy_check} 报告一个错误，解释 {opt lrstats} 不允许与 {cmd:svy} 一起使用。

{pstd}
默认 VCE 是 {cmd:vce(linearized)}，但 {cmd:svy} 将在默认未更改且未明确指定 {cmd:svy} {cmd:linearized} 的情况下传递一个空的 {opt vce()} 选项。{cmd:svy} 将始终在 {opt vce()} 选项中传递正在使用的复制方法，因此我们可以根据 VCE 方法如果可能的话来不允许选项。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <svy_parsing.sthlp>}