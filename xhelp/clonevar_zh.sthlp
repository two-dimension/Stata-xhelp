{smcl}
{* *! version 1.1.7  19oct2017}{...}
{viewerdialog clonevar "dialog clonevar"}{...}
{vieweralsosee "[D] clonevar" "mansection D clonevar"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] generate" "help generate_zh"}{...}
{vieweralsosee "[D] separate" "help separate_zh"}{...}
{viewerjumpto "Syntax" "clonevar_zh##syntax"}{...}
{viewerjumpto "Menu" "clonevar_zh##menu"}{...}
{viewerjumpto "Description" "clonevar_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "clonevar_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "clonevar_zh##remarks"}{...}
{viewerjumpto "Examples" "clonevar_zh##examples"}
{help clonevar:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[D] clonevar} {hline 2}}克隆现有变量{p_end}
{p2col:}({mansection D clonevar:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 29 2}
{cmd:clonevar}
{newvar} 
{cmd:=} 
{varname} 
{ifin}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 创建或更改数据 > 其他变量创建命令 >}
    {bf:克隆现有变量}


{marker description}{...}
{title:描述}

{pstd}
{cmd:clonevar} 生成 {newvar} 作为现有变量 {varname} 的精确副本，具有与 {it:varname} 相同的存储类型、值和显示格式。
{it:varname} 的变量标签、值标签、注释和特征也将被复制。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D clonevarQuickstart:快速入门}

        {mansection D clonevarRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:clonevar} 具有多种可能用途。程序员可能希望临时变量对用户的显示与现有变量完全相同。
在交互操作中，您可能希望对原始变量做一些轻微的修改，因此自然的起点是克隆原始变量。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}将 {cmd:Mpg} 变量创建为现有变量 {cmd:mpg} 的精确副本{p_end}
{phang2}{cmd:. clonevar Mpg = mpg}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse travel, clear}{p_end}
{phang2}{cmd:. describe mode}{p_end}
{phang2}{cmd:. label list travel}{p_end}

{pstd}将 {cmd:airtrain} 创建为 {cmd:mode} 的稍作修改的副本{p_end}
{phang2}{cmd:. clonevar airtrain = mode if mode==1 | mode==2}{p_end}

{pstd}列出 {cmd:mode} 和 {cmd:airtrain} 变量的第一个到第五个观测值{p_end}
{phang2}{cmd:. list mode airtrain in 1/5}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <clonevar.sthlp>}