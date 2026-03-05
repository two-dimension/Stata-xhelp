{smcl}
{* *! version 1.2.10  17may2019}{...}
{viewerdialog generate "dialog generate"}{...}
{viewerdialog replace "dialog replace"}{...}
{vieweralsosee "[D] generate" "mansection D generate"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] compress" "help compress_zh"}{...}
{vieweralsosee "[D] corr2data" "help corr2data_zh"}{...}
{vieweralsosee "[D] drawnorm" "help drawnorm_zh"}{...}
{vieweralsosee "[D] dyngen" "help dyngen_zh"}{...}
{vieweralsosee "[D] edit" "help edit_zh"}{...}
{vieweralsosee "[D] egen" "help egen_zh"}{...}
{vieweralsosee "[D] encode" "help encode_zh"}{...}
{vieweralsosee "[D] label" "help label_zh"}{...}
{vieweralsosee "[D] recode" "help recode_zh"}{...}
{vieweralsosee "[D] rename" "help rename_zh"}{...}
{vieweralsosee "[U] 13 Functions and expressions (expressions)" "help exp_zh"}{...}
{vieweralsosee "[U] 13 Functions and expressions (operators)" "help operators"}{...}
{viewerjumpto "Syntax" "generate_zh##syntax"}{...}
{viewerjumpto "Menu" "generate_zh##menu"}{...}
{viewerjumpto "Description" "generate_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "generate_zh##linkspdf"}{...}
{viewerjumpto "Options" "generate_zh##options"}{...}
{viewerjumpto "Examples" "generate_zh##examples"}{...}
{viewerjumpto "Video examples" "generate_zh##video"}
{help generate:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[D] generate} {hline 2}}创建或更改变量的内容{p_end}
{p2col:}({mansection D generate:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
创建新变量

{p 8 17 2}
{opt g:enerate}
{dtype}
{newvar}[{cmd::}{it:lblname}] {cmd:=}{it:{help exp_zh}}
{ifin} [{cmd:,} {opth b:efore(varname)} | {opth a:fter(varname)}]


{phang}
替换现有变量的内容

{p 8 17 2}
{cmd:replace}
{it:oldvar}
{cmd:=}{it:{help exp_zh}}
{ifin}
[{cmd:,} {opt nop:romote}]


{phang}
指定分配给新变量的默认存储类型

{p 8 17 2}
{cmd:set}
{opt ty:pe} {c -(}{opt float}{c |}{opt double}{c )-}
[{cmd:,} {opt perm:anently}]


{phang}
其中 {it:type} 是以下之一{break}
	{opt byte}{c |}{opt int}{c |}{opt long}{c |}{opt float}{c |}{opt double}{c |}{opt str}{c |}{opt str1}{c |}{opt str2}{c |}...{c |}{cmd:str{ccl maxstrvarlen}}

{phang}
有关 {opt str} 的解释，请参见下面的 {help generate##description:描述}。有关其他类型，请参见 {manhelp data_types D:数据类型}。

{phang}
{opt by} 允许与 {opt generate} 和 {opt replace} 一起使用；请参见 {manhelp by D}。


{marker menu}{...}
{title:菜单}

    {title:生成}

{phang2}
{bf:数据 > 创建或更改数据 > 创建新变量}

    {title:替换}

{phang2}
{bf:数据 > 创建或更改数据 > 更改变量的内容}


{marker description}{...}
{title:描述}

{pstd}
{opt generate} 创建一个新变量。变量的值由 {cmd:=}{it:{help exp_zh}} 指定。

{pstd}
如果没有指定 {it:{help data types:type}}，新变量的类型由 {cmd:=}{it:exp} 返回的结果类型决定。如果结果是数字，则创建一个 {opt float} 变量（或根据 {opt set type} 创建一个 {opt double}）；如果结果是字符串，则创建一个字符串变量。在后一种情况下，如果字符串变量包含超过 2,045 个字符的值或包含带有二进制 0 ({cmd:\0}) 的值，则创建一个 {cmd:strL} 变量。否则，创建一个 {opt str}{it:#} 变量，其中 {it:#} 是能够容纳结果的最小字符串。

{pstd}
如果指定了 {it:type}，则由 {cmd:=}{it:exp} 返回的结果必须根据 {it:type} 的字符串或数字类型来进行字符串或数字处理。如果指定了 {opt str}，则使用上述相同规则创建 {cmd:strL} 或 {opt str}{it:#} 变量。

{pstd}
有关 {opt generate} 的扩展，请参见 {manhelp egen D}。

{pstd}
{opt replace} 更改现有变量的内容。
因为 {opt replace} 会更改数据，所以该命令不能缩写。

{pstd}
{opt set type} 指定分配给新变量（例如，{opt generate} 创建的变量）的默认存储类型，当未明确指定存储类型时。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection D generateQuickstart:快速开始}

        {mansection D generateRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opth before(varname)} 或 {opth after(varname)} 可以与 {cmd:generate} 一起使用，以在数据集中将新生成的变量放在特定位置。这些选项主要由数据编辑器使用，在其他上下文中的用途有限。对于大多数用户来说，更流行的替代方案是 {help order_zh}。

{phang}
{opt nopromote} 防止 {opt replace} 提升 {help data types:变量类型} 以适应更改。例如，考虑一个以整数类型（{opt byte}、{opt int} 或 {opt long}）存储的变量，并假设您用非整数替换某些值。默认情况下，{opt replace} 将变量类型更改为浮点型（{opt float} 或 {opt double}），因此正确存储更改后的值。同样，如果替换值是整数，但对于当前存储类型而言绝对值太大，则 {opt replace} 将 {opt byte} 和 {opt int} 变量提升为更长的整数类型（{opt int} 和 {opt long}）。{opt replace} 还会将字符串提升为更长的字符串。{opt nopromote} 防止 {opt replace} 执行此操作；相反，替换值将被截断以适合当前存储类型。

{phang}
{opt permanently} 指定除了立即进行更改外，还要记住新限制，并使其成为您调用 Stata 时的默认设置。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse genxmpl3}

{pstd}创建新变量 {cmd:age2}，其值为 {cmd:age} 的平方{p_end}
{phang2}{cmd:. generate age2 = age^2}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse genxmpl3, clear}

{pstd}创建存储类型为 {cmd:int} 的变量 {cmd:age2}，其值为 {cmd:age} 的平方{p_end}
{phang2}{cmd:. generate int age2 = age^2}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse genxmpl1, clear}

{pstd}用 {cmd:age^2} 的值替换 {cmd:age2} 中的值{p_end}
{phang2}{cmd:. replace age2 = age^2}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse genxmpl2, clear}

{pstd}列出 {cmd:name} 变量{p_end}
{phang2}{cmd:. list name}

{pstd}创建变量 {cmd:lastname}，包含 {cmd:name} 的第二个单词{p_end}
{phang2}{cmd:. generate lastname = word(name,2)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse genxmpl3, clear}

{pstd}创建存储类型为 {cmd:int} 的变量 {cmd:age2}，其值为 {cmd:age} 的平方，适用于所有 {cmd:age} 大于 30 的观测值{p_end}
{phang2}{cmd:. generate int age2 = age^2 if age > 30}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse genxmpl4, clear}

{pstd}替换第三个观测值中的 {cmd:odd} 值{p_end}
{phang2}{cmd:. replace odd = 5 in 3}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse stan2, clear}

{pstd}为 {cmd:transplant} 为真 (!=0) 的每个观测值创建副本{p_end}
{phang2}{cmd:. expand 2 if transplant}{p_end}

{pstd}将观测值按 {cmd:id} 的升序排列{p_end}
{phang2}{cmd:. sort id}

{pstd}创建变量 {cmd:posttran}，其存储类型为 {cmd:byte}，第二个观测值为 1，其他观测值为 0{p_end}
{phang2}{cmd:. by id: generate byte posttran = (_n==2)}

{pstd}创建变量 {cmd:t1}，等于 {cmd:stime} 的最后一个观测值{p_end}
{phang2}{cmd:. by id: generate t1 = stime if _n==_N}{p_end}
    {hline}


{marker video}{...}
{title:视频示例}

{phang2}{browse "https://www.youtube.com/watch?v=E_wCh0rf4p8":如何创建一个基于其他变量计算的新变量}

{phang2}{browse "https://www.youtube.com/watch?v=jIiHb0gsyVo":如何识别和替换不寻常的数据值}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <generate.sthlp>}