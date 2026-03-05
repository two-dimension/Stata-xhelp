{smcl}
{* *! version 1.2.2  19oct2017}{...}
{viewerdialog fvset "dialog fvset"}{...}
{vieweralsosee "[R] fvset" "mansection R fvset"}{...}
{viewerjumpto "Syntax" "fvset_zh##syntax"}{...}
{viewerjumpto "Description" "fvset_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "fvset_zh##linkspdf"}{...}
{viewerjumpto "Options" "fvset_zh##options"}{...}
{viewerjumpto "Examples" "fvset_zh##examples"}{...}
{viewerjumpto "Stored results" "fvset_zh##results"}
{help fvset:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] fvset} {hline 2}}声明因子变量设置
{p_end}
{p2col:}({mansection R fvset:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
声明基础设置

{phang2}
{cmd:fvset} {opt b:ase} {it:base_spec} {varlist}


{pstd}
声明设计设置

{phang2}
{cmd:fvset} {opt d:esign} {it:design_spec} {varlist}


{pstd}
清除当前设置

{phang2}
{cmd:fvset} {cmd:clear} {varlist}


{pstd}
报告当前设置

{phang2}
{cmd:fvset} {cmd:report} [{varlist}]
	[{cmd:,} {opt b:ase(base_spec)} {opt d:esign(design_spec)}]


{synoptset 14}{...}
{synopthdr:base_spec}
{synoptline}
{synopt :{opt default}}默认基准{p_end}
{synopt :{opt f:irst}}最低水平值；默认值{p_end}
{synopt :{opt l:ast}}最高水平值{p_end}
{synopt :{opt freq:uent}}最常见的水平值{p_end}
{synopt :{opt n:one}}无基准{p_end}
{synopt :{it:#}}非负整数值{p_end}
{synoptline}


{synopthdr:design_spec}
{synoptline}
{synopt :{opt default}}默认设计{p_end}
{synopt :{opt asbal:anced}}使用 1/k 累计，k = 水平数量{p_end}
{synopt :{opt asobs:erved}}使用观察到的相对频率累计；默认值{p_end}
{synoptline}


{marker description}{...}
{title:描述}

{pstd}
{cmd:fvset} {cmd:base}、{cmd:fvset} {cmd:design} 和 {cmd:fvset} {cmd:clear}
管理因子变量设置，确定基准水平并指定如何在各水平上累积统计数据。
{cmd:fvset} {cmd:base} 声明每个指定变量的基准水平；
对于没有声明基准水平的因子变量，默认值为最低值。
{cmd:fvset} {cmd:design} 指定 {help margins_zh} 命令将在因子变量的哪些水平上累积。
{cmd:fvset} {cmd:clear} 移除 {it:varlist} 中每个变量的因子变量设置。
{cmd:fvset} {cmd:clear} {cmd:_all} 移除所有变量的所有因子变量设置。

{pstd}
{cmd:fvset} {cmd:report} 报告 {it:varlist} 中每个变量当前的因子变量设置。
无参数的 {cmd:fvset} 是 {cmd:fvset} {cmd:report} 的同义词。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R fvsetQuickstart:快速开始}

        {mansection R fvsetRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt base(base_spec)} 限制 {cmd:fvset} {cmd:report} 仅报告具有指定 {it:base_spec} 的变量的因子变量设置。

{phang}
{opt design(design_spec)} 限制 {cmd:fvset} {cmd:report} 仅报告具有指定 {it:design_spec} 的变量的因子变量设置。


{marker examples}{...}
{title:示例}

{pstd}
设置
{p_end}
	{cmd:. sysuse auto}

{pstd}
默认情况下，假设第一个水平为基准
{p_end}
	{cmd:. regress mpg i.rep78}

{pstd}
将 2 设置为 {hi:rep78} 的基准水平
{p_end}
	{cmd:. fvset base 2 rep78}
	{cmd:. regress mpg i.rep78}

{pstd}
将 {hi:rep78} 设置为无基准水平，并拟合单元均值回归
{p_end}
	{cmd:. fvset base none rep78}
	{cmd:. regress mpg i.rep78, nocons}

{pstd}
默认情况下，{help margins_zh} 假定因子变量将被视为 {cmd:asobserved}，并使用因子水平的观察相对频率或指定权重的加和来累积边际
{p_end}
	{cmd:. regress mpg i.foreign}
	{cmd:. margins}

{pstd}
将 {hi:foreign} 设置为始终使用相等的相对频率进行累计
{p_end}
	{cmd:. fvset design asbalanced foreign}
	{cmd:. regress mpg i.foreign}
	{cmd:. margins}

{pstd}
报告所有具有 {opt frequent} 基准设置的变量
{p_end}
	{cmd:. fvset report, base(frequent)}

{pstd}
报告所有具有 {opt asbalanced} 设计设置的变量
{p_end}
	{cmd:. fvset report, design(asbalanced)}

{pstd}
技术说明：
{p_end}
{pmore}
{cmd:margins} 仅通过其所处理的估计结果了解因子变量的设计设置；
设计设置由估计命令存储；因此在估计命令与 {cmd:margins} 之间改变设计设置将不会产生影响。
例如，以下两个 {cmd:margins} 调用的输出将产生相同的结果。
{p_end}
	    {cmd:. fvset clear foreign}
	    {cmd:. regress mpg i.foreign}
	    {cmd:. margins}
	    {cmd:. fvset design asbalanced foreign}
	    {cmd:. margins}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:fvset} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(varlist)}}{it:varlist}{p_end}
{synopt:{cmd:r(baselist)}}每个变量的基准
设置在 {it:varlist} 中{p_end}
{synopt:{cmd:r(designlist)}}每个变量的设计
设置在 {it:varlist} 中{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fvset.sthlp>}