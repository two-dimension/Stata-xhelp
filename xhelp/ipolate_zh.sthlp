{smcl}
{* *! version 1.1.13  19oct2017}{...}
{viewerdialog ipolate "dialog ipolate"}{...}
{vieweralsosee "[D] ipolate" "mansection D ipolate"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi impute" "help mi_impute_zh"}{...}
{viewerjumpto "Syntax" "ipolate_zh##syntax"}{...}
{viewerjumpto "Menu" "ipolate_zh##menu"}{...}
{viewerjumpto "Description" "ipolate_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "ipolate_zh##linkspdf"}{...}
{viewerjumpto "Options" "ipolate_zh##options"}{...}
{viewerjumpto "Examples" "ipolate_zh##examples"}
{help ipolate:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[D] ipolate} {hline 2}}线性插值（外推）值{p_end}
{p2col:}({mansection D ipolate:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:ipolate}
{it:yvar}
{it:xvar}
{ifin}
{cmd:,}
{opth g:enerate(newvar)} [{opt e:polate}]

{phang}
{opt by} 是被允许的；见 {manhelp by D}.


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 创建或更改数据 > 其他变量创建命令 >}
      {bf:线性插值/外推值}


{marker description}{...}
{title:描述}

{pstd}
{opt ipolate} 在 {newvar} 中创建 {it:yvar} 在 {it:xvar} 上的线性插值，以填补 {it:yvar} 的缺失值。

{pstd}
由于插值要求 {it:yvar} 是 {it:xvar} 的函数，{it:yvar} 也会在 {it:xvar} 的相等值上进行插值。当 {it:yvar} 不缺失且 {it:xvar} 既不缺失也不重复时，{it:newvar} 的值就是 {it:yvar}。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection D ipolateQuickstart:快速入门}

        {mansection D ipolateRemarksandexamples:备注和示例}

        {mansection D ipolateMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}{opth generate(newvar)} 是必需的，并指定要创建的新变量的名称。

{phang}{opt epolate} 指定值既要进行插值，也要进行外推。默认情况下，仅进行插值。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse ipolxmpl1}

{pstd}列出数据{p_end}
{phang2}{cmd:. list, sep(0)}

{pstd}创建 {cmd:y1}，在 {cmd:y} 在 {cmd:x} 上对缺失的 {cmd:y} 进行线性插值{p_end}
{phang2}{cmd:. ipolate y x, gen(y1)}

{pstd}创建 {cmd:y2}，在 {cmd:y} 在 {cmd:x} 上对缺失的 {cmd:y} 进行线性插值和外推{p_end}
{phang2}{cmd:. ipolate y x, gen(y2) epolate}

{pstd}列出结果{p_end}
{phang2}{cmd:. list, sep(0)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse ipolxmpl2, clear}{p_end}

{pstd}显示缺失循环数据的年份{p_end}
{phang2}{cmd:. tabulate circ year if circ == ., missing}

{pstd}创建 {cmd:icirc}，在 {cmd:circ} 在 {cmd:year} 上对缺失的 {cmd:circ} 进行线性插值，并分别对每个 {cmd:magazine} 执行此计算{p_end}
{phang2}{cmd:. by magazine: ipolate circ year, gen(icirc)}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ipolate.sthlp>}