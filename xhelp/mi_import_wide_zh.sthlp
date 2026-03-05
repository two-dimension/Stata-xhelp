{smcl}
{* *! version 1.0.13  15may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi import wide" "mansection MI miimportwide"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] mi import" "help mi_import_zh"}{...}
{viewerjumpto "Syntax" "mi_import_wide_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_import_wide_zh##menu"}{...}
{viewerjumpto "Description" "mi_import_wide_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_import_wide_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_import_wide_zh##options"}{...}
{viewerjumpto "Remarks" "mi_import_wide_zh##remarks"}
{help mi_import_wide:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[MI] mi import wide} {hline 2}}将宽格式数据导入 mi
{p_end}
{p2col:}({mansection MI miimportwide:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:mi import wide} [{cmd:,} {it:选项}]

{synoptset 18}{...}
{synopthdr}
{synoptline}
{synopt:{cmdab:imp:uted(}{it:{help mi_import_wide##mvlist:mvlist}}{cmd:)}}被填充的变量{p_end}
{synopt:{cmdab:pas:sive(}{it:{help mi_import_wide##mvlist:mvlist}}{cmd:)}}被动变量{p_end}
{synopt:{cmdab:dups:ok}}允许变量重复发布{p_end}
{synopt:{cmd:drop}}在发布后删除被填充和被动的变量{p_end}
{synopt:{cmd:clear}}可以替换内存中未保存的数据{p_end}
{synoptline}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:import} {cmd:wide} 导入宽格式数据，即，其中 
{it:m}=0, {it:m}=1, ..., {it:m}={it:M} 的被填充和被动 
变量的值记录在单独的变量中。

{p 4 4 2}
{cmd:mi} {cmd:import} {cmd:wide} 将数据转换为 {cmd:mi} 宽格式
并且 {cmd:mi} {cmd:set} 数据。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MI miimportwideRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{marker mvlist}{...}
{p 4 8 2}
{cmd:imputed(}{it:mvlist}{cmd:)} 和 {cmd:passive(}{it:mvlist}{cmd:)}
    指定被填充和被动变量。

{p 8 8 2}
    例如，如果数据有两个被填充变量，{cmd:x} 和 {cmd:y}；
    {cmd:x} 和 {cmd:y} 包含 {it:m}=0 的值；
    {cmd:x} 的相应 {it:m}=1、{it:m}=2 和 {it:m}=3 的值分别在
    {cmd:x1}、{cmd:x2} 和 {cmd:x3} 中；{cmd:y} 的相应值
    在 {cmd:y1}、{cmd:y2} 和 {cmd:y3} 中，那么 {cmd:imputed()} 选项
    可指定为

		{cmd:imputed(x=x1 x2 x3  y=y1 y2 y3)}

{p 8 8 2}
    如果变量 {cmd:y2} 在数据中缺失，你应指定

		{cmd:imputed(x=x1 x2 x3  y=y1 . y3)}

{p 8 8 2}
    每个变量必须指定相同数量的插补。

{p 4 8 2}
{cmd:dupsok}
    指定如果你为两个不同的插补指定相同的变量名是可以的。这会是一个奇怪的做法，
    但如果你指定了 {cmd:dupsok}，那么你可以指定 

		{cmd:imputed(x=x1 x1 x3  y=y1 y2 y3)}

{p 8 8 2}
    如果没有 {cmd:dupsok} 选项，则上述操作会被视为错误。

{p 4 8 2}
{cmd:drop}
    指定在 {cmd:mi} {cmd:import} {cmd:wide} 记录值后
    要删除包含 
    {it:m}=1、{it:m}=2、...、{it:m}={it:M} 的原始变量，
    推荐使用此选项。

{p 4 8 2}
{cmd:clear}
    指定可以替换内存中的数据，即使这些数据自上次保存到磁盘后发生了变化。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
将宽格式数据转换为 {cmd:mi} 宽格式的过程如下：

{p 8 12 2}
    1.  {cmd:use} 未设置的数据；参见 {manhelp use D}。

{p 8 12 2}
    2.  执行 {cmd:mi} {cmd:import} {cmd:wide} 命令。

{p 8 12 2}
    3.  使用 {bf:{help mi_describe_zh:mi describe}} 和 
        {bf:{help mi_varying_zh:mi varying}} 来验证结果是否如你预期。

{p 8 12 2}
    4.  可选择性地使用 {bf:{help mi_convert_zh:mi convert}} 
        将数据转换为你认为更方便的样式。

{p 4 4 2}
例如，您已获得未设置的数据集 {cmd:wi.dta} 
并且被告知它包含变量 {cmd:a}、{cmd:b} 和 {cmd:c}；
变量 {cmd:b} 是被填充的并且包含 {it:m}=0 的值；
变量 {cmd:b1} 和 {cmd:b2} 包含 {it:m}=1 和 {it:m}=2 的值；
变量 {cmd:c} 是被动的（等于 {cmd:a}+{cmd:b}）
并且包含 {it:m}=0 的值；变量 {cmd:c1} 和 {cmd:c2}
包含相应的 {it:m}=1 和 {it:m}=2 的值。
以下是数据：

	. {cmd:webuse wi}
	. {cmd:list}

{p 4 4 2}
这些数据与在 {bf:{help mi_styles_zh:[MI] Styles}} 中讨论的相同。
要导入这些数据，输入

	. {cmd:mi import wide, imputed(b=b1 b2  c=c1 c2) drop}

{p 4 4 2}
这些数据足够简短，我们可以列出结果：

	. {cmd:list}

{p 4 4 2}
回到程序中，我们对结果运行 {cmd:mi} {cmd:describe} 
和 {cmd:mi} {cmd:varying}：

	. {cmd:mi describe}

{p 4 4 2}
也许你更喜欢以长格式查看这些数据：

	. {cmd:mi convert flong, clear}
	. {cmd:list, separator(2)}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_import_wide.sthlp>}