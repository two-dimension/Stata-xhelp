{smcl}
{* *! version 2.1.6  19oct2017}{...}
{vieweralsosee "[R] estimates for" "mansection R estimatesfor"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estimates" "help estimates_zh"}{...}
{viewerjumpto "Syntax" "estimates_for_zh##syntax"}{...}
{viewerjumpto "Description" "estimates_for_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "estimates_for_zh##linkspdf"}{...}
{viewerjumpto "Options" "estimates_for_zh##options"}{...}
{viewerjumpto "Example" "estimates_for_zh##example"}
{help estimates_for:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[R] estimates for} {hline 2}}在模型间重复后估计命令{p_end}
{p2col:}({mansection R estimatesfor:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{opt est:imates} {cmd:for} {it:namelist} [{cmd:,} {it:options}]{cmd::}
{it:postestimation_command}

{phang}
其中 {it:namelist} 可以是一个名称、一系列名称、{cmd:_all} 或 {cmd:*}.{break}
一个名称可以是 {cmd:.}，表示当前（活动）估计。{break}
{cmd:_all} 和 {cmd:*} 意思相同。

{col 9}{it:options}{col 30}描述
{col 9}{hline 50}
{col 9}{opt noh:eader}{...}
{col 30}不显示标题
{...}
{col 9}{opt nos:top}{...}
{col 30}如果命令失败则不停止
{col 9}{hline 50}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estimates} {cmd:for} 
对每个指定的估计结果执行 {it:postestimation_command}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R estimatesforQuickstart:快速入门}

        {mansection R estimatesforRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:noheader}
    在每次执行 {it:postestimation_command} 时，抑制标题的显示。

{phang}
{cmd:nostop}
    指定即使在某些模型上执行 {it:postestimation_command} 失败，仍然对其余模型执行。


{marker example}{...}
{title:示例}

    设置
	{cmd:. sysuse auto}
	{cmd:. gen gpm  = 1/mpg}

{pstd}拟合线性回归模型{p_end}
	{cmd:. regress gpm i.foreign i.foreign#c.weight displ}

{pstd}将结果存储为 {cmd:reg}{p_end}
	{cmd:. estimates store reg}

{pstd}拟合分位数回归模型{p_end}
	{cmd:. qreg gpm i.foreign i.foreign#c.weight displ}

{pstd}将结果存储为 {cmd:qreg}{p_end}
	{cmd:. estimates store qreg}

{pstd}对 {cmd:reg} 和 {cmd:qreg} 执行相同的测试{p_end}
	{cmd:. estimates for reg qreg: test 0.foreign#c.weight==1.foreign#c.weight}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estimates_for.sthlp>}