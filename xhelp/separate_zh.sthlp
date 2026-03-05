{smcl}
{* *! version 1.1.10  19oct2017}{...}
{viewerdialog separate "dialog separate"}{...}
{vieweralsosee "[D] separate" "mansection D separate"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] tabulate oneway" "help tabulate_oneway_zh"}{...}
{vieweralsosee "[R] tabulate twoway" "help tabulate_twoway_zh"}{...}
{vieweralsosee "[R] tabulate, summarize()" "help tabulate_summarize_zh"}{...}
{viewerjumpto "Syntax" "separate_zh##syntax"}{...}
{viewerjumpto "Menu" "separate_zh##menu"}{...}
{viewerjumpto "Description" "separate_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "separate_zh##linkspdf"}{...}
{viewerjumpto "Options" "separate_zh##options"}{...}
{viewerjumpto "Examples" "separate_zh##examples"}{...}
{viewerjumpto "Stored results" "separate_zh##results"}
{help separate:English Version}
{hline}{...}
{p2colset 1 17 18 2}{...}
{p2col:{bf:[D] separate} {hline 2}}创建分开的变量{p_end}
{p2col:}({mansection D separate:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 25 2}
{cmd:separate}
{varname}
{ifin}
{cmd:,} {cmd:by(}{it:{help varlist_zh:groupvar}} {c |} {it:{help exp_zh}}{cmd:)}
[{it:options}]

{synoptset 22 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{p2coldent :* {opth by:(varlist:groupvar)}}
将观测值分类为由 {it:groupvar} 定义的组{p_end}
{p2coldent :* {opth by(exp)}}
将观测值分类为由 {it:exp} 定义的两个组{p_end}

{syntab :选项}
{synopt :{opt g:enerate(stubname)}}通过将值加后缀来命名新变量，默认使用 {varname} 作为前缀{p_end}
{synopt :{opt seq:uential}}按顺序使用名称后缀，从 1 开始编号类别{p_end}
{synopt :{opt miss:ing}}为缺失值创建变量{p_end}
{synopt :{opt short:label}}创建较短的变量标签{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* 必须指定 {opt by(groupvar)} 或 {opt by(exp)} 其中之一。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 创建或更改数据 > 其他变量转换命令}
   {bf:> 创建分开的变量}


{marker description}{...}
{title:描述}

{pstd}
{opt separate} 创建包含来自 {varname} 的值的新变量。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D separateQuickstart:快速开始}

        {mansection D separateRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:by(}{it:{help varlist_zh:groupvar}} | {it:{help exp_zh}}{cmd:)}
指定一个变量定义类别或一个逻辑表达式，将观测值分为两组。

{pmore}
如果指定了 {opt by(groupvar)}，则 {it:groupvar} 可以是一个取任意值的数值或字符串变量。

{pmore}
如果指定了 {opt by(exp)}，则表达式必须计算为真 (1)、假 (0) 或缺失。

{pmore}
{opt by()} 是必需的。

{dlgtab:选项}

{phang}
{opt generate(stubname)} 指定新变量的命名方式。如果未指定 {opt generate()}，{opt separate} 使用原始变量的名称，必要时进行缩短。如果指定了 {opt generate()}，{opt separate} 使用 {it:stubname}。如果生成的名称在加后缀时过长，则不会缩短并会发出错误消息。

{phang}
{opt sequential} 指定类别按顺序从 1 开始编号。默认情况下，{opt separate} 使用原始变量中记录的实际值（如果可能），否则使用顺序编号。{opt separate} 可以使用原始值，如果它们都是小于 10,000 的非负整数。

{phang}
{opt missing} 也会创建缺失类别的变量（如果 {it:groupvar} 的值为缺失或 {it:exp} 的计算结果为缺失）。生成的变量以常规方式命名，但后面附加下划线；例如，{cmd:bp_}。默认情况下，{opt separate} 不创建这样的变量。其他变量的内容不受 {opt missing} 是否被指定的影响。

{phang}
{opt shortlabel} 创建比默认值更短的变量标签。默认情况下，当 {cmd:separate} 生成新变量标签时，包括被分离变量的名称。{cmd:shortlabel} 指定在新变量标签中省略变量名。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}创建变量 {cmd:mpg0} 包含 {cmd:mpg} 的值，当 {cmd:foreign} 为 0 ({cmd:Domestic}) 时，并创建变量 {cmd:mpg1} 包含当 {cmd:foreign} 为 1 ({cmd:Foreign}) 时的 {cmd:mpg} 的值{p_end}
{phang2}{cmd:. separate mpg, by(foreign)}{p_end}

{pstd}绘制 {cmd:mpg0} 的分位数与 {cmd:mpg1} 的分位数的比较{p_end}
{phang2}{cmd:. qqplot mpg0 mpg1}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto, clear}{p_end}

{pstd}创建变量 {cmd:mpg0} 包含 {cmd:mpg} 的值，当 {cmd:price} 不大于 6000 时，并创建变量 {cmd:mpg1} 包含当 {cmd:price} 大于 6000 时的 {cmd:mpg} 的值{p_end}
{phang2}{cmd:. separate mpg, by(price>6000)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto, clear}{p_end}

{pstd}与上述相同，但将变量命名为 {cmd:mpgpr0} 和 {cmd:mpgpr1}{p_end}
{phang2}{cmd:. separate mpg, by(price>6000) gen(mpgpr)}{p_end}

{pstd}绘制 {cmd:mpgpr0} 的分位数与 {cmd:mpgpr1} 的分位数的比较{p_end}
{phang2}{cmd:. qqplot mpgpr0 mpgpr1}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:separate} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(varlist)}}新创建变量的名称{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <separate.sthlp>}