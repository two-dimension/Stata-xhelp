{smcl}
{* *! version 1.1.7  19oct2017}{...}
{viewerdialog stfill "dialog stfill"}{...}
{vieweralsosee "[ST] stfill" "mansection ST stfill"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stbase" "help stbase_zh"}{...}
{vieweralsosee "[ST] stgen" "help stgen_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{vieweralsosee "[ST] stvary" "help stvary_zh"}{...}
{viewerjumpto "语法" "stfill_zh##syntax"}{...}
{viewerjumpto "菜单" "stfill_zh##menu"}{...}
{viewerjumpto "描述" "stfill_zh##description"}{...}
{viewerjumpto "PDF文档链接" "stfill_zh##linkspdf"}{...}
{viewerjumpto "选项" "stfill_zh##options"}{...}
{viewerjumpto "示例" "stfill_zh##examples"}
{help stfill:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[ST] stfill} {hline 2}}通过向前传递协变量的值进行填充{p_end}
{p2col:}({mansection ST stfill:查看完整PDF手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{p 8 15 2}{cmd:stfill} {varlist} {ifin} {cmd:,}
	{c -(}{opt b:aseline}|{opt f:orward}{c )-} [{it:options}]

{synoptset 13 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{p2coldent :* {opt b:aseline}}用基线值替换{p_end}
{p2coldent :* {opt f:orward}}向前传递值{p_end}
{synopt :{opt nosh:ow}}不显示st设置信息{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2} * 必须指定 {opt baseline} 或者 {opt forward}。{p_end}
{p 4 6 2} 使用 {cmd:stfill} 前必须先 {cmd:stset} 数据；见 {manhelp stset ST}.{p_end}
{p 4 6 2} {opt fweight}s, {opt iweight}s 和 {opt pweights} 可以用 {cmd:stset} 指定；见 {manhelp stset ST}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 设置和工具 >}
        {bf:用协变量的值向前传递}


{marker description}{...}
{title:描述}

{pstd}
{cmd:stfill} 旨在用于多个记录的 st 数据，前提是 {opt id()} 已被 {cmd:stset}。可以使用 {cmd:stfill} 处理单记录数据，但它不会做任何事情。也就是说， {cmd:stfill} 可以与多个记录或单次或多次失败的 st 数据一起使用。

{pstd}
{cmd:stfill, baseline} 将变量更改为在每个主题首次观察时的值，从而使变量在时间上保持不变。 {cmd:stfill, baseline} 将指定变量的所有后续值更改为等于第一个值，无论它们最初是否包含缺失值。

{pstd}
{cmd:stfill, forward} 用该变量最近观察到的时间的值填充每个变量的缺失值。
{cmd:stfill, forward} 只更改缺失值。

{pstd}
您必须指定 {opt baseline} 或 {opt forward} 选项之一。

{pstd}
{opt if} {it:exp} 和 {opt in} {it:range} 的操作略有不同于其通常的定义，以便按您期望的方式工作。 {opt if} 和 {opt in} 
限制可以对数据进行更改的地方，但无论如何，所有 {cmd:stset} 观察都用于提供要向前传递的值。 


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ST stfillQuickstart:快速入门}

        {mansection ST stfillRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt baseline} 指定用基线时的值替换值，即首次观察到该主题的时间。 所有指定变量的值都被替换，无论是缺失还是非缺失。

{phang}
{opt forward} 指定值向前传递，并使用先前观察到的非缺失值填充后期缺失的指定变量的值。

{phang}
{opt noshow} 防止 {cmd:stfill} 显示关键的 st 变量。此选项很少使用，因为大多数人键入 {cmd:stset, show} 或 
{cmd:stset, noshow} 来设置他们希望在每个 st 命令输出顶部看到这些变量；见 {manhelp stset ST}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse mrecord}

{pstd}防止其他 st 命令显示 st 设置信息{p_end}
{phang2}{cmd:. stset, noshow}

{pstd}报告变量 {cmd:sex} 是否随时间变化及其是否缺失{p_end}
{phang2}{cmd:. stvary sex}

{pstd}通过将 {cmd:sex} 更改为在最早观察时的值来修复 {cmd:sex} 变量的问题{p_end}
{phang2}{cmd:. stfill sex, baseline}

{pstd}报告变量 {cmd:sex} 是否随时间变化及其是否缺失{p_end}
{phang2}{cmd:. stvary sex}

{pstd}报告变量 {cmd:bp} 是否随时间变化及其是否缺失{p_end}
{phang2}{cmd:. stvary bp}

{pstd}用 {cmd:bp} 的前一个值填充 {cmd:bp} 的缺失值{p_end}
{phang2}{cmd:. stfill bp, forward}

{pstd}报告 {cmd:bp} 是否随时间变化及其是否缺失{p_end}
{phang2}{cmd:. stvary bp}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stfill.sthlp>}