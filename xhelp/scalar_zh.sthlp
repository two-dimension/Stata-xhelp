{smcl}
{* *! version 1.1.5  19oct2017}{...}
{viewerdialog define "dialog scalardefine"}{...}
{viewerdialog list "dialog scalarlist"}{...}
{viewerdialog drop "dialog scalardrop"}{...}
{vieweralsosee "[P] scalar" "mansection P scalar"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] macro" "help macro_zh"}{...}
{vieweralsosee "[P] matrix" "help matrix_zh"}{...}
{viewerjumpto "Syntax" "scalar_zh##syntax"}{...}
{viewerjumpto "Description" "scalar_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "scalar_zh##linkspdf"}{...}
{viewerjumpto "Examples" "scalar_zh##examples"}
{help scalar:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[P] scalar} {hline 2}}标量变量{p_end}
{p2col:}({mansection P scalar:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    定义标量变量

{p 8 15 2}{cmdab:sca:lar} [{cmdab:de:fine}] {it:scalar_name} {cmd:=}
    {it:{help exp_zh}}


    列出标量的内容

{p 8 15 2}{cmdab:sca:lar} {c -(} {cmdab:di:r} | {cmdab:l:ist} {c )-} [
{cmd:_all} | {it:scalar_names} ]


    从内存中删除指定的标量

{p 8 15 2}{cmdab:sca:lar} {cmd:drop} {c -(} {cmd:_all} | {it:scalar_names} {c )-}


{marker description}{...}
{title:描述}

{pstd}
{cmd:scalar define} 定义标量变量 {it:scalar_name} 的内容。该表达式可以是数字或字符串表达式。字符串标量可以容纳任意长度的字符串，甚至超过宏的长度，并且与宏不同，它还可以容纳二进制数据。请参见 {findalias frdatatypes}。

{pstd}
{cmd:scalar dir} 和 {cmd:scalar list} 都列出标量的内容。

{pstd}
{cmd:scalar drop} 从内存中消除标量。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P scalarRemarksandexamples:备注与示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker examples}{...}
{title:示例}

{phang}{cmd:. scalar a = 2}{p_end}
{phang}{cmd:. scalar b = a+3}{p_end}
{phang}{cmd:. scalar root2 = sqrt(2)}{p_end}
{phang}{cmd:. scalar im = sqrt(-1)}{p_end}
{phang}{cmd:. scalar x = .a}{p_end}
{phang}{cmd:. scalar s1 = "hello world"}{p_end}
{phang}{cmd:. scalar s2 = word(s1,1)}{p_end}
{phang}{cmd:. scalar list}{p_end}
{phang}{cmd:. scalar drop a b}{p_end}
{phang}{cmd:. scalar drop _all}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scalar.sthlp>}