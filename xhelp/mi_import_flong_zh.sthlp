{smcl}
{* *! version 1.1.3  10may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi import flong" "mansection MI miimportflong"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] mi import" "help mi_import_zh"}{...}
{viewerjumpto "Syntax" "mi_import_flong_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_import_flong_zh##menu"}{...}
{viewerjumpto "Description" "mi_import_flong_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_import_flong_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_import_flong_zh##options"}{...}
{viewerjumpto "Remarks" "mi_import_flong_zh##remarks"}
{help mi_import_flong:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[MI] mi import flong} {hline 2}}将 flong 类型数据导入 mi
{p_end}
{p2col:}({mansection MI miimportflong:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:mi import flong}{cmd:,}
{it:所需选项}
[{it:可选选项}]

{synoptset 20}{...}
{synopthdr:所需选项}
{synoptline}
{synopt:{cmd:m(}{varname}{cmd:)}}包含 {it:m} 的变量名{p_end}
{synopt:{cmd:id(}{varlist}{cmd:)}}标识变量{p_end}
{synoptline}

{synopthdr:可选选项}
{synoptline}
{synopt:{cmdab:imp:uted(}{varlist}{cmd:)}}要注册的插补变量
{p_end}
{synopt:{cmdab:pas:sive(}{varlist}{cmd:)}}要注册的被动变量
{p_end}
{synopt:{cmd:clear}}允许替换内存中未保存的数据{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:import} {cmd:flong} 导入 flong 类型数据，即数据中 
{it:m}=0, {it:m}=1, ..., {it:m}={it:M} 都记录在一个 {cmd:.dta} 
数据集中。

{p 4 4 2}
{cmd:mi} {cmd:import} {cmd:flong} 将数据转换为 {cmd:mi} flong 风格。
数据被 {cmd:mi} {cmd:set}。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI miimportflongRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{p 4 8 2}
{cmd:m(}{varname}{cmd:)} 和 {cmd:id(}{varlist}{cmd:)} 是必需的。
    {cmd:m(}{it:varname}{cmd:)} 指定取值为 0,
    1, ..., {it:M} 的变量，该变量标识对应 
    {it:m}=0, {it:m}=1, ..., {it:m}={it:M} 的观察值。{it:varname}=0 
    标识原始数据，{it:varname}=1 标识 {it:m}=1，等等。

{p 8 8 2}
    {cmd:id(}{it:varlist}{cmd:)} 指定唯一标识 {cmd:m()} 中观察值的 
    变量或变量集合。

{p 4 8 2}
{cmd:imputed(}{varlist}{cmd:)} 和 {cmd:passive(}{it:varlist}{cmd:)}
    确实是可选的选项，尽管不指定 {cmd:imputed()} 是不寻常的。

{p 8 8 2}
    {cmd:imputed(}{it:varlist}{cmd:)} 指定插补变量的名称。
    
{p 8 8 2}
    {cmd:passive(}{it:varlist}{cmd:)} 如果有，指定被动变量的名称。

{p 4 8 2}
{cmd:clear}
    指定可以替换内存中的数据，即使自从保存到磁盘后它们已更改。请记住， 
    {cmd:mi} {cmd:import} {cmd:flong} 以 flong 类型数据开始，并以 
    {cmd:mi} flong 数据结束。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
将 flong 类型数据转换为 {cmd:mi} flong 的过程如下：

{p 8 12 2}
1.  {cmd:use} 未设置的数据。

{p 8 12 2}
2.  输入 {cmd:mi} {cmd:import} {cmd:flong} 命令。

{p 8 12 2}
3.  执行 
    {it:{help mi_import##warning:使用 mi import nhanes1, ice, flong 和 flongsep}}
    中概述的检查 
    {bf:{help mi_import_zh:[MI] mi import}}。

{p 8 12 2}
4.  使用 {bf:{help mi_convert_zh:mi convert}} 将数据转换为更 
    方便的样式，如宽格式或 mlong 格式。

{p 4 4 2}
例如，您有以下未设置的数据：

	. {cmd:webuse ourunsetdata}
        . {cmd:list, separator(2)}

{p 4 4 2}
您被告知这些数据包含原始数据（{cmd:m}=0）和 
两个插补（{cmd:m}=1 和 {cmd:m}=2），变量 {cmd:b} 
被插补，变量 {cmd:c} 是被动的，并且实际上等于 
{cmd:a}+{cmd:b}。
这些数据与 {bf:{help mi_styles_zh:[MI] 样式}}
中讨论的数据相同，但以未设置的形式呈现。

{p 4 4 2}
这些数据排好序这一点并不重要。要导入这些
数据，请输入

	. {cmd:mi import flong, m(m) id(subject) imputed(b) passive(c)} 

{p 4 4 2}
这些数据足够简短，我们可以列出结果：

        . {cmd:list, separator(2)}

{p 4 4 2}
我们将执行 
{it:{help mi_import##warning:使用 mi import nhanes1, ice, flong 和 flongsep}}
中概述的检查 
{bf:{help mi_import_zh:[MI] mi import}}， 
也就是运行 
{cmd:mi} {cmd:describe}
和 
{cmd:mi} {cmd:varying}
以验证变量是否正确注册：

	. {cmd:mi describe}
	. {cmd:mi varying}

{p 4 4 2}
我们发现未注册的变量 {cmd:m} 
是 {help mi_glossary##def_varying:超变动}
（见 {bf:{help mi_glossary_zh:[MI] 术语表}}）。
在这里我们不再需要 {cmd:m}，所以我们将删除该变量
并再次运行 {cmd:mi} {cmd:varying}。
我们会发现没有剩余问题，因此 
我们将数据转换为我们首选的宽格式：

	. {cmd:drop m}
	. {cmd:mi varying}
	. {cmd:mi convert wide, clear}
	. {cmd:list}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_import_flong.sthlp>}