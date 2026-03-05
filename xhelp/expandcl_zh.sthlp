{smcl}
{* *! version 1.1.7  19oct2017}{...}
{viewerdialog expandcl "dialog expandcl"}{...}
{vieweralsosee "[D] expandcl" "mansection D expandcl"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bsample" "help bsample_zh"}{...}
{vieweralsosee "[D] expand" "help expand_zh"}{...}
{viewerjumpto "Syntax" "expandcl_zh##syntax"}{...}
{viewerjumpto "Menu" "expandcl_zh##menu"}{...}
{viewerjumpto "Description" "expandcl_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "expandcl_zh##linkspdf"}{...}
{viewerjumpto "Options" "expandcl_zh##options"}{...}
{viewerjumpto "Example" "expandcl_zh##example"}
{help expandcl:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[D] expandcl} {hline 2}}复制聚类观察值{p_end}
{p2col:}({mansection D expandcl:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:expandcl} [=]{it:{help exp_zh}} {ifin} {cmd:,} {opth cl:uster(varlist)}
{opth gen:erate(newvar)}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 创建或更改数据 > 其他变量转换命令}
    {bf:> 复制聚类观察值}


{marker description}{...}
{title:描述}

{pstd}
{cmd:expandcl} 复制观察值的聚类，并生成一个新变量以唯一标识聚类。

{pstd}
{cmd:expandcl} 用 n 个该聚类的副本替换数据集中的每个聚类，其中 n 等于所需表达式四舍五入到最近的整数。该表达式要求在聚类内保持不变。如果该表达式小于 1 或等于 {it:missing}，则将其解释为 1，聚类将被保留但不被复制。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D expandclQuickstart:快速入门}

        {mansection D expandclRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opth cluster(varlist)} 是必需的，并指定在扩展数据之前识别聚类的变量。

{phang}
{opth generate(newvar)} 是必需的，并将复制聚类的唯一标识符存储在 {it:newvar} 中。 {it:newvar} 将使用从 1 开始的连续整数来标识聚类。


{marker example}{...}
{title:示例}

    设置
{phang2}{cmd:. webuse expclxmpl}{p_end}

    列出数据
{phang2}{cmd:. list, sep(0)}

{pstd}用 {cmd:n} 个聚类的副本替换每个聚类{p_end}
{phang2}{cmd:. expandcl n, generate(newcl) cluster(cl)}{p_end}

{pstd}根据 {cmd:newcl}、{cmd:cl} 和 {cmd:x} 的值对观察值进行排序{p_end}
{phang2}{cmd:. sort newcl cl x}{p_end}

    列出结果数据
{phang2}{cmd:. list, sepby(newcl)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <expandcl.sthlp>}