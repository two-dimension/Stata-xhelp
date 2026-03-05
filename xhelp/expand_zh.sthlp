{smcl}
{* *! version 1.2.8  19oct2017}{...}
{viewerdialog expand "dialog expand"}{...}
{vieweralsosee "[D] expand" "mansection D expand"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] contract" "help contract_zh"}{...}
{vieweralsosee "[D] expandcl" "help expandcl_zh"}{...}
{vieweralsosee "[D] fillin" "help fillin_zh"}{...}
{viewerjumpto "语法" "expand_zh##syntax"}{...}
{viewerjumpto "菜单" "expand_zh##menu"}{...}
{viewerjumpto "描述" "expand_zh##description"}{...}
{viewerjumpto "PDF文档链接" "expand_zh##linkspdf"}{...}
{viewerjumpto "选项" "expand_zh##option"}{...}
{viewerjumpto "示例" "expand_zh##examples"}
{help expand:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[D] expand} {hline 2}}重复观察{p_end}
{p2col:}({mansection D expand:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:expand} [{cmd:=}]{it:{help exp_zh}} {ifin}
[{cmd:,} {opth gen:erate(newvar)}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 创建或更改数据 > 其他变量变换命令}
     {bf:> 复制观察}


{marker description}{...}
{title:描述}

{pstd}
{cmd:expand} 用 n 份该观察替换数据集中的每个观察，其中 n 等于所需表达式四舍五入到最近的整数。如果表达式小于 1 或等于缺失值，它将被解释为 1，观察将保留但不被复制。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D expandQuickstart:快速开始}

        {mansection D expandRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{p 4 8 2}
{opth generate(newvar)}
    创建新变量 {it:newvar}，如果该观察最初出现在数据集中，则为 {cmd:0}，如果该观察是重复的，则为 {cmd:1}。
    例如，在 {cmd:expand} 后，你可以通过输入 {cmd:keep} {cmd:if} {it:newvar}{cmd:==0} 回复到原始观察。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. webuse stackxmpl}

    列出原始数据
{phang2}{cmd:. list}

{pstd}用 2 份该观察替换每个观察（保留原始观察并创建 1 个新观察）{p_end}
{phang2}{cmd:. expand 2}

    列出结果
{phang2}{cmd:. list}

    {hline}
    设置
{phang2}{cmd:. webuse stackxmpl, clear}

    列出原始数据
{phang2}{cmd:. list}

{pstd}用 {it:x} 份该观察替换每个观察，其中 {it:x} 是该观察的 {cmd:b} 值{p_end}
{phang2}{cmd:. expand b}

    列出结果
{phang2}{cmd:. list}{p_end}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <expand.sthlp>}