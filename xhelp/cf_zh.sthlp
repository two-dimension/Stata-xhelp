{smcl}
{* *! version 1.2.9  19oct2017}{...}
{viewerdialog cf "dialog cf"}{...}
{vieweralsosee "[D] cf" "mansection D cf"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] compare" "help compare_zh"}{...}
{vieweralsosee "[P] dta_equal" "help dta_equal_zh"}{...}
{viewerjumpto "Syntax" "cf_zh##syntax"}{...}
{viewerjumpto "Menu" "cf_zh##menu"}{...}
{viewerjumpto "Description" "cf_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "cf_zh##linkspdf"}{...}
{viewerjumpto "Options" "cf_zh##options"}{...}
{viewerjumpto "Examples" "cf_zh##examples"}{...}
{viewerjumpto "Stored results" "cf_zh##results"}
{help cf:English Version}
{hline}{...}
{p2colset 1 11 13 2}{...}
{p2col:{bf:[D] cf} {hline 2}}比较两个数据集{p_end}
{p2col:}({mansection D cf:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 11 2}
{cmd:cf}
{varlist}
{cmd:using}
{it:{help filename_zh}}
[{cmd:,} {opt a:ll} {opt v:erbose}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 数据工具 > 比较两个数据集}


{marker description}{...}
{title:描述}

{pstd}
{opt cf} 比较内存中数据集（主数据集）的 {varlist} 与 {it:{help filename_zh}}（使用数据集）中的相应变量。
如果指定的变量相同，{opt cf} 不返回任何内容（即返回代码为 0）；如果存在任何差异，则返回代码为 9。仅比较变量值。变量标签、值标签、注释、特征等不进行比较。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D cfQuickstart:快速开始}

        {mansection D cfRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt all} 显示 {varlist} 中每个变量比较的结果。除非指定 {opt all}，否则仅显示存在差异的变量的结果。

{phang}
{opt verbose} 按变量提供每个观察值的详细列表，列出具有差异的观察值。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. drop gear_ratio}{p_end}
{phang2}{cmd:. replace mpg = 20 in 1/2}{p_end}
{phang2}{cmd:. replace rep78 = 6 in 3}{p_end}
{phang2}{cmd:. save mycf}{p_end}
{phang2}{cmd:. sysuse auto}

{pstd}比较内存中的变量与 {cmd:mycf.dta} 中的变量{p_end}
{phang2}{cmd:. cf _all using mycf}

{pstd}与上面相同，但提供差异的详细列表{p_end}
{phang2}{cmd:. cf _all using mycf, verbose}

{pstd}比较内存中的 {cmd:mpg} 和 {cmd:foreign} 变量与 {cmd:mycf.dta} 中的这些变量{p_end}
{phang2}{cmd:. cf mpg foreign using mycf}

{pstd}与上面相同，但提供差异的详细列表{p_end}
{phang2}{cmd:. cf mpg foreign using mycf, verbose}

{pstd}与上面相同，但列出所有指定变量，即使没有差异{p_end}
{phang2}{cmd:. cf mpg foreign using mycf, verbose all}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:cf} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 4 15 19 2: 宏}{p_end}
{synopt:{cmd:r(Nsum)}}差异的数量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cf.sthlp>}