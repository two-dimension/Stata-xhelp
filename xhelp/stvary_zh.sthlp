{smcl}
{* *! version 1.1.9  19oct2017}{...}
{viewerdialog stvary "dialog stvary"}{...}
{vieweralsosee "[ST] stvary" "mansection ST stvary"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stdescribe" "help stdescribe_zh"}{...}
{vieweralsosee "[ST] stfill" "help stfill_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{viewerjumpto "Syntax" "stvary_zh##syntax"}{...}
{viewerjumpto "Menu" "stvary_zh##menu"}{...}
{viewerjumpto "Description" "stvary_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "stvary_zh##linkspdf"}{...}
{viewerjumpto "Option" "stvary_zh##option"}{...}
{viewerjumpto "Examples" "stvary_zh##examples"}{...}
{viewerjumpto "Video example" "stvary_zh##video"}{...}
{viewerjumpto "Stored results" "stvary_zh##results"}
{help stvary:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[ST] stvary} {hline 2}}报告随时间变化的变量{p_end}
{p2col:}({mansection ST stvary:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:stvary} [{varlist}] {ifin} [{cmd:,} {opt nosh:ow}]


{pstd}
在使用 {cmd:stvary} 之前，您必须 {cmd:stset} 您的数据；请参见 {manhelp stset ST}.{p_end}
{pstd}
允许使用 {cmd:by}；请参见 {manhelp by D}.{p_end}
{pstd}
可以使用 {cmd:stset} 指定 {opt fweight}s、 {opt iweight}s 和 {opt pweight}s；请参见 {manhelp stset ST}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 设置和工具 >}
       {bf:报告随时间变化的变量}


{marker description}{...}
{title:描述}

{pstd}
{cmd:stvary} 用于多记录数据集，其中 {opt id()} 已被 {cmd:stset}。它报告变量在受试者内的值是否随时间变化，并报告其缺失值的模式。尽管 {cmd:stvary} 旨在与多记录生存数据一起使用，但它也可以与单记录数据一起使用，但产生的信息不多。

{pstd}
{cmd:stvary} 忽略权重，即使您已设置它们。 {cmd:stvary} 总结变量在计算机或数据意义上的内容。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ST stvaryQuickstart:快速入门}

        {mansection ST stvaryRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt noshow} 防止 {cmd:stvary} 显示关键生存变量。这个选项很少使用，因为大多数人输入 {cmd:stset, show} 或 {cmd:stset, noshow} 来设置是否希望在每个生存命令的输出顶部看到这些变量；请参见 {manhelp stset ST}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse stan3}

{pstd}报告变量是否随时间变化以及是否有缺失值{p_end}
{phang2}{cmd:. stvary}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse stvaryex}

{pstd}按 {cmd:sex} 类别报告 {cmd:drug} 是否随时间变化以及是否存在缺失值{p_end}
{phang2}{cmd:. by sex, sort: stvary drug}

{pstd}报告 {cmd:sex} 和 {cmd:drug} 是否随时间变化以及是否存在缺失值{p_end}
{phang2}{cmd:. stvary sex drug}{p_end}
    {hline}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=zw8UvYdI8y8":如何描述和总结生存数据}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:stvary} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(cons)}}当变量不缺失时，保持不变的受试者数量{p_end}
{synopt:{cmd:r(varies)}}非缺失值变化的受试者数量{p_end}
{synopt:{cmd:r(never)}}变量从不缺失的受试者数量{p_end}
{synopt:{cmd:r(always)}}变量始终缺失的受试者数量{p_end}
{synopt:{cmd:r(miss)}}有时缺失变量的受试者数量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stvary.sthlp>}