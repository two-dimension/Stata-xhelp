{smcl}
{* *! version 1.2.13  19oct2017}{...}
{viewerdialog "Data Editor (Edit)" "stata edit"}{...}
{viewerdialog "Data Editor (Browse)" "stata browse"}{...}
{vieweralsosee "[D] edit" "mansection D edit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[GSM] 6 Using the Data Editor" "mansection GSM 6UsingtheDataEditor"}{...}
{vieweralsosee "[GSU] 6 Using the Data Editor" "mansection GSU 6UsingtheDataEditor"}{...}
{vieweralsosee "[GSW] 6 Using the Data Editor" "mansection GSW 6UsingtheDataEditor"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{vieweralsosee "[D] input" "help input_zh"}{...}
{vieweralsosee "[D] list" "help list_zh"}{...}
{vieweralsosee "[D] save" "help save_zh"}{...}
{viewerjumpto "Syntax" "edit_zh##syntax"}{...}
{viewerjumpto "Menu" "edit_zh##menu"}{...}
{viewerjumpto "Description" "edit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "edit_zh##linkspdf"}{...}
{viewerjumpto "Option" "edit_zh##option"}{...}
{viewerjumpto "Remarks" "edit_zh##remarks"}
{help edit:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[D] edit} {hline 2}}使用数据编辑器浏览或编辑数据{p_end}
{p2col:}({mansection D edit:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}使用数据编辑器进行编辑

{p 8 14 2}
{opt ed:it} [{varlist}] {ifin} [{cmd:,} {opt nol:abel}]


{phang}使用数据编辑器进行浏览

{p 8 16 2}
{opt br:owse} [{varlist}] {ifin} [{cmd:,} {opt nol:abel}]


{marker menu}{...}
{title:菜单}

    {title:编辑} 

{phang2}
{bf:数据 > 数据编辑器 > 数据编辑器（编辑）}

    {title:浏览}

{phang2}
{bf:数据 > 数据编辑器 > 数据编辑器（浏览）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:edit} 打开一个电子表格风格的数据编辑器用于输入新数据和编辑现有数据。 {cmd:edit} 是一个比 {cmd:input} 更好的选择；见 {manhelp input D}。

{pstd}
{cmd:browse} 类似于 {cmd:edit}，但不允许通过编辑网格来修改数据。 {cmd:browse} 是一个方便的替代选项，可以替代 {cmd:list}；见 {manhelp list D}。

{pstd}
见 [GS] 6 使用数据编辑器
   （{mansection GSM 6UsingtheDataEditor:GSM},
    {mansection GSU 6UsingtheDataEditor:GSU}，或
    {mansection GSW 6UsingtheDataEditor:GSW}）
关于数据编辑器的教程讨论。 本条目提供技术细节。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection D editQuickstart:快速启动}

        {mansection D editRemarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:nolabel} 使基础数字值而不是标签值（等效字符串）显示在具有值标签的变量中；见 {manhelp label D}。


{marker remarks}{...}
{title:备注}

{pstd}
关于 {cmd:edit} 和 {cmd:browse} 的教程讨论在 {bf:Stata 入门} 手册中。 技术细节可以在 {manlink D edit} 中找到。

{pstd}
单独输入 {cmd:edit}，将打开数据编辑器，显示所有变量的所有观测值。 如果指定了 {it:varlist}，则仅显示指定的变量。 如果指定了 {cmd:in} {it:range} 和 {cmd:if} {it:exp} 中的一个或两个，则只显示所指定的观测值。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <edit.sthlp>}