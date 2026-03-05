{smcl}
{* *! version 1.1.7  19oct2017}{...}
{viewerdialog list "dialog matrix_list"}{...}
{viewerdialog rename "dialog matrix_rename"}{...}
{viewerdialog drop "dialog matrix_drop"}{...}
{vieweralsosee "[P] matrix utility" "mansection P matrixutility"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] matlist" "help matlist_zh"}{...}
{vieweralsosee "[P] matrix" "help matrix_zh"}{...}
{viewerjumpto "Syntax" "matrix_utility_zh##syntax"}{...}
{viewerjumpto "Menu" "matrix_utility_zh##menu"}{...}
{viewerjumpto "Description" "matrix_utility_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "matrix_utility_zh##linkspdf"}{...}
{viewerjumpto "Options" "matrix_utility_zh##options"}{...}
{viewerjumpto "Examples" "matrix_utility_zh##examples"}
{help matrix_utility:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[P] matrix utility} {hline 2}}列出、重命名和删除矩阵{p_end}
{p2col:}({mansection P matrixutility:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    列出矩阵名称

	{cmdab:mat:rix} {cmdab:d:ir}


    列出矩阵内容

{p 8 20 2}{cmdab:mat:rix} {cmdab:l:ist} {it:mname} [{cmd:,} {cmdab:nob:lank}
{cmdab:noha:lf} {cmdab:noh:eader} {cmdab:non:ames}
{opth f:ormat(%fmt)} {cmdab:t:itle:(}{it:{help strings_zh:string}}{cmd:)}
{cmd:nodotz}]


    重命名矩阵

{p 8 15 2}{cmdab:mat:rix} {cmdab:ren:ame} {it:oldname} {it:newname}


    删除矩阵

{p 8 15 2}{cmdab:mat:rix} {cmd:drop} {c -(} {cmd:_all} | {it:mnames} {c )-}


{marker menu}{...}
{title:菜单}

    {title:矩阵列表}

{phang2}
{bf:数据 > 矩阵，ado 语言 > 列出矩阵内容}

    {title:矩阵重命名}

{phang2}
{bf:数据 > 矩阵，ado 语言 > 重命名矩阵}

    {title:矩阵删除}

{phang2}
{bf:数据 > 矩阵，ado 语言 > 删除矩阵}


{marker description}{...}
{title:描述}

{pstd}
{cmd:matrix dir} 列出当前存在的矩阵名称。{cmd:matrix list} 列出矩阵的内容。{cmd:matrix rename} 更改矩阵的名称。{cmd:matrix} {cmd:drop} 删除一个矩阵。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P matrixutilityRemarksandexamples:备注和示例}

{pstd}
以上各节未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:noblank} 在打印矩阵之前抑制空行的输出。这在程序中很有用。

{phang}
{cmd:nohalf} 指定即使矩阵是对称的，也要打印整个矩阵。默认情况下，在此情况下仅打印下三角矩阵。

{phang}
{cmd:noheader} 在矩阵之前抑制显示矩阵名称和维度。这在程序中很有用。

{phang}
{cmd:nonames} 抑制显示矩阵周围的边名。

{phang}
{opth format:(%fmt)} 指定用于显示矩阵各个元素的格式。默认格式为 {cmd:format(%10.0g)}。

{phang}
{cmd:title(}{it:{help strings_zh:string}}{cmd:)} 在矩阵自身之前的标题中添加指定的标题 {it:string}。如果指定了 {cmd:noheader}，则 {cmd:title()} 不执行任何操作，因为显示标题被抑制。

{phang}
{cmd:nodotz} 指定将 {cmd:.z} 缺失值显示为空白。


{marker examples}{...}
{title:示例}

    {cmd:. mat b = (2, 5, 4\ 5, 8, 6\ 4, 6, 3)}
    {cmd:. mat a = (1, 2 \ 2, 4)}
    {cmd:. matrix dir}
    {cmd:. matrix rename a z}
    {cmd:. matrix dir}
    {cmd:. matrix list b}
    {cmd:. matrix list b, nohalf}
    {cmd:. matrix drop b}
    {cmd:. matrix dir}
    {cmd:. matrix drop _all}
    {cmd:. matrix dir}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <matrix_utility.sthlp>}