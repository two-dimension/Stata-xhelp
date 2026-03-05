{smcl}
{* *! version 1.1.5  22mar2018}{...}
{vieweralsosee "[P] char" "mansection P char"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] macro" "help macro_zh"}{...}
{vieweralsosee "[D] notes" "help notes_zh"}{...}
{viewerjumpto "Syntax" "char_zh##syntax"}{...}
{viewerjumpto "Description" "char_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "char_zh##linkspdf"}{...}
{viewerjumpto "Option" "char_zh##option"}{...}
{viewerjumpto "Examples" "char_zh##examples"}
{help char:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[P] char} {hline 2}}特征{p_end}
{p2col:}({mansection P char:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    定义特征

{p 8 25 2}{cmd:char} [{cmd:define}] {it:evarname}{cmd:[}{it:charname}{cmd:]}
[[{cmd:"}]{it:text}[{cmd:"}]]


    列出特征

{p 8 25 2}{cmd:char} {cmdab:l:ist}{space 5}[ {it:evarname}{cmd:[}[{it:charname}]{cmd:]} ]


    重命名特征

{p 8 25 2}
{cmd:char} {cmdab:ren:ame}{space 3}{it:oldvar newvar}
[{cmd:,}
{cmd:replace}
]


{pstd}相关的还有

{p 8 25 2}{c -(}{cmdab:loc:al} | {cmdab:gl:obal}{c )-} {it:mname} {cmd::}
{cmd:char} {it:evarname}{cmd:[}[{it:charname}]{cmd:]}


{pstd}
{it:evarname} 是一个变量名或 {cmd:_dta}，而 {it:charname} 是一个特征名。在语法图中，明确区分
{cmd:[]}, 你需要输入的，以及 [], 这表示该元素是可选的。


{marker description}{...}
{title:描述}

{pstd}
数据集本身及其内的每个变量都有一组特征与之关联。特征被命名并以 {it:varname}{cmd:[}{it:charname}{cmd:]} 的形式引用，其中 {it:varname} 是变量的名称或 {cmd:_dta}。特征包含文本。特征以 Stata 格式 {cmd:.dta} 的数据集形式存储，因此每当加载数据集时，它们会被召回。

{pstd}
特征有时用于 Stata 程序中，以存储变量的附加元数据。有关更多详细信息，请参见 {findalias frchars}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P charRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:replace}（仅与 {cmd:char} {cmd:rename} 一起使用）指定如果已经存在同名的特征，则将其替换。
{cmd:replace} 是一个很少使用的低级程序选项。

{pmore}
    {cmd:char} {cmd:rename} {it:oldvar} {it:newvar} 会将 {it:oldvar} 的所有特征移动到 {it:newvar}，留下 {it:oldvar} 没有特征，而 {it:newvar} 则拥有 {it:oldvar} 之前拥有的所有特征。
    {cmd:char} {cmd:rename} {it:oldvar} {it:newvar} 移动特征，但仅当 {it:newvar} 没有同名特征时。
    否则，{cmd:char} {cmd:rename} 会产生错误信息，指 {it:newvar}{cmd:[}{it:whatever}{cmd:]} 已经存在。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}

{pstd}定义附加到数据的特征 {cmd:one}{p_end}
{phang2}{cmd:. char _dta[one] this is char named one of _dta}

{pstd}定义附加到数据的特征 {cmd:two}{p_end}
{phang2}{cmd:. char _dta[two] this is char named two of _dta}

{pstd}列出特征{p_end}
{phang2}{cmd:. char list}

{pstd}清除附加到数据的特征 {cmd:two}{p_end}
{phang2}{cmd:. char _dta[two]}

{pstd}列出特征{p_end}
{phang2}{cmd:. char list}

{pstd}定义附加到变量 {cmd:mpg} 的特征 {cmd:one}{p_end}
{phang2}{cmd:. char mpg[one] this is char named one of mpg}

{pstd}定义附加到变量 {cmd:mpg} 的特征 {cmd:two}{p_end}
{phang2}{cmd:. char mpg[two] this is char named two of mpg}

{pstd}列出所有特征{p_end}
{phang2}{cmd:. char list}

{pstd}列出附加到变量 {cmd:mpg} 的特征{p_end}
{phang2}{cmd:. char list mpg[]}

{pstd}将附加到变量 {cmd:mpg} 的特征移动到变量 {cmd:price}{p_end}
{phang2}{cmd:. char rename mpg price}

{pstd}列出附加到变量 {cmd:price} 的特征{p_end}
{phang2}{cmd:. char list price[]}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <char.sthlp>}