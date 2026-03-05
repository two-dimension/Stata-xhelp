{smcl}
{* *! version 1.0.19  25sep2018}{...}
{vieweralsosee "[R] set showbaselevels" "mansection R setshowbaselevels"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{vieweralsosee "[R] set" "help set_zh"}{...}
{viewerjumpto "Syntax" "set_showbaselevels_zh##syntax"}{...}
{viewerjumpto "Description" "set_showbaselevels_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "set_showbaselevels_zh##linkspdf"}{...}
{viewerjumpto "Option" "set_showbaselevels_zh##option"}{...}
{viewerjumpto "Examples" "set_showbaselevels_zh##examples"}
{help set_showbaselevels:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[R] set showbaselevels} {hline 2}}显示系数表的设置{p_end}
{p2col:}({mansection R setshowbaselevels:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:set}
{cmd:showbaselevels}
{c -(}{opt on}|{opt off}|{opt all}{c )-}
[{cmd:,} {cmdab:perm:anently}]

{p 8 16 2}
{cmd:set}
{cmd:showemptycells}
{c -(}{opt on}|{opt off}{c )-}
[{cmd:,} {cmdab:perm:anently}]

{p 8 16 2}
{cmd:set}
{cmd:showomitted}
{c -(}{opt on}|{opt off}{c )-}
[{cmd:,} {cmdab:perm:anently}]

{p 8 16 2}
{cmd:set}
{cmd:fvlabel}
{c -(}{opt on}|{opt off}{c )-}
[{cmd:,} {cmdab:perm:anently}]

{p 8 16 2}
{cmd:set}
{cmd:fvwrap}
{it:#}
[{cmd:,} {cmdab:perm:anently}]

{p 8 16 2}
{cmd:set}
{cmd:fvwrapon}
{c -(}{opt word}|{opt width}{c )-}
[{cmd:,} {cmdab:perm:anently}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:set} {cmd:showbaselevels} 指定是否在系数表中显示因子变量及其交互作用的基水平。 {cmd:set} {cmd:showbaselevels} {cmd:on} 指定报告因子变量以及不能从其组成因子变量推断的交互作用的基水平。 {cmd:set} {cmd:showbaselevels} {cmd:all} 指定报告因子变量和交互作用的所有基水平。

{pstd}
{cmd:set} {cmd:showemptycells} 指定是否在系数表中显示空单元格。

{pstd}
{cmd:set} {cmd:showomitted} 指定是否在系数表中显示被省略的系数。

{pstd}
{cmd:set} {cmd:fvlabel} 指定是否在系数表中显示因子变量值标签。 {cmd:set} {cmd:fvlabel} {cmd:on}，这是默认设置，表示显示标签。 {cmd:set} {cmd:fvlabel} {cmd:off} 指定显示因子变量的水平而不是标签。

{pstd}
{cmd:set} {cmd:fvwrap} {it:#} 指定长值标签在系数表中换行 {it:#} 行。 默认值是 {cmd:set} {cmd:fvwrap} {cmd:1}，这意味着长值标签将被缩略以适应一行。

{pstd}
{cmd:set} {cmd:fvwrapon} 指定换行的值标签是按单词边界换行还是根据可用空间换行。 {cmd:set} {cmd:fvwrapon} {cmd:word} 是默认设置，指定值标签按单词边界换行。 {cmd:set} {cmd:fvwrapon} {cmd:width} 指定值标签根据可用空间换行。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R setshowbaselevelsRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently} 指定除立即进行更改外，设置还要被记住，并成为当你调用 Stata 时的默认设置。


{marker examples}{...}
{title:示例}

{pstd}
显示因子变量和交互作用的所有基水平，抑制空单元格和省略的预测变量

{pmore2}
{cmd:. set showbaselevels all}{break}
{cmd:. set showemptycells off}{break}
{cmd:. set showomitted off}

{pstd}
重置基水平、空单元格和省略预测变量的显示为命令特定的默认行为

{pmore2}
{cmd:. set showbaselevels}{break}
{cmd:. set showemptycells}{break}
{cmd:. set showomitted}{p_end}

{pstd}
允许值标签在系数表中换两行；用 {cmd:mvreg} 模型进行说明。

{pmore2}
{cmd:. set fvwrap 2}{break}

{pmore2}
{cmd:. webuse jaw}{break}
{cmd:. mvreg y1 y2 y3 = i.fracture}

{pstd}
与上述相同，但根据可用空间换行而不是单词边界。

{pmore2}
{cmd:. set fvwrapon width}

{pmore2}
{cmd:. mvreg y1 y2 y3 = i.fracture}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <set_showbaselevels.sthlp>}