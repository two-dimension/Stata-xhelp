{smcl}
{* *! version 1.2.7  02aug2018}{...}
{vieweralsosee "[R] fvrevar" "mansection R fvrevar"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsrevar" "help tsrevar_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] fvexpand" "help fvexpand_zh"}{...}
{vieweralsosee "[P] syntax" "help syntax_zh"}{...}
{vieweralsosee "[P] unab" "help unab_zh"}{...}
{viewerjumpto "Syntax" "fvrevar_zh##syntax"}{...}
{viewerjumpto "Description" "fvrevar_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "fvrevar_zh##linkspdf"}{...}
{viewerjumpto "Options" "fvrevar_zh##options"}{...}
{viewerjumpto "Examples" "fvrevar_zh##examples"}{...}
{viewerjumpto "Stored results" "fvrevar_zh##results"}
{help fvrevar:English Version}
{hline}{...}
{p2colset 1 16 20 2}{...}
{p2col:{bf:[R] fvrevar} {hline 2}}因子变量操作符编程命令{p_end}
{p2col:}({mansection R fvrevar:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:fvrevar} [{varlist}] {ifin} [{cmd:,}
	{opt sub:stitute}
	{opt ts:only}
	{opt l:ist}
	{opt stub(stub)}]

{phang}
如果 {it:varlist} 包含时间序列操作符，则必须首先使用 {cmd:tsset} 设置数据；请参阅 {help tsset_zh:[TS] tsset}。


{marker description}{...}
{title:描述}

{pstd}
{opt fvrevar} 创建一个变量列表，其中用临时变量替换因子变量、交互作用或 {varlist} 中的时间序列操作变量。结果变量列表可以用于不支持因子变量或时间序列操作变量的命令。结果列表也可以在程序中使用，以加快执行速度，代价是使用更多内存。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R fvrevarQuickstart:快速入门}

        {mansection R fvrevarRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt substitute} 指定将因子变量、交互作用或 {varlist} 中的时间序列操作变量替换为等效的临时变量。 {opt substitute} 是 {opt fvrevar} 的默认操作；您无需指定该选项。

{phang}
{opt tsonly} 指定仅替换 {varlist} 中的时间序列操作变量为等效的临时变量。

{phang}
{opt list} 指定从 {varlist} 中移除所有因子变量操作符和时间序列操作符，并返回结果基础变量列表到 {cmd:r(varlist)}。使用此选项不会创建新变量。

{phang}
{opt stub(stub)} 指定 {cmd:fvrevar} 生成命名变量而不是临时变量。新变量将命名为 {it:stub#}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}描述数据{p_end}
{phang2}{cmd:. describe}{p_end}

{pstd}创建五个临时变量，包含因子变量 {cmd:rep78} 的每个水平的值{p_end}
{phang2}{cmd:. fvrevar i.rep78}{p_end}

{pstd}显示 {cmd:r(varlist)} 的内容{p_end}
{phang2}{cmd:. display "`r(varlist)'"}{p_end}

{pstd}不创建临时变量，仅返回与未操作基变量 {cmd:i.rep78} 相对应的列表{p_end}
{phang2}{cmd:. fvrevar i.rep78, list}{p_end}

{pstd}显示 {cmd:r(varlist)} 的内容{p_end}
{phang2}{cmd:. display "`r(varlist)'"}{p_end}

{pstd}仅创建与因子变量 {cmd:rep78} 的水平 {cmd:2} 和 {cmd:3} 相对应的两个临时变量 {p_end}
{phang2}{cmd:. fvrevar i(2,3).rep78}{p_end}

{pstd}显示 {cmd:r(varlist)} 的内容{p_end}
{phang2}{cmd:. display "`r(varlist)'"}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:fvrevar} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(varlist)}}修改后的变量列表或基础变量名称列表{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fvrevar.sthlp>}