{smcl}
{* *! version 1.0.6  20sep2018}{...}
{viewerdialog insobs "dialog insobs"}{...}
{vieweralsosee "[D] insobs" "mansection D insobs"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] edit" "help edit_zh"}{...}
{vieweralsosee "[D] obs" "help obs_zh"}{...}
{viewerjumpto "Syntax" "insobs_zh##syntax"}{...}
{viewerjumpto "Menu" "insobs_zh##menu"}{...}
{viewerjumpto "Description" "insobs_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "insobs_zh##linkspdf"}{...}
{viewerjumpto "Options" "insobs_zh##options"}{...}
{viewerjumpto "Examples" "insobs_zh##examples"}
{help insobs:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[D] insobs} {hline 2}}添加或插入观测值{p_end}
{p2col:}({mansection D insobs:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
在数据集末尾添加新观测值

{p 8 17 2}
{cmd:insobs}
{it:obs}


{phang}
将新观测值插入数据集的中间

{p 8 17 2}
{cmd:insobs} {it:obs}{cmd:,} {opt b:efore(inspos)} | {opt a:fter(inspos)}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 创建或更改数据 > 添加或插入观测值}


{marker description}{...}
{title:描述}

{pstd}
{opt insobs} 将新观测值插入数据集中。要插入的新观测值的数量由 {it:obs} 指定。此命令主要由数据编辑器使用，在其他上下文中的用途有限。对程序员来说，更受欢迎的替代方法是 {helpb set obs}。

{pstd}
如果指定了选项 {opt before(inspos)} 或 {opt after(inspos)}，新观测值将被插入到数据集的中间，插入位置由 {it:inspos} 控制。
请注意，{it:inspos} 必须是一个介于 1 和总观测值 {helpb _N} 之间的正整数。如果数据集为空，不得指定 {opt before()} 和 {opt after()}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D insobsRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt before(inspos)} 和 {opt after(inspos)} 分别在数据集中插入新观测值于 {it:inspos} 之前和之后。这些选项主要由数据编辑器使用，在其他上下文中的用途有限。对于大多数用户来说，更受欢迎的替代方法是 {help order_zh}。



{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. clear}

{pstd}创建一个包含 100 个观测值的数据集 {p_end}
{phang2}{cmd:. insobs 100}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto, clear}

{pstd}在数据集的末尾添加 10 个新观测值{p_end}
{phang2}{cmd:. insobs 10}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto, clear}

{pstd}在第 20 个观测值之前插入 5 个新观测值{p_end}
{phang2}{cmd:. insobs 5, before(20)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto, clear}

{pstd}在第 15 个观测值之后插入 3 个新观测值{p_end}
{phang2}{cmd:. insobs 3, after(15)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto, clear}

{pstd}在最后一个观测值之前插入 5 个新观测值{p_end}
{phang2}{cmd:. insobs 5, before(_N)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto, clear}

{pstd}在最后一个观测值之后插入 3 个新观测值{p_end}
{phang2}{cmd:. insobs 3, after(_N)}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <insobs.sthlp>}