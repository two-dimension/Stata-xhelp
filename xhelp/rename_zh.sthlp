{smcl}
{* *! version 1.2.8  19oct2017}{...}
{viewerdialog "Variables Manager" "stata varmanage"}{...}
{viewerdialog rename "dialog rename"}{...}
{vieweralsosee "[D] rename" "mansection D rename"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] rename group" "help rename group"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] generate" "help generate_zh"}{...}
{vieweralsosee "[D] varmanage" "help varmanage_zh"}{...}
{viewerjumpto "Syntax" "rename_zh##syntax"}{...}
{viewerjumpto "Menu" "rename_zh##menu"}{...}
{viewerjumpto "Description" "rename_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "rename_zh##linkspdf"}{...}
{viewerjumpto "Examples" "rename_zh##examples"}
{help rename:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[D] rename} {hline 2}}重命名变量{p_end}
{p2col:}({mansection D rename:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{opt ren:ame} {it:旧变量名} {it:新变量名}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 数据工具 > 重命名变量组}


{marker description}{...}
{title:描述}

{pstd}
{cmd:rename} 将现有变量 {it:旧变量名} 的名称更改为 {it:新变量名}；变量的内容保持不变。
有关重命名变量组的更多信息，另见 {bf:{help rename group:[D] rename group}}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D renameQuickstart:快速入门}

        {mansection D renameRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

    设置
{phang2}{cmd:. webuse renamexmpl}{p_end}
{phang2}{cmd:. describe}{p_end}

{pstd}将 {cmd:exp} 的名称更改为 {cmd:experience}，并将 {cmd:inc} 的名称更改为 {cmd:income}{p_end}
{phang2}{cmd:. rename exp experience}{p_end}
{phang2}{cmd:. rename inc income}{p_end}

{pstd}描述数据{p_end}
{phang2}{cmd:. describe}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <rename.sthlp>}